package com.devpro.javaweb23.controller.administrator;

import java.io.IOException;
import java.util.HashMap;
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
import com.devpro.javaweb23.dto.ProductSearch;
import com.devpro.javaweb23.dto.ShopSearch;
import com.devpro.javaweb23.model.Product;
import com.devpro.javaweb23.model.Shop;
import com.devpro.javaweb23.services.PagerData;
import com.devpro.javaweb23.services.impl.CategoriesService;
import com.devpro.javaweb23.services.impl.ProductService;
import com.devpro.javaweb23.services.impl.ShopService;

@Controller
public class AdminShopController extends BaseController {
	@Autowired
	private CategoriesService categoriesService;

	@Autowired
	private ProductService productService;
	@Autowired
	private ShopService shopService;

	@RequestMapping(value = { "/admin/cuahang" }, method = RequestMethod.GET)
	public String test_cua_hang(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		// lấy keyword
		String keyword = request.getParameter("keyword");
		// lấy provinceAddress
		String provinceAddress = request.getParameter("provinceAddress");
		// lấy townAddress
		String townAddress = request.getParameter("townAddress");
		// lấy villageAddress
		String villageAddress = request.getParameter("villageAddress");
		// lấy detailAddress
		String detailAddress = request.getParameter("detailAddress");
		// lấy số page hiện tại
		String currentPage = request.getParameter("page");
		// lấy số page hiện tại
	    String phone = request.getParameter("phone");

		ShopSearch shopSearch = new ShopSearch();
		shopSearch.setKeyword(keyword);
		shopSearch.setProvinceAddress(provinceAddress);
		shopSearch.setTownAddress(townAddress);
		shopSearch.setVillageAddress(villageAddress);
		shopSearch.setDetailAddress(detailAddress);
		shopSearch.setCurrentPage(currentPage);
		shopSearch.setPhone(phone);
		// muốn giữ được các giá trị search trên màn hình thì cần phải đẩy lại dữ liệu
		// nhập trước đó xuống vỉew
		model.addAttribute("shopSearch", shopSearch);

		PagerData<Shop> shops = shopService.searchShop(shopSearch);
		model.addAttribute("shops", shops);
		// đường dẫn tới file view
		return "administrator/CuaHang"; /// WEB-INF/views/customer/grabfood.jsp;
	};

	@RequestMapping(value = { "/admin/cuahang/themcuahang" }, method = RequestMethod.GET)
	public String test_them_cua_hang(final Model model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {
		// khởi tạo 1 shop(entity) mới
		Shop newShop = new Shop();
		model.addAttribute("shop", newShop); // đẩy data xuống view

		// lấy danh sách categories trong db đẩy xuống view để hiển thị phần lựa chọn
		// category
		// khi thêm mới sản phẩm
//		List<Categories> categories = categoriesService.getEntitiesByNativeSQL("select * from tbl_category");
//		model.addAttribute("categories", categories);
		// đường dẫn tới file view //trả về view
		return "administrator/ThemCuaHang"; /// WEB-INF/views/customer/grabfood.jsp;
	};

	@RequestMapping(value = { "/admin/cuahang/themcuahang/saveOrUpdate" }, method = RequestMethod.POST)
	public String addOrUpdateStore_cuahang(final Model model, final HttpServletRequest request,
			final HttpServletResponse response, @ModelAttribute("shop") Shop shop,
			@RequestParam("shopAvatar") MultipartFile shopAvatar,
			@RequestParam("shopPictures") MultipartFile[] shopPictures) throws IOException {
		if (shop.getId() == null || shop.getId() <= 0) {
			shopService.addShop(shop, shopAvatar, shopPictures);
		} else {
			shopService.editShop(shop, shopAvatar, shopPictures);
		}

		// trả về view
		return "redirect:/admin/cuahang";

	}

	@RequestMapping(value = { "/admin/cuahang/themcuahang/{shopId}" }, method = RequestMethod.GET)
	public String test_them_cua_hang_view_id(final Model model, final HttpServletRequest request,
			final HttpServletResponse response, @PathVariable("shopId") Integer shopId) throws IOException {
		// lấy product trong database theo productID
		Shop shop = shopService.getById(shopId);
		model.addAttribute("shop", shop); // đẩy data xuống view

		// lấy danh sách categories trong db đẩy xuống view để hiển thị phần lựa chọn
		// category
		// khi thêm mới sản phẩm
//		List<Categories> categories = categoriesService.getEntitiesByNativeSQL("select * from tbl_category");
//		model.addAttribute("categories", categories);
		// đường dẫn tới file view //trả về view
		return "administrator/ThemCuaHang"; /// WEB-INF/views/customer/grabfood.jsp;
	};

	@RequestMapping(value = { "/admin/cuahang/delete" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> delete_shop(final Model model, final HttpServletRequest request,
			final HttpServletResponse response, final @RequestBody Shop shop) {
		Shop shopInDb = shopService.getById(shop.getId());
		shopInDb.setStatus(false);
		shopService.saveOrUpdate(shopInDb);

		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("message", "Đã xóa thành công!");
		return ResponseEntity.ok(jsonResult);
	}

}
