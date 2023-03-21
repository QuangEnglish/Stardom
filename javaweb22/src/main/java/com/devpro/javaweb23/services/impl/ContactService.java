package com.devpro.javaweb23.services.impl;

import org.springframework.stereotype.Service;

import com.devpro.javaweb23.model.Contact;
import com.devpro.javaweb23.services.BaseService;

/**
 * tạo một bean Service 
 * các bean được tạo dùng để thao tác với các entity
 * @author Admin
 *
 */
@Service
public class ContactService extends BaseService<Contact>{

	@Override
	protected Class<Contact> clazz() {
		return Contact.class;
	}
	
}
