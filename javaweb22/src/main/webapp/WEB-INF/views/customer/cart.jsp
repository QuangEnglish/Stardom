<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- taglib JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- taglib SPRING-FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Giỏ hàng - Thanh toán</title>
<link rel="shortcut icon"
	href="${base }/img/imgtrangchu/iconLogoOffStardomChuan.png" />
<!-- Jquery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script
	src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.css"
	rel="stylesheet">
<!-- COMMON -->
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>

<!-- Favicon

<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
-->

<!-- CSS -->
<jsp:include page="/WEB-INF/views/customer/layout/css.jsp"></jsp:include>
<link href="${base}/css/styles.css" rel="stylesheet" />


</head>

<body>

	<!-- Navigation-->
	<jsp:include page="/WEB-INF/views/customer/layout/header-chitiet.jsp"></jsp:include>
	<!-- Section-->
	<section class="py-5 wrapper-container-cart">
		<div class="pos-fix">
			<a href="javascript:history.back()" class="back-button shake-element"><i
				class="fa-solid fa-mug-hot"
				style="color: #fff; margin-right: 5px; font-size: 20px; color: #fff;"></i>Xem
				thêm món</a>
		</div>
		<div class="container px-4 px-lg-5 mt-5">
			<!-- form cho việc thanh toán -->
			<form action="" method="post" id="customer-form">
				<!-- Danh sách sản phẩm trong giỏ hàng -->
				<div class="table-responsive" id="table-container">
					<table class="table" id="my-table-cart">
						<thead>
							<tr>
								<th scope="col" class="border-0 bg-light" style="width: 20%;">
									<div class="p-2 px-3 text-uppercase">Món ăn</div>
								</th>
								<th scope="col" class="border-0 bg-light" style="width: 10%;">
									<div class="py-2 text-uppercase">Giá</div>
								</th>
								<th scope="col" class="border-0 bg-light" style="width: 10%;">
									<div class="py-2 text-uppercase">Số lượng</div>
								</th>
								<th scope="col" class="border-0 bg-light" style="width: 30%;">
									<div class="py-2 text-uppercase">Ghi chú</div>
								</th>
								<th scope="col" class="border-0 bg-light" style="width: 10%;">
									<div class="py-2 text-uppercase">Xóa</div>
								</th>
							</tr>
						</thead>
						<tbody id="product-list">

							<!-- hiển thị danh sách sản phẩm trong giỏ hàng -->
							<c:forEach items="${cart.cartItems }" var="ci">
								<tr>
									<th scope="row" class="border-0">
										<div class="p-2">
											<img src="${base }/upload/${ci.productAvatar }" alt=""
												style="width: 70px; height: 70px;"
												class="img-fluid rounded shadow-sm">
											<div class="ml-3 d-inline-block align-middle">
												<h5 class="mb-0">
													<a href="#" class="text-dark d-inline-block align-middle">
														${ci.productName } </a>
												</h5>
												<span
													class="text-muted font-weight-normal font-italic d-block"></span>
											</div>
										</div>
									</th>
									<td class="border-0 align-middle"><fmt:setLocale
											value="vi_VN" /> <strong><fmt:formatNumber
												value="${ci.priceUnit }" type="currency" /></strong></td>
									<td class="border-0 align-middle">
										<button type="button"
											style="width: 25px; height: 25px; font-weight: bold;"
											class="decrease-quantity-btn"
											onclick="UpdateQuanlityCart('${base }', ${ci.productId}, -1)"
											value="-">-</button> <strong><span
											id="quanlity_${ci.productId}">${ci.quanlity }</span></strong>
										<button type="button"
											style="width: 25px; height: 25px; font-weight: bold;"
											onclick="UpdateQuanlityCart('${base }', ${ci.productId}, 1)"
											value="+">+</button>
									</td>
									<td><p style="margin-top: 25px;">${ci.productNote }</p></td>
									<td class="border-0 align-middle"><button id="delete"
											class="delete-button fw-bolder" type="button"
											onclick="deleteItem('${base }', ${ci.productId})"
											style="text-decoration: none; color: black; padding: 5px 10px;">
											<i class="fa-sharp fa-solid fa-trash"></i>Xóa
										</button></td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
				</div>
				<div id="no-table-message">
					<img
						src="${base }/img/imgtrangchu/7ead0731166046c45e44e2bd4cdabf88.jpg"
						alt="Ảnh">
				</div>



				<div class="row py-5 p-4 bg-white rounded shadow-sm">
					<div class="col-lg-6">
						<!-- <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Coupon code</div>
						<div class="p-4">
							<p class="font-italic mb-4">If you have a coupon code, please enter it in the box below</p>
							<div class="input-group mb-4 border rounded-pill p-2">
								<input type="text" placeholder="Apply coupon" aria-describedby="button-addon3" class="form-control border-0">
								<div class="input-group-append border-0">
									<button id="button-addon3" type="button" class="btn btn-dark px-4 rounded-pill">
										<i class="fa fa-gift mr-2"></i>Apply coupon
									</button>
								</div>
							</div>
						</div> -->
						<div class="bg-light  px-4 py-3 text-uppercase font-weight-bold">Thông
							tin khách hàng</div>
						<div class="p-4">

							<c:choose>
								<c:when test="${isLogined }">
									<div class="form-group" style="margin-bottom: 5px;">
										<label for="customerPhone">Họ và tên khách hàng</label> <input
											type="text" class="form-control" id="customerFullName"
											value="${userLogined.username }" name="customerFullName"
											placeholder="Full name">
									</div>
									<div class="form-group" style="margin-bottom: 5px;">
										<label for="customerEmail">Địa chỉ Email</label> <input
											type="email" class="form-control" id="customerEmail"
											value="${userLogined.email }" name="customerEmail"
											placeholder="Enter email"> <small id="emailHelp"
											class="form-text text-muted">We'll never share your
											email with anyone else.</small>
									</div>
									<div class="form-group" style="margin-bottom: 5px;">
										<label for="customerPhone">Số điện thoại</label> <input
											type="tel" value="${userLogined.phone }" class="form-control"
											id="customerPhone" name="customerPhone"
											placeholder="Shipper sẽ gọi cho bạn vào số này để nhận hàng">
									</div>
									<div class="form-group" style="margin-bottom: 5px;">
										<label for="customerAddress">Địa chỉ giao hàng</label> <input
											type="text" class="form-control" id="customerAddress"
											value="${userLogined.shippingAddress }"
											name="customerAddress"
											placeholder="Bạn cần ghi rõ địa điểm cụ thẻ giao hàng">
									</div>
								</c:when>
								<c:otherwise>
									<div>
										<h2>Bạn hãy đăng nhập để có thể mua hàng</h2>
									</div>
								</c:otherwise>
							</c:choose>


						</div>
					</div>
					<div class="col-lg-6">
						<div class="bg-light px-4 py-3 text-uppercase font-weight-bold">Thông
							tin thanh toán</div>
						<div class="p-4">
							<p class="font-italic mb-4">Shipping and additional costs are
								calculated based on values you have entered.</p>
							<ul class="list-unstyled mb-4">
								<li class="d-flex justify-content-between py-3 border-bottom"><strong
									class="text-muted">Tiền phụ thu </strong><strong>5.000đ</strong></li>
								<li class="d-flex justify-content-between py-3 border-bottom"><strong
									class="text-muted">Phí vận chuyển ship</strong><strong>5%</strong></li>
								<li class="d-flex justify-content-between py-3 border-bottom"><strong
									class="text-muted">Thuế</strong><strong>$0.00</strong></li>
								<li class="d-flex justify-content-between py-3 border-bottom"><strong
									class="text-muted">Tổng tiền</strong>
									<h5 class="font-weight-bold totalPrice" id="sup">
										<fmt:setLocale value="vi_VN" scope="session" />
										<fmt:formatNumber value="${Tongtienthanhtoan }"
											type="currency" />
									</h5></li>
							</ul>
							<button type="submit"
								class="btn btn-dark pay-btn rounded-pill py-2 btn-block">Thanh
								toán</button>
						</div>
					</div>
				</div>

			</form>

		</div>

	</section>

	<!-- Footer-->
	<jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>

	<!-- JS -->
	<jsp:include page="/WEB-INF/views/customer/layout/js.jsp"></jsp:include>
	<script src="${base}/js/animation-rung.js"></script>
	<script src="${base}/js/cart.js"></script>
	<script type="text/javascript">
	function UpdateQuanlityCart(_baseUrl, _productId, _quanlity) {
		//Xét điều kiện nếu quantity = 0 và nếu quantity - 1 thì return để k gọi đến controller
		let productId = _productId;
		let selector = "#quanlity_" + productId;
		let element = document.querySelector(selector).innerText;


		//let quantityText = $(`#quanlity_${productId.toString()}`).text();//lấy text (ở đây là quantity) 
		//console.log(element);
		
		if(element == 1 && _quanlity == -1) return;
		// tạo javascript object để binding với data bên phía controller  
		var requestBody = {
			productId: _productId,
			quanlity: _quanlity
		};
	
		// $ === jQuery
		// json == javascript object
		jQuery.ajax({
			url: _baseUrl + "/ajax/increaseItems", 	   //->request mapping định nghĩa bên controller
			type: "post",					   //-> method type của Request Mapping	
			contentType: "application/json",   //-> nội dung gửi lên dạng json <=> javascript object
			data: JSON.stringify(requestBody), //-> chuyển 1 javascript object thành string json		
			dataType: "json", 				   // kiểu dữ liệu trả về từ Controller
			success: function (jsonResult) {    // gọi ajax thành công
				let prevQuantity = ($(`#quanlity_${ci.productId}`).text());//lấy text (ở đây là quantity) 
				$(`#quanlity_${ci.productId}`).html(parseInt(prevQuantity) +  _quanlity);// lay cai text tren cong hoac tru 1
				
				//let quantity = parseInt($('#quanlity_${ci.productId}').text());
					 //if (quantity > 1) {
						$("#numberEat").html(jsonResult.totalItems);
						location.reload()
					  //} else {
					   // alert('Số lượng tối thiểu là 1.');
					  //}
					
				
				//$("#numberEat").html(jsonResult.totalItems);
				//location.reload();								
			},
			error: function (jqXhr, textStatus, errorMessage) { // gọi ajax thất bại
				alert("error");
			}
		});
	}
	</script>
	<script type="text/javascript">
	//-----------xử lý nhập
	  const customerForm = document.getElementById("customer-form");
	  const table = document.getElementById("my-table-cart");
	  customerForm.addEventListener("submit", (event) => {
	  const nameInput = document.getElementById("customerFullName");
	  const emailInput = document.getElementById("customerEmail");
	  const phoneInput = document.getElementById("customerPhone");
	  const addressInput = document.getElementById("customerAddress");
	  const rows = table.getElementsByTagName("tr");
	  if (!nameInput.value || !emailInput.value || !phoneInput.value || !addressInput.value) {
	    event.preventDefault();
	    alert("Vui lòng nhập đầy đủ thông tin!");
	  }
	  if (rows.length < 2) {
		 event.preventDefault();
		 toastr.warning('Bạn cần thêm sản phẩm vào giỏ hàng!', {
			  closeButton: true,
			  timeOut: 50000,
			  positionClass: 'toast-top-right',
			  className: 'my-warning-class'
			});
	}
});		


	</script>
</body>
</html>
