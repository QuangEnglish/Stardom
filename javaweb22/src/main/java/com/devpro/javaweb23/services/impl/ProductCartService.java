package com.devpro.javaweb23.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.devpro.javaweb23.model.Product;
import com.devpro.javaweb23.services.BaseService;

@Service
public class ProductCartService extends BaseService<Product> {
	@Autowired
	private ProductImagesService productImagesService;
	@Autowired
	private ProductService productService;
	@Override
	protected Class<Product> clazz() {
		// TODO Auto-generated method stub
		return Product.class;
	}
	Product pr = new Product();
	public Product getProductCartById(int id) {
        Product product = productService.getById(id);
        pr = product;
        return product;
	}
	public Product displayProductCartById() {
        return pr;
	}
}