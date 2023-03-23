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
import com.devpro.javaweb23.dto.ShopSearch;
import com.devpro.javaweb23.model.Shop;
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
}
