package com.devpro.javaweb23.controller.customer;

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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.javaweb23.controller.BaseController;
import com.devpro.javaweb23.dto.ProductSearch;
import com.devpro.javaweb23.dto.ShopSearch;
import com.devpro.javaweb23.model.Email;
import com.devpro.javaweb23.model.Product;
import com.devpro.javaweb23.model.Shop;
import com.devpro.javaweb23.services.PagerData;
import com.devpro.javaweb23.services.impl.EmailService;
import com.devpro.javaweb23.services.impl.ProductService;
import com.devpro.javaweb23.services.impl.SaleOrderService;
import com.devpro.javaweb23.services.impl.SaleOrderShopService;
import com.devpro.javaweb23.services.impl.ShopService;

@Controller
public class ShopController extends BaseController{
	@Autowired
	ShopService shopService;
	@Autowired
	SaleOrderShopService saleOrderShopService;
	@Autowired
	SaleOrderService saleOrderService;
	@Autowired
	ProductService productService;
	@Autowired
	EmailService emailService;
	@RequestMapping(value = { "/shop/detail/{shopSeo}" }, method = RequestMethod.GET)
	public String shop_seo(final Model model, 
					   final HttpServletRequest request, 
					   final HttpServletResponse response,
					   @PathVariable("shopSeo") String shopSeo)
			throws IOException {
		
		ShopSearch ss = new ShopSearch();
		ss.setSeo(shopSeo);
		
		// lấy sản phẩm theo seo
		Shop shop = shopService.searchShop(ss).getData().get(0);
		model.addAttribute("shop", shop);
		
		ProductSearch productSearch1 = new ProductSearch();
		productSearch1.setCategoryIdShop(45);
		productSearch1.setShopId(shop.getId());

		List<Product> product1 = productService.searchProductList(productSearch1);
		model.addAttribute("product1", product1);
		model.addAttribute("productSearch1", productSearch1);
		
		ProductSearch productSearch2 = new ProductSearch();
		productSearch2.setCategoryIdShop(46);
		productSearch2.setShopId(shop.getId());
		
		List<Product> product2 = productService.searchProductList(productSearch2);
		model.addAttribute("product2", product2);
		model.addAttribute("productSearch2", productSearch2);
		
		ProductSearch productSearch3 = new ProductSearch();
		productSearch3.setCategoryIdShop(47);
		productSearch3.setShopId(shop.getId());
		
		List<Product> product3 = productService.searchProductList(productSearch3);
		model.addAttribute("product3", product3);
		model.addAttribute("productSearch3", productSearch3);
		
		ProductSearch productSearch4 = new ProductSearch();
		productSearch4.setCategoryIdShop(48);
		productSearch4.setShopId(shop.getId());
		
		List<Product> product4 = productService.searchProductList(productSearch4);
		model.addAttribute("product4", product4);
		model.addAttribute("productSearch4", productSearch4);
		
		ProductSearch productSearch5 = new ProductSearch();
		productSearch5.setCategoryIdShop(49);
		productSearch5.setShopId(shop.getId());
		
		List<Product> product5 = productService.searchProductList(productSearch5);
		model.addAttribute("product5", product5);
		model.addAttribute("productSearch5", productSearch5);
		

		return "customer/chitiet";
	}
	
	@RequestMapping(value = { "/shop/detail/{shopSeo}" }, method = RequestMethod.POST)
	public String shop_seo_post(final Model model, 
					   final HttpServletRequest request, 
					   final HttpServletResponse response,
					   @PathVariable("shopSeo") String shopSeo)
			throws IOException {
		
		ShopSearch ss = new ShopSearch();
		ss.setSeo(shopSeo);
		
		// lấy sản phẩm theo seo
		Shop shop = shopService.searchShop(ss).getData().get(0);
		model.addAttribute("shop", shop);
		
		String keyword = request.getParameter("keyword");
		String formattedString = "";
		if(keyword !=  "") {
			String inputString  = keyword.replaceAll("[%\\_\\-\\=\\&\\/\\(\\)\\*\\$\\#\\@\\!\\:\\;\\'\\.]", "").toLowerCase();
			String[] words = inputString.split("\\s+");
			for (int i = 0; i < words.length; i++) {
				String word = words[i];
				String firstLetter = word.substring(0, 1);
				String restOfWord = word.substring(1);
				words[i] = firstLetter.toUpperCase() + restOfWord.toLowerCase();
			}
			formattedString = String.join(" ", words);		
		}
		
		
		ProductSearch productSearch1 = new ProductSearch();
		productSearch1.setCategoryIdShop(45);
		productSearch1.setShopId(shop.getId());
		productSearch1.setKeyword(formattedString);
		
		List<Product> product1 = productService.searchProductList(productSearch1);
		model.addAttribute("product1", product1);
		
		ProductSearch productSearch2 = new ProductSearch();
		productSearch2.setCategoryIdShop(46);
		productSearch2.setShopId(shop.getId());
		productSearch2.setKeyword(formattedString);
		
		List<Product> product2 = productService.searchProductList(productSearch2);
		model.addAttribute("product2", product2);
		
		ProductSearch productSearch3 = new ProductSearch();
		productSearch3.setCategoryIdShop(47);
		productSearch3.setShopId(shop.getId());
		productSearch3.setKeyword(formattedString);
		
		List<Product> product3 = productService.searchProductList(productSearch3);
		model.addAttribute("product3", product3);
		
		ProductSearch productSearch4 = new ProductSearch();
		productSearch4.setCategoryIdShop(48);
		productSearch4.setShopId(shop.getId());
		productSearch4.setKeyword(formattedString);
		
		List<Product> product4 = productService.searchProductList(productSearch4);
		model.addAttribute("product4", product4);
		
		ProductSearch productSearch5 = new ProductSearch();
		productSearch5.setCategoryIdShop(49);
		productSearch5.setShopId(shop.getId());
		productSearch5.setKeyword(formattedString);
		
		List<Product> product5 = productService.searchProductList(productSearch5);
		model.addAttribute("product5", product5);
		
		
		return "customer/chitiet";
	}
	@RequestMapping(value = { "/home/shop" }, method = RequestMethod.GET)
	public String search_cua_hang_get(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
					String provinceAddress = request.getParameter("provinceAddress");
					String townAddress = request.getParameter("townAddress");
					String villageAddress = request.getParameter("villageAddress");
					// lấy filter-select
					String filterSelect = request.getParameter("filter-select");
					//String keyword = request.getParameter("keyword");
					
					
		ShopSearch shopSearch = new ShopSearch();
		shopSearch.setProvinceAddress(provinceAddress);
		shopSearch.setTownAddress(townAddress);
		shopSearch.setVillageAddress(villageAddress);
		shopSearch.setFilterSelect(filterSelect);
		//shopSearch.setKeyword(keyword);			
		//muốn giữ được các giá trị search trên màn hình thì cần phải đẩy lại dữ liệu nhập trước đó xuống vỉew
		model.addAttribute("shopSearch", shopSearch);
					
		PagerData<Shop> shops = shopService.searchShop(shopSearch);
		model.addAttribute("shops", shops);
		
		// đường dẫn tới file view
		return "customer/grabfood"; /// WEB-INF/views/customer/grabfood.jsp;
	};
	
		//search list cửa hàng
		@RequestMapping(value = { "/home/shop" }, method = RequestMethod.POST)
		public String search_cua_hang(final Model model, final HttpServletRequest request, final HttpServletResponse response)
				throws IOException {
						String provinceAddress = request.getParameter("provinceAddress");
						String townAddress = request.getParameter("townAddress");
						String villageAddress = request.getParameter("villageAddress");
						//String keyword = request.getParameter("keyword");
						
						//format
						String formattedString = "";
						if(townAddress != "") {
							
							String inputString  = townAddress.replaceAll("[%\\_\\-\\=\\&\\/\\(\\)\\*\\$\\#\\@\\!\\:\\;\\'\\.]", "").toLowerCase();
							String[] words = inputString.split("\\s+");
							for (int i = 0; i < words.length; i++) {
								String word = words[i];
								String firstLetter = word.substring(0, 1);
								String restOfWord = word.substring(1);
								words[i] = firstLetter.toUpperCase() + restOfWord.toLowerCase();
							}
							formattedString = String.join(" ", words);
							
						}
						
						//format
						String formattedString2 = "";
						if(villageAddress !="") {
							String inputString2  = villageAddress.replaceAll("[%\\_\\-\\=\\&\\/\\(\\)\\*\\$\\#\\@\\!\\:\\;\\'\\.]", "").toLowerCase();
							String[] words2 = inputString2.split("\\s+");
							for (int i = 0; i < words2.length; i++) {
								String word2 = words2[i];
								String firstLetter2 = word2.substring(0, 1);
								String restOfWord2 = word2.substring(1);
								words2[i] = firstLetter2.toUpperCase() + restOfWord2.toLowerCase();
							}
							 formattedString2 = String.join(" ", words2);
							
						}
						
			ShopSearch shopSearch = new ShopSearch();
			shopSearch.setProvinceAddress(provinceAddress);
			shopSearch.setTownAddress(formattedString);
			shopSearch.setVillageAddress(formattedString2);
			//shopSearch.setKeyword(keyword);			
			//muốn giữ được các giá trị search trên màn hình thì cần phải đẩy lại dữ liệu nhập trước đó xuống vỉew
			model.addAttribute("shopSearch", shopSearch);					
			PagerData<Shop> shops = shopService.searchShop(shopSearch);
			model.addAttribute("shops", shops);
			// đường dẫn tới file view
			return "customer/grabfood"; /// WEB-INF/views/customer/grabfood.jsp;
		};
		@RequestMapping(value = { "/home/shop/search" }, method = RequestMethod.GET)
		public String search_filter_cua_hang(final Model model, final HttpServletRequest request, final HttpServletResponse response)
				throws IOException {
						// lấy filter-select
						String filterSelect = request.getParameter("filter-select");
						//String keyword = request.getParameter("keyword");
						
			ShopSearch shopSearchFilter = new ShopSearch();
			shopSearchFilter.setFilterSelect(filterSelect);
			//shopSearch.setKeyword(keyword);			
			//muốn giữ được các giá trị search trên màn hình thì cần phải đẩy lại dữ liệu nhập trước đó xuống vỉew
			model.addAttribute("shopSearchFilter", shopSearchFilter);
						
			PagerData<Shop> shops = shopService.searchShop(shopSearchFilter);
			model.addAttribute("shops", shops);
			
			// đường dẫn tới file view
			return "customer/grabfood"; /// WEB-INF/views/customer/grabfood.jsp;
		};
		
		@RequestMapping(value = { "/ajax/shop-view" }, method = RequestMethod.POST)
		public ResponseEntity<Map<String, Object>> view_shop(final Model model, final HttpServletRequest request,
				final HttpServletResponse response, final @RequestBody Shop shop) {
			Shop shopView = shopService.getById(shop.getId());
			shopView.setViewShop(1);
			shopService.saveOrUpdate(shopView);

			Map<String, Object> jsonResult = new HashMap<String, Object>();
			jsonResult.put("message", "Đã thêm view thành công!");
			return ResponseEntity.ok(jsonResult);
		}
		
		@RequestMapping(value = { "/ajax/search-email" }, method = RequestMethod.POST)
		public ResponseEntity<Map<String, Object>> search_email(final Model model, final HttpServletRequest request,
				final HttpServletResponse response, final @RequestBody Email email) {
			Email emailPost = new Email();
			emailPost.setEmail(email.getEmail());
			emailService.saveOrUpdate(emailPost);

			Map<String, Object> jsonResult = new HashMap<String, Object>();
			jsonResult.put("message", "Đăng ký nhân thông báo thành công!");
			return ResponseEntity.ok(jsonResult);
		}
	
}
