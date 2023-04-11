package com.devpro.javaweb23.services.impl;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.javaweb23.model.Product;
import com.devpro.javaweb23.model.ProductImages;
import com.devpro.javaweb23.services.BaseService;
import com.devpro.javaweb23.services.PagerData;
import com.github.slugify.Slugify;
import com.devpro.javaweb23.dto.ProductSearch;

@Service
public class ProductService extends BaseService<Product> {

	@Autowired
	private ProductImagesService productImagesService;
	
	@Override
	protected Class<Product> clazz() {
		// TODO Auto-generated method stub
		return Product.class;
	}

	/**
	 * dùng để kiểm tra xem admin có upload ảnh product hay không
	 */
	private boolean isEmptyUploadFile(MultipartFile[] images) {
		if (images == null || images.length <= 0)
			return true;

		if (images.length == 1 && images[0].getOriginalFilename().isEmpty())
			return true;

		return false;
	}

	/**
	 * dùng để kiểm tra xem admin có upload ảnh product hay không
	 */
	private boolean isEmptyUploadFile(MultipartFile image) {
		return image == null || image.getOriginalFilename().isEmpty();
	}
	
	/**
	 * tạo tên file upload
	 */
	private String getUniqueUploadFileName(String fileName) {
		String[] splitFileName = fileName.split("\\.");
		return splitFileName[0] + System.currentTimeMillis() + "." + splitFileName[1];
	}
	
	/**
	 * thêm mới sản phẩm
	 */
	@Transactional
	public Product addProduct(Product product, MultipartFile productAvatar, MultipartFile[] productPictures) throws IllegalStateException, IOException {
		// kiểm tra xem admin có đẩy avatar lên không ???
		if (!isEmptyUploadFile(productAvatar)) { // có đẩy avatar lên.

			String fileName = getUniqueUploadFileName(productAvatar.getOriginalFilename());

			// tạo đường dẫn tới file chứa avatar
			String pathToAvatar = "C:/upload/product/avatar/" + fileName;

			// lưu avatar vào đường dẫn trên
			productAvatar.transferTo(new File(pathToAvatar));

			product.setAvatar("product/avatar/" + fileName);
		}

		// có đẩy pictures(product_images) ???
		if (!isEmptyUploadFile(productPictures)) { // có đẩy pictures lên.

			// nếu admin đẩy lên thì duyệt tất cả file đẩy lên và lưu trên server
			for (MultipartFile pic : productPictures) {
				String fileName = getUniqueUploadFileName(pic.getOriginalFilename());

				// lưu ảnh admin đẩy lên vào server
				pic.transferTo(new File("C:/upload/product/pictures/" + fileName));

				// tạo mới 1 bản ghi product_images
				ProductImages productImages = new ProductImages();
				productImages.setPath("product/pictures/" + fileName);
				productImages.setTitle(fileName);

				product.addProductImages(productImages);
			}
		}

		// tạo seo: bổ sung thêm thời gian tính bằng miliseconds để tránh trùng seo
				Slugify slugify = new Slugify();
				product.setSeo(slugify.slugify(product.getTitle() + "-" + System.currentTimeMillis()));

		// lưu vào database
		return super.saveOrUpdate(product);
	}
	
	/**
	 * chỉnh sửa sản phẩm
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	@Transactional
	//@Transactional trong database là khi ta thực hiện nhiều hành động trong 2 bảng khác nhau...
	public Product editProduct(Product product, MultipartFile productAvatar, MultipartFile[] productPictures)
			throws IllegalStateException, IOException {
		// lấy thông tin cũ của product theo id
		Product productInDb = super.getById(product.getId());

		// có đẩy avartar ??? => xóa avatar cũ đi và thêm avatar mới
		if (!isEmptyUploadFile(productAvatar)) {
			// xóa avatar trong folder lên
			new File("C:/upload/" + productInDb.getAvatar()).delete();

			// update avatar mới
			String fileName = getUniqueUploadFileName(productAvatar.getOriginalFilename());
			//khi update thì ta phải lưu vào trong ổ cứng đã
			productAvatar.transferTo(new File("C:/upload/product/avatar/" + fileName));
			//sau đó thiết lập đường dẫn mới cho file ảnh mới
			product.setAvatar("product/avatar/" + fileName);
		} else {
			// sử dụng lại avartar cũ
			product.setAvatar(productInDb.getAvatar());
		}

		// có đẩy pictures ???
		if (!isEmptyUploadFile(productPictures)) {

			// xóa pictures cũ
			if (productInDb.getProductImages() != null && productInDb.getProductImages().size() > 0) {
				for (ProductImages opi : productInDb.getProductImages()) {
					// xóa avatar trong folder lên
					new File("C:/upload/" + opi.getPath()).delete();

					// xóa dữ liệu trong database
					productImagesService.delete(opi);
				}
			}

			// update pictures mới
			for (MultipartFile pic : productPictures) {
				String fileName = getUniqueUploadFileName(pic.getOriginalFilename());
				
				pic.transferTo(new File("C:/upload/product/pictures/" + fileName));
				
				ProductImages pi = new ProductImages();
				pi.setPath("product/pictures/" + fileName);
				pi.setTitle(fileName);
				
				product.addProductImages(pi);
			}
		}

		//tạo seo
		Slugify slugify = new Slugify();
		product.setSeo(slugify.slugify(product.getTitle() + "-" + System.currentTimeMillis()));
		
		// lưu vào database
		return super.saveOrUpdate(product);
	}
	
	public PagerData<Product> searchProduct(ProductSearch searchModel) {
		// khởi tạo câu lệnh
		String sql = "SELECT * FROM tbl_products p WHERE 1=1";

		if (searchModel != null) {
			
			// tìm kiếm theo category
			if(searchModel.getCategoryId() != null && !"0".equals(searchModel.getCategoryId())) {
				sql += " and category_id = " + searchModel.getCategoryId();
			}
		

			// tìm kiếm theo title và description
			if (!StringUtils.isEmpty(searchModel.getKeyword())) {
				sql += " and (p.title like '%" + searchModel.getKeyword() + "%'" + 
						     " or p.detail_description like '%" + searchModel.getKeyword() + "%'" + 
						     " or p.short_description like '%" + searchModel.getKeyword() + "%')";
			}
			// tìm kiếm theo seo
			if(!StringUtils.isEmpty(searchModel.getSeo())) {
				sql += " and seo = '" + searchModel.getSeo() + "'";
			}
		}
		
		return getEntitiesByNativeSQL(sql, searchModel.getPage());
	}
	public List<Product> searchProductList(ProductSearch searchModel) {
		// khởi tạo câu lệnh
		String sql = "SELECT * FROM tbl_products p WHERE 1=1";

		if (searchModel != null) {
			sql += " and category_id = " + searchModel.getCategoryIdShop()+" and shop_id = "+searchModel.getShopId();	
		}
		// tìm kiếm theo title và description
		if (!StringUtils.isEmpty(searchModel.getKeyword())) {
				sql += " and (p.title like '%" + searchModel.getKeyword() + "%'" + 
								" or p.detail_description like '%" + searchModel.getKeyword() + "%'" + 
								" or p.short_description like '%" + searchModel.getKeyword() + "%')";
					}
		return getEntitiesByNativeSQL(sql);
	}
}
