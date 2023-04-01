package com.devpro.javaweb23.controller.customer;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.javaweb23.controller.BaseController;
import com.devpro.javaweb23.dto.ProductSearch;
import com.devpro.javaweb23.dto.ShopSearch;
import com.devpro.javaweb23.model.Product;
import com.devpro.javaweb23.model.Shop;
import com.devpro.javaweb23.services.PagerData;
import com.devpro.javaweb23.services.impl.ProductService;

@Controller
public class ProductController extends BaseController{
	@Autowired
	ProductService productService;
	
	@RequestMapping(value = { "/product/detail/{productSeo}" }, method = RequestMethod.GET)
	public String product_seo(final Model model, 
					   final HttpServletRequest request, 
					   final HttpServletResponse response,
					   @PathVariable("productSeo") String productSeo)
			throws IOException {
		
		ProductSearch ps = new ProductSearch();
		ps.setSeo(productSeo);
		
		// lấy sản phẩm theo seo
		Product product = productService.searchProduct(ps).getData().get(0);
		model.addAttribute("product", product);
		
		return "customer/chitiet";
	}
	@RequestMapping(value = { "/home/product/search" }, method = RequestMethod.GET)
	public String search_filter_cua_hang(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
					// lấy filter-select
					String searchProductEat = request.getParameter("search-product-eat");
					//String keyword = request.getParameter("keyword");
					
		ProductSearch productSearchEat = new ProductSearch();
		productSearchEat.setKeyword(searchProductEat);
		//shopSearch.setKeyword(keyword);			
		//muốn giữ được các giá trị search trên màn hình thì cần phải đẩy lại dữ liệu nhập trước đó xuống vỉew
		model.addAttribute("productSearchEat", productSearchEat);
					
		PagerData<Product> products = productService.searchProduct(productSearchEat);
		model.addAttribute("products", products);
		
		// đường dẫn tới file view
		return "customer/chitiet"; /// WEB-INF/views/customer/grabfood.jsp;
	};
}
