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
import com.devpro.javaweb23.model.Product;
import com.devpro.javaweb23.services.impl.ProductService;

@Controller
public class ProductController extends BaseController{
	@Autowired
	ProductService productService;
	
	@RequestMapping(value = { "/product/detail/{productSeo}" }, method = RequestMethod.GET)
	public String trangChu(final Model model, 
					   final HttpServletRequest request, 
					   final HttpServletResponse response,
					   @PathVariable("productSeo") String productSeo)
			throws IOException {
		
		ProductSearch ps = new ProductSearch();
		ps.setSeo(productSeo);
		
		// lấy sản phẩm theo seo
		Product product = productService.searchProduct(ps).getData().get(0);
		model.addAttribute("product", product);
		
		return "customer/chitiet";
	}
}
