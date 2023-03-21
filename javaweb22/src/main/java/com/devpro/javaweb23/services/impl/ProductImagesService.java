package com.devpro.javaweb23.services.impl;

import org.springframework.stereotype.Service;

import com.devpro.javaweb23.model.ProductImages;
import com.devpro.javaweb23.services.BaseService;

@Service
public class ProductImagesService extends BaseService<ProductImages> {
	@Override
	protected Class<ProductImages> clazz() {
		return ProductImages.class;
	}
}
