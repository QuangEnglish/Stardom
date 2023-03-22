package com.devpro.javaweb23.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.javaweb23.model.Contact;

@Controller
public class LoginController extends BaseController {

	@RequestMapping(value = {"/login"}, method = RequestMethod.GET)
	public String display_login(final Model model, final HttpServletRequest request, final HttpServletResponse response)
	throws IOException{
		model.addAttribute("registerModel", new Contact()); 	 	
		//đường dẫn tới file view 
		return "login2";   
	};
	
}
