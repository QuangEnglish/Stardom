package com.devpro.javaweb23.controller.customer;

import java.io.IOException;
import java.math.BigDecimal;
import java.text.NumberFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.devpro.javaweb23.controller.BaseController;
import com.devpro.javaweb23.dto.Cart;
import com.devpro.javaweb23.dto.CartItem;
import com.devpro.javaweb23.model.Product;
import com.devpro.javaweb23.model.SaleOrder;
import com.devpro.javaweb23.model.SaleOrderProducts;
import com.devpro.javaweb23.services.impl.ProductService;
import com.devpro.javaweb23.services.impl.SaleOrderService;

@Controller
public class CartController extends BaseController {

	@Autowired
	private ProductService productService;

	@Autowired
	private SaleOrderService saleOrderService;

	// màn hình thanh toán
	@RequestMapping(value = { "/cart/checkout" }, method = RequestMethod.GET)
	public String cartCheckout(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		return "customer/cart"; // -> đường dẫn tới View.
	}

	// tạo hóa đơn
	@RequestMapping(value = { "/cart/checkout" }, method = RequestMethod.POST)
	public String cartFinished(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {

		// Lấy thông tin khách hàng
		String customerFullName = request.getParameter("customerFullName");
		String customerEmail = request.getParameter("customerEmail");
		String customerPhone = request.getParameter("customerPhone");
		String customerAddress = request.getParameter("customerAddress");

		// tạo hóa đơn + với thông tin khách hàng lấy được
		SaleOrder saleOrder = new SaleOrder();
		saleOrder.setCustomerName(customerFullName);
		saleOrder.setCustomerEmail(customerEmail);
		saleOrder.setCustomerAddress(customerAddress);
		saleOrder.setCustomerPhone(customerPhone);
		saleOrder.setCode(String.valueOf(System.currentTimeMillis())); // mã hóa đơn: HD20230314

		// lấy giỏ hàng
		HttpSession session = request.getSession();
		Cart cart = (Cart) session.getAttribute("cart");

		// lấy sản phẩm trong giỏ hàng
		for (CartItem cartItem : cart.getCartItems()) {
			SaleOrderProducts saleOrderProducts = new SaleOrderProducts();
			saleOrderProducts.setProduct(productService.getById(cartItem.getProductId()));
			saleOrderProducts.setQuality(cartItem.getQuanlity());

			// sử dụng hàm tiện ích add hoặc remove đới với các quan hệ onetomany
			saleOrder.addSaleOrderProducts(saleOrderProducts);
		}

		// lưu hóa đơn vào database
		saleOrderService.saveOrUpdate(saleOrder);

		// thực hiện reset lại giỏ hàng của Session hiện tại
		session.setAttribute("cart", null);
		session.setAttribute("Tongsoluongmon", 0);

		return "customer/chitiet"; // -> đường dẫn tới View.

	}

	@RequestMapping(value = { "/ajax/addToCart" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> ajax_AddToCart(final Model model, final HttpServletRequest request,
			final HttpServletResponse response, final @RequestBody CartItem cartItem) {

		// để lấy session sử dụng thông qua request
		// session tương tự như kiểu Map và được lưu trên main memory.
		// mỗi trình duyệt sẽ có các session khác nhau
		HttpSession session = request.getSession();

		// Lấy thông tin giỏ hàng. Đầu tiên giả sử giỏ hàng là null(chưa có giỏ hàng)
		Cart cart = null;

		// kiểm tra xem session có tồn tại đối tượng nào tên là "cart"
		if (session.getAttribute("cart") != null) { // tồn tại 1 giỏ hàng trên session
			cart = (Cart) session.getAttribute("cart");
		} else {// chưa có giỏ hàng nào trên session
			cart = new Cart(); // khởi tạo giỏ hàng mới
			session.setAttribute("cart", cart);
		}

		// Lấy danh sách sản phẩm đang có trong giỏ hàng
		List<CartItem> cartItems = cart.getCartItems();

		// kiểm tra nếu sản phẩm muốn bổ sùng vào giỏ hàng có trong giỏ hàng nếu có thì
		// tăng số lượng
		boolean isExists = false;
		for (CartItem item : cartItems) {
			if (item.getProductId() == cartItem.getProductId()) {
				isExists = true;
				// tăng số lượng sản phẩm lên
				item.setQuanlity(item.getQuanlity() + cartItem.getQuanlity());
			}
		}

		// nếu sản phẩm chưa có trong giỏ hàng thì thực hiện add sản phẩm đó vào giỏ
		// hàng
		if (!isExists) {
			// trước khi thêm mới thì lấy sản phẩm trong db
			// và thiết lập tên + đơn giá cho cartitem
			Product productInDb = productService.getById(cartItem.getProductId());

			cartItem.setProductName(productInDb.getTitle());
			cartItem.setPriceUnit(productInDb.getPrice());
			cartItem.setProductAvatar(productInDb.getAvatar());
			cartItem.setProductDetail(productInDb.getDetails());

			cart.getCartItems().add(cartItem); // thêm mới sản phẩm vào giỏ hàng
		}

		// tính tổng tiền
//		this.calculateTotalPrice(request);
		this.getTotalMoney(request);

		// trả về kết quả
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("status", "TC");
		jsonResult.put("totalItems", getTotalItems(request));
		jsonResult.put("totalPrice", getTotalMoney(request));

		// lưu totalItems vào session
		// tất cả các giá trị lưu trên session đều có thể truy cập được từ View
		session.setAttribute("Tongsoluongmon", getTotalItems(request));
		session.setAttribute("Tongtienthanhtoan", getTotalMoney(request));

		return ResponseEntity.ok(jsonResult);
	}

	private int getTotalItems(final HttpServletRequest request) {
		HttpSession httpSession = request.getSession();

		if (httpSession.getAttribute("cart") == null) {
			return 0;
		}

		Cart cart = (Cart) httpSession.getAttribute("cart");
		List<CartItem> cartItems = cart.getCartItems();

		int total = 0;
		for (CartItem item : cartItems) {
			total += item.getQuanlity();
		}

		return total;
	}

	private BigDecimal getTotalMoney(final HttpServletRequest request) {
		HttpSession httpSession = request.getSession();

		if (httpSession.getAttribute("cart") == null) {
			return BigDecimal.ZERO;
		}

		Cart cart = (Cart) httpSession.getAttribute("cart");
		List<CartItem> cartItems = cart.getCartItems();

		BigDecimal sum = BigDecimal.ZERO;
		BigDecimal decimal = new BigDecimal("1");
		for (CartItem item : cartItems) {
			int x = item.getQuanlity();
			BigDecimal result = BigDecimal.valueOf(x).multiply(decimal);
			sum = sum.add(item.getPriceUnit().multiply(result));
		}

		return sum;
	}

	@RequestMapping(value = { "/ajax/addCart" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> addCart_using_ajax(final Model model, final HttpServletRequest request,
			final HttpServletResponse response, final @RequestBody Product product) {
		Product productCart = productService.getById(product.getId());
		model.addAttribute("productCart", productCart);

		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("statusCode", 200);
		jsonResult.put("statusMessage", "");
		jsonResult.put("id", product.getId());
		jsonResult.put("title", product.getTitle());
		jsonResult.put("price", product.getPrice());
		jsonResult.put("priceSale", product.getPriceSale());
		jsonResult.put("avatar", product.getAvatar());

		return ResponseEntity.ok(jsonResult);
	}

	// Xử lý yêu cầu xóa sản phẩm khỏi giỏ hàng
//	@RequestMapping(value = "/cart/remove", method = RequestMethod.POST)
//	@ResponseBody
//	public Map<String, Object> removeCartItem(@RequestParam("productId") int productId, HttpSession session) {
//		// Lấy giỏ hàng từ session
//		Cart cart = (Cart) session.getAttribute("cart");
//
//		// Nếu giỏ hàng không tồn tại, trả về thông báo lỗi
//		if (cart == null) {
//			Map<String, Object> response = new HashMap<String, Object>();
//			response.put("success", false);
//			response.put("message", "Giỏ hàng không tồn tại.");
//			return response;
//		}
//
//		// Xóa sản phẩm khỏi giỏ hàng
//		cart.removeCartItem(productId);
//
//		// Lưu giỏ hàng vào session
//		session.setAttribute("cart", cart);
//
//		// Tạo đối tượng phản hồi
//		Map<String, Object> response = new HashMap<String, Object>();
//		response.put("success", true);
//		response.put("cartHtml", getCartHtml(cart));
//		return response;
//	}

	// Hàm lấy HTML của giỏ hàng
//	private String getCartHtml(Cart cart) {
//	    String cartHtml = "<tbody id='cart-items'>";
//	    for (CartItem item : cart.getCartItems()) {
//	        cartHtml += "<tr> <td scope='row' class='border-0'> <div class='p-2'><img src='${base }/upload/${ci.productAvatar }' alt=''style='width: 70px; height: 70px;' class='img-fluid rounded shadow-sm'> <div class='ml-3 d-inline-block align-middle'> <h5 class='mb-0'> <a href='#' class='text-dark d-inline-block align-middle>"+item.getProductName()+"</a> </h5> <span class='text-muted font-weight-normal font-italic d-block'></span> </div> </div> </td> <td class='border-0 align-middle'><fmt:setLocale value='vi_VN' /> <strong><fmt:formatNumber value="+item.getPriceUnit()+" type='currency' /></strong></td><td class='border-0 align-middle'> <button style='width: 25px; height: 25px; font-weight: bold;' onclick='UpdateQuanlityCart('${base }', ${ci.productId}, -1)' value='-'>-</button> <strong><span id='quanlity_${ci.productId}'>"+item.getQuanlity()+"</span></strong> <button style='width: 25px; height: 25px; font-weight: bold;' onclick='UpdateQuanlityCart('${base }', ${ci.productId}, 1)' value='+'>+</button> </td> <td><p style='margin-top: 25px;'>"+item.getProductDetail()+"</p></td> <td class='border-0 align-middle'><button class='remove-item' data-product-id='${ci.productId}' style='text-decoration: none; color: black; font-weight: bold;'> <i class='fa-sharp fa-solid fa-trash'></i>Xóa </button></td></tr>;}";
//	    }
//	    cartHtml += "</tbody>";
//	    return cartHtml;
//	}
	@RequestMapping(value = { "/ajax/increaseItems" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> ajax_IncreaseItems(final Model model,
														       final HttpServletRequest request,
														       final HttpServletResponse response, 
														       final @RequestBody CartItem cartItem) 
	{
		// để lấy session sử dụng thông qua request
		// session tương tự như kiểu Map và được lưu trên main memory.
		// mỗi trình duyệt sẽ có các session khác nhau
		HttpSession session = request.getSession();

		// Lấy thông tin giỏ hàng. Đầu tiên giả sử giỏ hàng là null(chưa có giỏ hàng)
		Cart cart = null;
		
		// kiểm tra xem session có tồn tại đối tượng nào tên là "cart"
		if (session.getAttribute("cart") != null) { // tồn tại 1 giỏ hàng trên session
			cart = (Cart) session.getAttribute("cart");
		} else {// chưa có giỏ hàng nào trên session
			cart = new Cart(); //khởi tạo giỏ hàng mới
			session.setAttribute("cart", cart);
		}
		
		// Lấy danh sách sản phẩm đang có trong giỏ hàng
		List<CartItem> cartItems = cart.getCartItems();
		
//		System.err.println(cartItem.getProductId());
//		cartItems.forEach(System.err::print);
//		System.err.println();
		
		for (CartItem item : cartItems) {
			if (item.getProductId() == cartItem.getProductId()) {
				// tăng số lượng sản phẩm lên
				item.setQuanlity(item.getQuanlity() + cartItem.getQuanlity());
				
				break;
			}
		}
//		// tính tổng tiền
//		this.calculateTotalPrice(request);
		
		// trả về kết quả
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("status", "TC");
		jsonResult.put("totalItems", getTotalItems(request));
		
		// lưu totalItems vào session
		// tất cả các giá trị lưu trên session đều có thể truy cập được từ View
		session.setAttribute("cartItem.quantity", getTotalItems(request));
		// tất cả các giá trị lưu trên session đều có thể truy cập được từ View
		session.setAttribute("TongSoLuongSanPhamTrongGioHang", getTotalItems(request));
		// tất cả các giá trị lưu trên session đều có thể truy cập được từ View
		session.setAttribute("tongGia", getTotalMoney(request));
		return ResponseEntity.ok(jsonResult);
		
	}
	@RequestMapping(value = { "/ajax/deleteItems" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> ajax_deleteItems(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response, 
			final @RequestBody CartItem cartItem) 
	{
		// để lấy session sử dụng thông qua request
		// session tương tự như kiểu Map và được lưu trên main memory.
		// mỗi trình duyệt sẽ có các session khác nhau
		HttpSession session = request.getSession();
		
		// Lấy thông tin giỏ hàng. Đầu tiên giả sử giỏ hàng là null(chưa có giỏ hàng)
		Cart cart = new Cart();
		
		// kiểm tra xem session có tồn tại đối tượng nào tên là "cart"
		if (session.getAttribute("cart") != null) { // tồn tại 1 giỏ hàng trên session
			cart = (Cart) session.getAttribute("cart");
		} else {// chưa có giỏ hàng nào trên session
			cart = new Cart(); //khởi tạo giỏ hàng mới
			session.setAttribute("cart", cart);
		}
		
		// Lấy danh sách sản phẩm đang có trong giỏ hàng
		List<CartItem> cartItems = cart.getCartItems();
		
//		System.err.println(cartItem.getProductId());
//		cartItems.forEach(System.err::print);
//		System.err.println();
		
		for (CartItem item : cartItems) {
			if (item.getProductId() == cartItem.getProductId()) {
				// xoa sp trong cart
				System.out.println("quantity: "+cartItem.getQuanlity());
				cartItems.remove(item);
				break;
			}
		}
	
//		// tính tổng tiền
//		this.calculateTotalPrice(request);
		
		// trả về kết quả
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("status", "TC");
		jsonResult.put("totalItems", getTotalItems(request));
		
		// lưu totalItems vào session
		// tất cả các giá trị lưu trên session đều có thể truy cập được từ View
		session.setAttribute("cartItem.quantity", getTotalItems(request));
		// tất cả các giá trị lưu trên session đều có thể truy cập được từ View
		session.setAttribute("TongSoLuongSanPhamTrongGioHang", getTotalItems(request));
		// tất cả các giá trị lưu trên session đều có thể truy cập được từ View
		session.setAttribute("tongGia", getTotalMoney(request));
		return ResponseEntity.ok(jsonResult);
	}
}
