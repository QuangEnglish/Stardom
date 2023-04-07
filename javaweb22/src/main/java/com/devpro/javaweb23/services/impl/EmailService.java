package com.devpro.javaweb23.services.impl;

import org.springframework.stereotype.Service;

import com.devpro.javaweb23.model.Email;
import com.devpro.javaweb23.services.BaseService;

@Service
public class EmailService extends BaseService<Email>{

	@Override
	protected Class<Email> clazz() {
		return Email.class;
	}

}
