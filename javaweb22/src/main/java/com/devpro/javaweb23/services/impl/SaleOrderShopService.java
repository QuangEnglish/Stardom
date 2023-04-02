package com.devpro.javaweb23.services.impl;

import org.springframework.stereotype.Service;

import com.devpro.javaweb23.model.SaleOrderShop;
import com.devpro.javaweb23.services.BaseService;

@Service
public class SaleOrderShopService extends BaseService<SaleOrderShop>{
	@Override
	protected Class<SaleOrderShop> clazz() {
		return SaleOrderShop.class;
	}
}
