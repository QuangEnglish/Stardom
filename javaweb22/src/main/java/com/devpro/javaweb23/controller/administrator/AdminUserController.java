package com.devpro.javaweb23.controller.administrator;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.devpro.javaweb23.controller.BaseController;
import com.devpro.javaweb23.dto.UserSearch;
import com.devpro.javaweb23.model.Email;
import com.devpro.javaweb23.model.User;
import com.devpro.javaweb23.services.PagerData;
import com.devpro.javaweb23.services.impl.EmailService;
import com.devpro.javaweb23.services.impl.UserService;

@Controller
public class AdminUserController extends BaseController {
	@Autowired
	private UserService userService;
	@Autowired
	private EmailService emailService;
	// list khách hàng
	@RequestMapping(value = { "/admin/khachhang" }, method = RequestMethod.GET)
	public String danh_sach_khach_hang(final Model model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {
		// lấy keyword
		String keyword = request.getParameter("keyword");
		//lấy số page hiện tại
		String currentPage = request.getParameter("page");

		UserSearch userSearch = new UserSearch();
		userSearch.setKeyword(keyword);
		userSearch.setCurrentPage(currentPage);

		//muốn giữ được các giá trị search trên màn hình thì cần phải đẩy lại dữ liệu nhập trước đó xuống vỉew
		model.addAttribute("userSearch", userSearch);

		PagerData<User> users = userService.searchUser(userSearch);
		model.addAttribute("users", users);

// đường dẫn tới file view
		return "administrator/ThongTinKhachHang"; /// WEB-INF/views/customer/grabfood.jsp;
	}
	@RequestMapping(value = { "/admin/khachhang/delete" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> delete_user(final Model model, 
																	   final HttpServletRequest request,
																   	   final HttpServletResponse response, 
																   	   final @RequestBody User user) {
		User userInDb = userService.getById(user.getId());
		userInDb.setStatus(false);
		userService.saveOrUpdate(userInDb);
		
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("message", "Đã xóa thành công!");
		return ResponseEntity.ok(jsonResult);
	}
	@RequestMapping(value = { "/admin/email" }, method = RequestMethod.GET)
	public String gui_mail_khach_hang(final Model model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {	
			
		return "administrator/GuiMailKhachHang";
	}
	
	@RequestMapping(value = { "/admin/sendEmailToAllUsers" }, method = RequestMethod.GET)
	public String gui_mail_all_khach_hang(final Model model, final HttpServletRequest request,
			final HttpServletResponse response,@RequestParam String subject, @RequestParam String content) throws IOException {
		List<Email> emails = emailService.findAll();
        for (Email email : emails) {
		emailService.sendEmailToAllUsers(email.getEmail(), subject, content);
        }
		return "administrator/GuiMailKhachHang";
	}
	
}
