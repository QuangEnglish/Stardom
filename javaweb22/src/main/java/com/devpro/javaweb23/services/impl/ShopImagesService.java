package com.devpro.javaweb23.services.impl;

import org.springframework.stereotype.Service;
import com.devpro.javaweb23.model.ShopImages;
import com.devpro.javaweb23.services.BaseService;

@Service
public class ShopImagesService extends BaseService<ShopImages>{

	@Override
	protected Class<ShopImages> clazz() {
		return ShopImages.class;
	}

}
