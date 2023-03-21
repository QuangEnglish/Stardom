package com.devpro.javaweb23.controller.customer;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.devpro.javaweb23.controller.BaseController;
import com.devpro.javaweb23.dto.ContactDTO;
import com.devpro.javaweb23.model.Contact;
import com.devpro.javaweb23.services.impl.ContactService;

@Controller
public class ContactController extends BaseController {
	
	//inject một bean vào trong một bean sử dụng @Autowired
	@Autowired
	private ContactService contactService;
	
	// Đây là cách 1 sử dụng form đơn giản
	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
	public String contact(final Model model, 
		   				  final HttpServletRequest request, 
		   				  final HttpServletResponse response) {
		Contact contactDTO = new Contact();
		model.addAttribute("contact", contactDTO);
		return "customer/contact";
	}

	// -----------------------------------------------------------------------------
	@RequestMapping(value = { "/contact-us-simple" }, method = RequestMethod.POST)
	public String contact_(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		// lấy dữ liệu từ view đẩy lên thông qua object request
		String fullName = request.getParameter("fullName");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		System.out.println(fullName + " - " + email + " - " + subject + " - " + message);
		return "customer/contact";
	}

	// ------------------------------------------------------------------------------------
	// Đây là cách 2 spring form
//	@RequestMapping(value = { "/contact-us-spring-form" }, method = { RequestMethod.GET, RequestMethod.POST })
//	public String contact_post_spring_form(final Model model, final HttpServletRequest request,
//			final HttpServletResponse response, final @ModelAttribute("contact") Contact contact) // @ModelAttribute
//																									// giống kiểu hứng
//																									// data từ
//																									// Controller gửi
//																									// xuống view
//																									// tên ("contact")
//																									// phải giống bên
//																									// form <sf:form
//																									// modelAttribute="contact")
//			throws IOException {
//		System.out.println(contact.getFirstName() + " " + contact.getEmail() + " " + contact.getPhone());
//			
//		// final @ModelAttribute("contactModel") Contact contact)
//		// lệnh trên đồng thời cũng đẩy contact xuống view với tên là contact
//		// <=> model.Attribute("contactModel", contact);
//
//		// reset data, tránh spring form đẩy lại data lấy trước đó.
//		model.addAttribute("contact", new Contact());
//		return "customer/contact";
//	}
	//------------------------------------------------------------------------------------
	@RequestMapping(value = { "/register-us-spring-form" }, method = RequestMethod.POST)
	public String register_post_spring_form(final Model model,
											final HttpServletRequest request,
											final HttpServletResponse response, 
											final @ModelAttribute("registerModel") ContactDTO registerModel) 
			throws IOException {
		System.out.println(registerModel.getLastName() + " "+registerModel.getFirstName()+" " + registerModel.getEmail() + " " + registerModel.getPhone());
		//lưu contact vào trong database sử dụng service thích hợp
		Contact contact = new Contact();
		contact.setFirstName(registerModel.getFirstName());
		contact.setLastName(registerModel.getLastName());
		contact.setEmail(registerModel.getEmail());
		contact.setPhone(registerModel.getPhone());
		
		contactService.saveOrUpdate(contact);
//		model.addAttribute("registerModel", new Contact());
		
		return "customer/login";
	}
	// ------------------------------------------------------------------------------------
	// Đây là cách 3 sử dụng ajax để lấy dữ liệu
	
	@RequestMapping(value = { "/ajax/contact" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> contact_post_using_ajax(final Model model, 
																	   final HttpServletRequest request,
																   	   final HttpServletResponse response, 
																   	   final @RequestBody Contact contactDTO) {
		System.out.println(contactDTO.getFirstName() + " " + contactDTO.getEmail());
		
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("statusCode", 200);
		jsonResult.put("statusMessage", "Cảm ơn bạn " + contactDTO.getEmail() + ", Chúng tôi sẽ liên hệ sớm nhất!");
		return ResponseEntity.ok(jsonResult);
	}
}
