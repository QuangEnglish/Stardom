package com.devpro.javaweb23.controller.customer;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.javaweb23.controller.BaseController;
import com.devpro.javaweb23.dto.Employee;
import com.devpro.javaweb23.model.Contact;
import com.devpro.javaweb23.model.Product;
import com.devpro.javaweb23.services.impl.CategoriesService;
import com.devpro.javaweb23.services.impl.ProductService;

//1.Báo cho spring mvc biết đây là 1 controller
//2.tạo ra một Bean(Object/Instance) và được quản lí bởi spring-container
@Controller
public class HomeController extends BaseController{
	
	
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoriesService categoriesService;
	//đăng ký 1 request cho controller này
	//
	//@param model <<dùng để đẩy data từ controller xuống view>>
	//@param request <<dùng để đọc dữ liệu từ request>>
	//@param response
	//@return 
	//@throws IOException
	
		@RequestMapping(value = {"/home/{pathVariableName}"}, method = RequestMethod.GET)
		public String test (final Model model, final HttpServletRequest request, final HttpServletResponse response, @PathVariable("pathVariableName") String pathVariableName)
		throws IOException{
			//đọc dữ liệu từ request- param
			
			//request-param có cú pháp: ?key = value&key1 = value1;
			//vd:http://localhost:8080/home?requestData1=data%201&requestData2=data%202
//			String requestData1 = request.getParameter("requestData1");
//			String requestData2 = request.getParameter("requestData2");
//			System.out.println(requestData1+" - "+requestData2);
			
			//path-variable có cú pháp: /variable
//			System.out.println(pathVariableName);
//			
			//List<Employee> employees = new ArrayList<Employee>();
			//employees.add(new Employee("Nhan vien 1", 20));
			//employees.add(new Employee("Nhan vien 2", 30));
			//employees.add(new Employee("Nhan vien 3", 40));
			//model.addAttribute("employees", employees);
//			
//			String str = "Java 22";
//			model.addAttribute("data1", str);
			//đường dẫn tới file view 
			return "customer/grabfood";   ///WEB-INF/views/customer/grabfood.jsp;
		};
		@RequestMapping(value = {"/home"}, method = RequestMethod.GET)
		public String home(final Model model, final HttpServletRequest request, final HttpServletResponse response)
		throws IOException{

			model.addAttribute("products", productService.findAll());
	
			return "customer/grabfood";   ///WEB-INF/views/customer/grabfood.jsp;
		};
		
		@RequestMapping(value = {"/danhmuc"}, method = RequestMethod.GET)
		public String display_danhmuc(final Model model, final HttpServletRequest request, final HttpServletResponse response)
		throws IOException{
			//đường dẫn tới file view 
			return "customer/danhmuc";   ///WEB-INF/views/customer/grabfood.jsp;
		};
	
}
