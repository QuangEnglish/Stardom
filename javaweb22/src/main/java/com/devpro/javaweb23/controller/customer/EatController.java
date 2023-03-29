package com.devpro.javaweb23.controller.customer;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.javaweb23.controller.BaseController;
import com.devpro.javaweb23.services.impl.CategoriesService;
import com.devpro.javaweb23.services.impl.ProductService;

@Controller
public class EatController extends BaseController{
	
	
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoriesService categoriesService;
	
	//đăng ký 1 request cho controller này
	@RequestMapping(value = {"/chitiet"}, method = RequestMethod.GET)
	public String display_chitiet(final Model model, final HttpServletRequest request, final HttpServletResponse response)
	throws IOException{
		model.addAttribute("product", productService.findAll());
		model.addAttribute("categories", categoriesService.findAll());
		//đường dẫn tới file view 
		return "customer/chitiet";   ///WEB-INF/views/customer/grabfood.jsp;
	};
	
}
