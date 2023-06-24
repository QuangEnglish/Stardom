package com.devpro.javaweb23.controller;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.javaweb23.model.Role;
import com.devpro.javaweb23.model.User;
import com.devpro.javaweb23.services.impl.RoleService;
import com.devpro.javaweb23.services.impl.UserService;

@Controller
public class LoginController extends BaseController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private RoleService roleService;
	@RequestMapping(value = {"/login"}, method = RequestMethod.GET)
	public String display_login(final Model model, final HttpServletRequest request, final HttpServletResponse response)
	throws IOException{
	 	
		//đường dẫn tới file view 
		return "login2";   
	};
	@RequestMapping(value = {"/register"}, method = RequestMethod.GET)
	public String display_register(final Model model, final HttpServletRequest request, final HttpServletResponse response)
	throws IOException{
		model.addAttribute("user", new User()); 	 	
		//đường dẫn tới file view 
		return "register";   
	};
	
	
	@RequestMapping(value = { "/register" }, method = RequestMethod.POST)
	public String contact_post_spring_form(final Model model, final HttpServletRequest request,
			final HttpServletResponse response, final @ModelAttribute("user") User user) // @ModelAttribute																									
			throws IOException {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder(4);
		String encodedPassword  = passwordEncoder.encode(user.getPassword());
		
		Set<Role> setRole = new HashSet<Role>(roleService.getEntitiesByNativeSQL("Select * from tbl_roles where id = 19"));
		User user2 = new User();
		user2.setUsername(user.getUsername());
		user2.setPassword(encodedPassword);
		user2.setEmail(user.getEmail());
		user2.setPhone(user.getPhone());
		user2.setRoles(setRole);
		userService.saveOrUpdate(user2);
		// reset data, tránh spring form đẩy lại data lấy trước đó.
		model.addAttribute("user", new User());
		return "register";
	}
}
