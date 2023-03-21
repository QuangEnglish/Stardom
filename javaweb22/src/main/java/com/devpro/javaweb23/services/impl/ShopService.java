package com.devpro.javaweb23.services.impl;

import java.io.File;
import java.io.IOException;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.javaweb23.dto.ShopSearch;
import com.devpro.javaweb23.model.Shop;
import com.devpro.javaweb23.model.ShopImages;
import com.devpro.javaweb23.services.BaseService;
import com.devpro.javaweb23.services.PagerData;

//tạo 1 bean service. Các bean service được tạo để tương tác với các Enity
@Service
public class ShopService extends BaseService<Shop>{

	@Autowired
	private ShopImagesService shopImagesService;
	@Override
	protected Class<Shop> clazz() {
		return Shop.class;
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
	public Shop addShop(Shop shop, MultipartFile shopAvatar, MultipartFile[] shopPictures) throws IllegalStateException, IOException {
		// kiểm tra xem admin có đẩy avatar lên không ???
		if (!isEmptyUploadFile(shopAvatar)) { // có đẩy avatar lên.

			String fileName = getUniqueUploadFileName(shopAvatar.getOriginalFilename());

			// tạo đường dẫn tới file chứa avatar
			String pathToAvatar = "C:/upload/shop/avatar/" + fileName;

			// lưu avatar vào đường dẫn trên
			shopAvatar.transferTo(new File(pathToAvatar));

			shop.setAvatar("shop/avatar/" + fileName);
		}

		// có đẩy pictures(product_images) ???
		if (!isEmptyUploadFile(shopPictures)) { // có đẩy pictures lên.

			// nếu admin đẩy lên thì duyệt tất cả file đẩy lên và lưu trên server
			for (MultipartFile pic : shopPictures) {
				String fileName = getUniqueUploadFileName(pic.getOriginalFilename());

				// lưu ảnh admin đẩy lên vào server
				pic.transferTo(new File("C:/upload/shop/pictures/" + fileName));

				// tạo mới 1 bản ghi product_images
				ShopImages shopImages = new ShopImages();
				shopImages.setPath("shop/pictures/" + fileName);
				shopImages.setTitle(fileName);

				shop.addShopImages(shopImages);
			}
		}

		// tạo seo: bổ sung thêm thời gian tính bằng miliseconds để tránh trùng seo
//						p.setSeo(new Slugify().slugify(p.getTitle() + "-" + System.currentTimeMillis()));

		// lưu vào database
		return super.saveOrUpdate(shop);
	}
	
	/**
	 * chỉnh sửa sản phẩm
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	@Transactional
	//@Transactional trong database là khi ta thực hiện nhiều hành động trong 2 bảng khác nhau...
	public Shop editShop(Shop shop, MultipartFile shopAvatar, MultipartFile[] shopPictures)
			throws IllegalStateException, IOException {
		// lấy thông tin cũ của product theo id
		Shop shopInDb = super.getById(shop.getId());

		// có đẩy avartar ??? => xóa avatar cũ đi và thêm avatar mới
		if (!isEmptyUploadFile(shopAvatar)) {
			// xóa avatar trong folder lên
			new File("C:/upload/" + shopInDb.getAvatar()).delete();

			// update avatar mới
			String fileName = getUniqueUploadFileName(shopAvatar.getOriginalFilename());
			//khi update thì ta phải lưu vào trong ổ cứng đã
			shopAvatar.transferTo(new File("C:/upload/shop/avatar/" + fileName));
			//sau đó thiết lập đường dẫn mới cho file ảnh mới
			shop.setAvatar("shop/avatar/" + fileName);
		} else {
			// sử dụng lại avartar cũ
			shop.setAvatar(shopInDb.getAvatar());
		}

		// có đẩy pictures ???
		if (!isEmptyUploadFile(shopPictures)) {

			// xóa pictures cũ
			if (shopInDb.getShopImages() != null && shopInDb.getShopImages().size() > 0) {
				for (ShopImages opi : shopInDb.getShopImages()) {
					// xóa avatar trong folder lên
					new File("C:/upload/" + opi.getPath()).delete();

					// xóa dữ liệu trong database
					shopImagesService.delete(opi);
				}
			}

			// update pictures mới
			for (MultipartFile pic : shopPictures) {
				String fileName = getUniqueUploadFileName(pic.getOriginalFilename());
				
				pic.transferTo(new File("C:/upload/shop/pictures/" + fileName));
				
				ShopImages pi = new ShopImages();
				pi.setPath("shop/pictures/" + fileName);
				pi.setTitle(fileName);
				
				shop.addShopImages(pi);
			}
		}

		//tạo seo
//				p.setSeo(new Slugify().slugify(p.getTitle() + "-" + System.currentTimeMillis()));
		
		// lưu vào database
		return super.saveOrUpdate(shop);
	}
	
	public PagerData<Shop> searchShop(ShopSearch searchModel) {
		// khởi tạo câu lệnh
		String sql = "SELECT * FROM tbl_shop p WHERE 1=1";

		if (searchModel != null) {
			
			// tìm kiếm theo category
			if(searchModel.getProvinceAddress() != null && !"0".equals(searchModel.getProvinceAddress()) || searchModel.getTownAddress() != null && !"0".equals(searchModel.getTownAddress()) || searchModel.getVillageAddress() != null && !"0".equals(searchModel.getVillageAddress())) {
				sql += " and province_address = " + searchModel.getProvinceAddress()+" and town_address = " + searchModel.getTownAddress()+" and village_address = " + searchModel.getVillageAddress();
			}
		

			// tìm kiếm theo title và description
			if (!StringUtils.isEmpty(searchModel.getKeyword())) {
				sql += " and (p.province_address like '%" + searchModel.getKeyword() + "%'" + 
							 " or p.town_address like '%" + searchModel.getKeyword() + "%'" + 
							 " or p.village_address like '%" + searchModel.getKeyword() + "%'" + 
							 " or p.detail_address like '%" + searchModel.getKeyword() + "%'" + 
						     " or p.detail_description like '%" + searchModel.getKeyword() + "%'" + 
						     " or p.short_description like '%" + searchModel.getKeyword() + "%')";
			}
		}
		
		return getEntitiesByNativeSQL(sql, searchModel.getPage());
	}
}

