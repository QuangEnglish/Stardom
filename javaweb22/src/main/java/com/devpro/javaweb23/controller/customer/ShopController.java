package com.devpro.javaweb23.controller.customer;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.javaweb23.controller.BaseController;
import com.devpro.javaweb23.dto.ProductSearch;
import com.devpro.javaweb23.dto.ShopSearch;
import com.devpro.javaweb23.model.Product;
import com.devpro.javaweb23.model.Shop;
import com.devpro.javaweb23.services.PagerData;
import com.devpro.javaweb23.services.impl.ShopService;

@Controller
public class ShopController extends BaseController{
	@Autowired
	ShopService shopService;
	
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
						
			ShopSearch shopSearch = new ShopSearch();
			shopSearch.setProvinceAddress(provinceAddress);
			shopSearch.setTownAddress(townAddress);
			shopSearch.setVillageAddress(villageAddress);
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
		
}
