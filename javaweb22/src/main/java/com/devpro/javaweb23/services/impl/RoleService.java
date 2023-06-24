package com.devpro.javaweb23.services.impl;

import org.springframework.stereotype.Service;

import com.devpro.javaweb23.model.Role;
import com.devpro.javaweb23.services.BaseService;

@Service
public class RoleService extends BaseService<Role>{
	@Override
	protected Class<Role> clazz() {
		return Role.class;
	}

}
