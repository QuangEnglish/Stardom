package com.devpro.javaweb23.controller.administrator;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.javaweb23.controller.BaseController;
import com.devpro.javaweb23.model.Categories;
import com.devpro.javaweb23.model.Contact;
import com.devpro.javaweb23.model.Product;
import com.devpro.javaweb23.services.PagerData;
import com.devpro.javaweb23.services.impl.CategoriesService;
import com.devpro.javaweb23.services.impl.ProductService;
import com.devpro.javaweb23.services.impl.ShopService;
import com.devpro.javaweb23.dto.ProductSearch;

@Controller
public class AdminProductController extends BaseController {

	@Autowired
	private CategoriesService categoriesService;

	@Autowired
	private ProductService productService;
	
	@Autowired
	private ShopService shopService;

	//list sản phẩm
	@RequestMapping(value = { "/admin/sanpham" }, method = RequestMethod.GET)
	public String test_san_Pham(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		// lấy keyword
					String keyword = request.getParameter("keyword");
		// lấy categoryId
					String categoryId = request.getParameter("categoryId");
		//lấy số page hiện tại
					String currentPage = request.getParameter("page");
					
		ProductSearch productSearch = new ProductSearch();
		productSearch.setKeyword(keyword);
		productSearch.setCategoryId(categoryId);
		productSearch.setCurrentPage(currentPage);
					
		//muốn giữ được các giá trị search trên màn hình thì cần phải đẩy lại dữ liệu nhập trước đó xuống vỉew
		model.addAttribute("productSearch", productSearch);
					
		PagerData<Product> products = productService.searchProduct(productSearch);
		model.addAttribute("products", products);
		
		// đường dẫn tới file view
		return "administrator/SanPham"; /// WEB-INF/views/customer/grabfood.jsp;
	};
	//

	@RequestMapping(value = { "/admin/sanpham/themsanpham" }, method = RequestMethod.GET)
	public String test_them_san_Pham(final Model model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {
		// khởi tạo 1 product(entity) mới
		Product newProduct = new Product();
		model.addAttribute("product", newProduct); // đẩy data xuống view

		// lấy danh sách categories trong db đẩy xuống view để hiển thị phần lựa chọn category
		// khi thêm mới sản phẩm
//		List<Categories> categories = categoriesService.getEntitiesByNativeSQL("select * from tbl_category");
//		model.addAttribute("categories", categories);
		// đường dẫn tới file view //trả về view
		return "administrator/ThemSanPham"; /// WEB-INF/views/customer/grabfood.jsp;
	};

	/**
	 * do trong springform ko hỗ trợ thẻ file nên phải sử dụng html input và sử
	 * dụng @RequestParam("{name of input tag}"
	 */
	@RequestMapping(value = { "/admin/sanpham/themsanpham/saveOrUpdate" }, method = RequestMethod.POST)
	public String addOrUpdateStore(final Model model, final HttpServletRequest request,
									final HttpServletResponse response, 
									@ModelAttribute("product") Product product,
									@RequestParam("productAvatar") MultipartFile productAvatar,
									@RequestParam("productPictures") MultipartFile[] productPictures) 
		throws IOException {
		if (product.getId() == null || product.getId() <= 0) {
			productService.addProduct(product, productAvatar, productPictures);
		} else {
			productService.editProduct(product, productAvatar, productPictures);
		}

		// trả về view
		return "redirect:/admin/sanpham";
	}
	@RequestMapping(value = { "/admin/sanpham/themsanpham/{productId}" }, method = RequestMethod.GET)
	public String test_them_san_Pham_view_id(final Model model, 
											final HttpServletRequest request,
											final HttpServletResponse response,
											@PathVariable("productId") Integer productId) 
		throws IOException {
		//lấy product trong database theo productID
		Product product = productService.getById(productId);
		model.addAttribute("product", product); // đẩy data xuống view

		// lấy danh sách categories trong db đẩy xuống view để hiển thị phần lựa chọn category
		// khi thêm mới sản phẩm
//		List<Categories> categories = categoriesService.getEntitiesByNativeSQL("select * from tbl_category");
//		model.addAttribute("categories", categories);
		// đường dẫn tới file view //trả về view
		return "administrator/ThemSanPham"; /// WEB-INF/views/customer/grabfood.jsp;
	};
	
	
	@RequestMapping(value = { "/admin/sanpham/delete" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> delete_product(final Model model, 
																	   final HttpServletRequest request,
																   	   final HttpServletResponse response, 
																   	   final @RequestBody Product product) {
		Product productInDb = productService.getById(product.getId());
		productInDb.setStatus(false);
		productService.saveOrUpdate(productInDb);
		
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("message", "Đã xóa thành công!");
		return ResponseEntity.ok(jsonResult);
	}
	
	
}
