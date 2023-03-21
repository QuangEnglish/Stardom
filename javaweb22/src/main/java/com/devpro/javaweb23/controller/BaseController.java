package com.devpro.javaweb23.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.devpro.javaweb23.model.Categories;
import com.devpro.javaweb23.services.impl.CategoriesService;

public abstract class BaseController {

	@Autowired
	private CategoriesService categoriesService;
	
	/**
	 * tất cả request-mapping của child-controller extends từ basecontroller
	 * sẽ tự động gọi các hàm có sử dụng @ModelAltribute
	 * kết quả của hàm sẽ tự động đẩy xuống view
	 */
	
	@ModelAttribute("categories")
	public List<Categories> getAllCategories(){
		return categoriesService.findAll();
	}
}
