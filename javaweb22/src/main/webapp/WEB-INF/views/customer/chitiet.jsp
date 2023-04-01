<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- import JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- import thư viện spring-form -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset='utf-8'>
<meta http-equiv='X-UA-Compatible' content='IE=edge'>
<title>Món ngon tại Stardom</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<!-- Favicon-->
<link rel="shortcut icon"
	href="${base }/img/imgtrangchu/iconLogoOffStardomChuan.png" />

<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/customer/layout/css.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/customer/layout/js.jsp"></jsp:include>
<!-- Jquery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
<link
	href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css"
	rel="stylesheet" />
</head>

<body>
	<!-- all -->
	<div id="all">
		<!-- top__chitiet -->
		<div id="top__chitiet">
			<!-- header -->
			<jsp:include page="/WEB-INF/views/customer/layout/header-chitiet.jsp"></jsp:include>
			<!-- /header -->
			<!--wrapper-product-imgShop-->
			<div class="wrapper-product-imgShop">
				<!-- product-details -->
				<div id="product-details">
					<!-- nav__danhmuc -->
					<nav class="menu menu__chitiet">
						<a href="./grabfood.html">Trang chủ</a> <i class="ti-angle-right"></i>
						<a href="#">Ẩm thực</a> <i class="ti-angle-right"></i> <a href="#">${shop.name }</a>
					</nav>
					<!-- /nav__danhmuc -->
					<!-- h2 -->
					<h2>${shop.name }</h2>
					<!-- /h2 -->
					<!--product-details__p  -->

					<p>
						<i class="fa-sharp fa-solid fa-location-dot"
							style="color: #e11818; margin-right: 5px;"></i><span
							style="color: var(- -violet-color);">Địa chỉ: </span>${shop.detailAddress },${shop.villageAddress },${shop.townAddress },${shop.provinceAddress }
					</p>
					<p>
						<i class="fa-solid fa-star"
							style="color: yellow; margin-right: 5px;"></i><span
							style="color: #fff;">${shop.viewShop} lượt xem</span>
					</p>
					<p>
						<i class="fa-solid fa-clock"
							style="color: #20c320; margin-right: 5px;"></i> <span
							style="font-weight: bold;">Giờ đóng mở cửa: </span><span
							style="margin-left: 7px;">${shop.openTime } h -
							${shop.closeTime } h</span>
					</p>
					<!--product-details__p  -->
					<!-- btn-book-shop -->
					<div class="btn-book-shop">
						<button type="button" id="showDiv">
							<i class="fa-sharp fa-regular fa-clock"></i>Đặt bàn
						</button>
						<div id="myDiv">
							<span id="closeDiv"><i class="ti-close"
								style="font-size: 25px; font-weight: bold;"></i></span>
							<div class="card-book">
								<div class="card-body-book">
									<h5 class="card-title-book">Đặt bàn trước cho quán thôi!</h5>

									<!-- General Form Elements -->
									<form>
										<div class="row mb-3">
											<label for="inputText" class="col-sm-2 col-form-label">Họ
												và tên:</label>
											<div class="col-sm-4">
												<input type="text" class="form-control">
											</div>
											<label for="inputNumber" class="col-sm-2 col-form-label">Số
												điện thoại:</label>
											<div class="col-sm-4">
												<input type="number" class="form-control">
											</div>
										</div>
										<div class="row mb-3">
											<label for="inputDate" class="col-sm-2 col-form-label">Ngày
												đặt:</label>
											<div class="col-sm-4">
												<input type="date" class="form-control">
											</div>
											<label for="inputTime" class="col-sm-2 col-form-label">Thời
												gian:</label>
											<div class="col-sm-4">
												<input type="time" class="form-control">
											</div>
										</div>
										<div class="row mb-3">
											<label class="col-sm-2 col-form-label">Số người:</label>
											<div class="col-sm-4">
												<select class="form-select"
													aria-label="Default select example">
													<option value="1" selected>1 người</option>
													<option value="2">2 người</option>
													<option value="3">3 người</option>
													<option value="4">4 người</option>
													<option value="5">5 người</option>
													<option value="6">6 người</option>
													<option value="7">7 người</option>
													<option value="8">8 người</option>
													<option value="9">9 người</option>
													<option value="10">10 người</option>
													<option value="11">11người</option>
													<option value="12">12 người</option>
													<option value="13">13 người</option>
													<option value="14">14 người</option>
													<option value="15">15 người</option>
												</select>
											</div>
											<label class="col-sm-2 col-form-label">Bàn:</label>
											<div class="col-sm-4">
												<select class="form-select"
													aria-label="Default select example">

													<option value="1" selected>1 bàn</option>
													<option value="2">2 bàn</option>
													<option value="3">3 bàn</option>
													<option value="4">4 bàn</option>
													<option value="5">5 bàn</option>
												</select>
											</div>
										</div>
										<div class="row mb-3">
											<label for="inputPassword" class="col-sm-2 col-form-label">Ghi
												chú:</label>
											<div class="col-sm-10">
												<input type="text" class="form-control"
													style="height: 50px;"
													placeholder="Ghi chú cho quán ăn, đầu bếp,...">
											</div>
										</div>


										<div class="row mb-3">
											<div class="col-sm-3" style="margin: 12px auto;">
												<button type="submit" class="btn btn-primary-book">Đặt
													bàn ngay</button>
											</div>
										</div>

									</form>
									<!-- End General Form Elements -->

								</div>
							</div>

						</div>
					</div>
					<!-- /btn-book-shop -->
					<!-- product-details__sale -->
					<div class="product-details__sale sale">
						<i class="ti-tag"></i>
						<p>${shop.descriptionShop }</p>
					</div>
					<div class="product-details__sale sale">
						<i class="ti-tag"></i>
						<p>Giảm 5.000₫ phí giao hàng khi đặt đơn tối thiểu 150.000₫</p>
					</div>
					<!-- /product-details__sale -->
					<!-- product-details__time -->
					<div class="product-details__time">
						<div class="product-details__select">
							<i class="ti-clipboard"></i>
							<div class="select-time">
								<select>
									<option value="0">Ngày giao hàng: Hôm nay</option>
									<option value="1">Hôm nay</option>
									<option value="2">Ngày mai</option>
									<option value="3">Ngày kia</option>
								</select>
							</div>
						</div>
						<div class="product-details__select">
							<i class="ti-time"></i>
							<div class="select-time">
								<select>
									<option value="0">8:00 - 8:30</option>
									<option value="1">8:30 - 9:00</option>
									<option value="2">9:00 - 9:30</option>
									<option value="3">9:30 - 10:00</option>
									<option value="4">10:00 - 10:30</option>
									<option value="5">10:30 - 11:00</option>
									<option value="6">11:00 - 12:00</option>
									<option value="7">12:00 - 12:30</option>
									<option value="8">12:00 - 13:00</option>
									<option value="9">17:00 - 17:30</option>
									<option value="10">17:30 - 18:00</option>
									<option value="11">18:00 - 19:00</option>
									<option value="12">19:00 - 20:00</option>

								</select>
							</div>
						</div>
					</div>
					<!-- /product-details__time -->
				</div>
				<!-- /product-details -->
				<!-- wrapper-imgShop -->
				<div class="wrapper-imgShop">
					<div class="slideshow-container" style="height: 412px !important;">
						<div class="mySlides ">
							<img src="${base }/upload/${shop.avatar}" style="width: 100%">
							<div class="text" style="color: var(- -violet-color);">Hình
								ảnh nhà hàng</div>
						</div>
						<c:forEach items="${shop.shopImages }" var="shopImage">>				
							<div class="mySlides ">
								<img src="${base }/upload/${shopImage.path}" style="width: 100%">
								<div class="text">Bên trong quán</div>
							</div>
						</c:forEach>

						<a class="prev" onclick="plusSlides(-1)">❮</a> <a class="next"
							onclick="plusSlides(1)">❯</a>

					</div>
					<br>
					<div class="point-event">
						<span class="dot" onclick="currentSlide(1)"></span> <span
							class="dot" onclick="currentSlide(2)"></span> <span class="dot"
							onclick="currentSlide(3)"></span>
					</div>
				</div>
				<!-- /wrapper-imgShop -->
			</div>
			<!--/wrapper-product-imgShop-->
		</div>
		<!-- /top__chitiet  -->
		<!-- product-details__menu -->
		<div id="product-details__menu">
			<ul class="product-details__menu--ul">
				<li><a href="#uuDai" class="acl">Ưu đãi hôm nay</a></li>
				<li><a href="#mon1" class="acl">Món chính</a></li>
				<li><a href="#mon2" class="acl">Món phụ</a></li>
				<li><a href="#mon3" class="acl">Món tráng miệng</a></li>
				<li><a href="#mon4" class="acl">Đồ uống</a></li>
			</ul>
		</div>
		<!-- /product-details__menu -->
		<!-- container__chitiet -->
		<div id="container__chitiet">
			<!-- layout-content__chitiet -->
			<div class="layout-content__chitiet">
				<div class="title-content title-content2">
					<h2>Ưu đãi hôm nay</h2>
					<div class="padding-title" id="uuDai"></div>
				</div>
				<!-- body-content__chitiet row -->
				<div class="body-content__chitiet row">
					<!-- body-content__item1 -->
					<c:forEach var="product" items="${shop.products }">
						<div id="js-buy-eat"
							class="body-content__item js-buy-eat col-xl-4 col-lg-4 col-md-12 col-sm-12 col-xs-12"
							onclick="addCart('${base}',${product.id }, '${product.title }', ${product.price },${product.priceSale }, '${product.avatar}')">
							<div class="body-content__item--img">
								<img src="${base}/upload/${product.avatar}" alt="ảnh món ăn">
							</div>
							<div class="body-content__item--main">

								<p style="font-weight: 600; font-size: 20px;">${product.title }</p>
								<div class="body-right__bottom">
									<span
										style="padding: 2px; line-height: 10px; font-size: 12px; font-weight: 500; color: #f38621; opacity: 1; background-color: #eecaa9;">Giá
										<!-- định dạng tiền tệ --> <fmt:setLocale value="vi_VN"
											scope="session" /> <fmt:formatNumber
											value="${product.price }" type="currency" />
									</span> <span
										style="margin-left: 7px; color: #b7b7b7; text-decoration: line-through;">
										<!-- định dạng tiền tệ --> <fmt:setLocale value="vi_VN"
											scope="session" /> <fmt:formatNumber
											value="${product.priceSale }" type="currency" />
									</span><br> <span
										style="font-size: 16px; font-weight: 500; margin: 5px 0px;">${product.shortDes }</span>
									<div class="icon--add">
										<img src="${base}/img/imgchitiet/icon-add.png" alt="">
									</div>
								</div>
							</div>
							<!-- 
							<a href="${base }/product/detail/${product.seo }"></a>					
							 -->

						</div>

					</c:forEach>
					<!--  /body-content__item1-->
					<!-- body-content__item1 -->
					<!-- 
					
					<div
						class="body-content__item js-buy-eat col-xl-4 col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="body-content__item--img">
							<img src="${base}/img/imgchitiet/img-item-comrangg.jpg" alt="">
						</div>
						<div class="body-content__item--main">

							<p style="font-weight: 600; font-size: 17px;">Cơm rang trứng
							</p>
							<div class="body-right__bottom">
								<span
									style="padding: 2px; line-height: 10px; font-size: 12px; font-weight: 500; color: #f38621; opacity: 1; background-color: #eecaa9;">Tiết
									kiệm 29.000₫</span><span
									style="margin-left: 7px; color: #b7b7b7; text-decoration: line-through;">45.000</span><br>
								<span
									style="font-size: 16px; font-weight: 500; margin: 5px 0px;">30.000</span>
								<div class="icon--add">
									<img src="${base}/img/imgchitiet/icon-add.png" alt="">
								</div>
							</div>
						</div>
					</div>
					 -->
					<!--  /body-content__item1-->
					<!-- body-content__item1 -->
					<!-- 
					
					<div
						class="body-content__item js-buy-eat col-xl-4 col-lg-6 col-md-12 col-sm-12 col-xs-12">
						<div class="body-content__item--img">
							<img src="${base}/img/imgchitiet/item3.png" alt="">
						</div>
						<div class="body-content__item--main">
							<p style="font-weight: 600; font-size: 17px;">Trà tắc khổng
								lồ siêu ngon</p>
							<div class="body-right__bottom">
								<span
									style="padding: 2px; line-height: 10px; font-size: 12px; font-weight: 500; color: #f38621; opacity: 1; background-color: #eecaa9;">Tiết
									kiệm 12.000₫</span><span
									style="margin-left: 7px; color: #b7b7b7; text-decoration: line-through;">45.000</span><br>
								<span
									style="font-size: 16px; font-weight: 500; margin: 5px 0px;">33.000</span>
								<div class="icon--add">
									<img src="${base}/img/imgchitiet/icon-add.png" alt="">
								</div>
							</div>
						</div>
					</div>
					 -->
					<!--  /body-content__item1-->

				</div>
				<!-- /body-content__chitiet row -->

				<div class="title-content title-content2">
					<div class="padding-title" id="mon1"></div>
					<h2>Món chính</h2>
				</div>
				<!-- body-content__chitiet row -->
				<div class="body-content__chitiet row">
					<!-- body-content__item1 -->
					<div
						class="body-content__item js-buy-eat col-xl-4 col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="body-content__item--img">
							<img src="${base}/img/imgchitiet/com-rang.jpg" alt="">
						</div>
						<div class="body-content__item--main">

							<p style="font-weight: 600; font-size: 17px;">Cơm rang thập
								Cẩm bò</p>
							<div class="body-right__bottom">
								<span
									style="padding: 2px; line-height: 10px; font-size: 12px; font-weight: 500; color: #f38621; opacity: 1; background-color: #eecaa9;">Tiết
									kiệm 12.000₫</span><span
									style="margin-left: 7px; color: #b7b7b7; text-decoration: line-through;">45.000</span><br>
								<span
									style="font-size: 16px; font-weight: 500; margin: 5px 0px;">33.000</span>
								<div class="icon--add">
									<img src="${base}/img/imgchitiet/icon-add.png" alt="">
								</div>
							</div>
						</div>
					</div>
					<!--  /body-content__item1-->
					<!-- body-content__item1 -->
					<div
						class="body-content__item js-buy-eat col-xl-4 col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="body-content__item--img">
							<img src="${base}/img/imgchitiet/img-item-comrang.jpg" alt="">
						</div>
						<div class="body-content__item--main">

							<p style="font-weight: 600; font-size: 17px;">Cơm rang gà
								nguyên đùi</p>
							<div class="body-right__bottom">
								<span
									style="padding: 2px; line-height: 10px; font-size: 12px; font-weight: 500; color: #f38621; opacity: 1; background-color: #eecaa9;">Tiết
									kiệm 29.000₫</span><span
									style="margin-left: 7px; color: #b7b7b7; text-decoration: line-through;">45.000</span><br>
								<span
									style="font-size: 16px; font-weight: 500; margin: 5px 0px;">30.000</span>
								<div class="icon--add">
									<img src="${base}/img/imgchitiet/icon-add.png" alt="">
								</div>
							</div>
						</div>
					</div>
					<!--  /body-content__item1-->
					<!-- body-content__item1 -->
					<div
						class="body-content__item js-buy-eat col-xl-4 col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="body-content__item--img">
							<img src="${base}/img/imgchitiet/com-ga-mot.jpg" alt="">
						</div>
						<div class="body-content__item--main">

							<p style="font-weight: 600; font-size: 17px;">Cơm rang gà sốt
								dưa</p>
							<div class="body-right__bottom">
								<span
									style="padding: 2px; line-height: 10px; font-size: 12px; font-weight: 500; color: #f38621; opacity: 1; background-color: #eecaa9;">Tiết
									kiệm 12.000₫</span><span
									style="margin-left: 7px; color: #b7b7b7; text-decoration: line-through;">45.000</span><br>
								<span
									style="font-size: 16px; font-weight: 500; margin: 5px 0px;">45.000</span>
								<div class="icon--add">
									<img src="${base}/img/imgchitiet/icon-add.png" alt="">
								</div>
							</div>
						</div>
					</div>
					<!--  /body-content__item1-->
				</div>
				<!-- /body-content__chitiet row -->
				<!-- body-content__chitiet row -->
				<div class="body-content__chitiet row">
					<!-- body-content__item1 -->
					<div
						class="body-content__item js-buy-eat col-xl-4 col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="body-content__item--img">
							<img src="${base}/img/imgchitiet/item7.png" alt="">
						</div>
						<div class="body-content__item--main">

							<p style="font-weight: 600; font-size: 17px;">Cơm rang dưa bò</p>
							<div class="body-right__bottom">
								<span
									style="padding: 2px; line-height: 10px; font-size: 12px; font-weight: 500; color: #f38621; opacity: 1; background-color: #eecaa9;">Tiết
									kiệm 12.000₫</span><span
									style="margin-left: 7px; color: #b7b7b7; text-decoration: line-through;">45.000</span><br>
								<span
									style="font-size: 16px; font-weight: 500; margin: 5px 0px;">33.000</span>
								<div class="icon--add">
									<img src="${base}/img/imgchitiet/icon-add.png" alt="">
								</div>
							</div>
						</div>
					</div>
					<!--  /body-content__item1-->
					<!-- body-content__item1 -->
					<div
						class="body-content__item js-buy-eat col-xl-4 col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="body-content__item--img">
							<img src="${base}/img/imgchitiet/item8.png" alt="">
						</div>
						<div class="body-content__item--main">

							<p style="font-weight: 600; font-size: 17px;">Cơm rang gà lóc
								xương</p>
							<div class="body-right__bottom">
								<span
									style="padding: 2px; line-height: 10px; font-size: 12px; font-weight: 500; color: #f38621; opacity: 1; background-color: #eecaa9;">Tiết
									kiệm 29.000₫</span><span
									style="margin-left: 7px; color: #b7b7b7; text-decoration: line-through;">45.000</span><br>
								<span
									style="font-size: 16px; font-weight: 500; margin: 5px 0px;">30.000</span>
								<div class="icon--add">
									<img src="${base}/img/imgchitiet/icon-add.png" alt="">
								</div>
							</div>
						</div>
					</div>
					<!--  /body-content__item1-->
					<!-- body-content__item1 -->
					<div
						class="body-content__item js-buy-eat col-xl-4 col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="body-content__item--img">
							<img src="${base}/img/imgchitiet/item9.png" alt="">
						</div>
						<div class="body-content__item--main">

							<p style="font-weight: 600; font-size: 17px;">Cơm rang cải bò</p>
							<div class="body-right__bottom">
								<span
									style="padding: 2px; line-height: 10px; font-size: 12px; font-weight: 500; color: #f38621; opacity: 1; background-color: #eecaa9;">Tiết
									kiệm 12.000₫</span><span
									style="margin-left: 7px; color: #b7b7b7; text-decoration: line-through;">45.000</span><br>
								<span
									style="font-size: 16px; font-weight: 500; margin: 5px 0px;">33.000</span>
								<div class="icon--add">
									<img src="${base}/img/imgchitiet/icon-add.png" alt="">
								</div>
							</div>
						</div>
					</div>
					<!--  /body-content__item1-->
				</div>
				<!-- /body-content__chitiet row -->
				<!-- body-content__chitiet row -->
				<div class="body-content__chitiet row">
					<!-- body-content__item1 -->
					<div
						class="body-content__item js-buy-eat col-xl-4 col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="body-content__item--img">
							<img src="${base}/img/imgchitiet/item10.png" alt="">
						</div>
						<div class="body-content__item--main">

							<p style="font-weight: 600; font-size: 17px;">Cơm trắng gà
								lóc xương</p>
							<div class="body-right__bottom">
								<span
									style="padding: 2px; line-height: 10px; font-size: 12px; font-weight: 500; color: #f38621; opacity: 1; background-color: #eecaa9;">Tiết
									kiệm 12.000₫</span><span
									style="margin-left: 7px; color: #b7b7b7; text-decoration: line-through;">45.000</span><br>
								<span
									style="font-size: 16px; font-weight: 500; margin: 5px 0px;">33.000</span>
								<div class="icon--add">
									<img src="${base}/img/imgchitiet/icon-add.png" alt="">
								</div>
							</div>
						</div>
					</div>
					<!--  /body-content__item1-->
					<!-- body-content__item1 -->
					<div
						class="body-content__item js-buy-eat col-xl-4 col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="body-content__item--img">
							<img src="${base}/img/imgchitiet/item11.png" alt="">
						</div>
						<div class="body-content__item--main">

							<p style="font-weight: 600; font-size: 17px;">Cơm trắng cải
								bò</p>
							<div class="body-right__bottom">
								<span
									style="padding: 2px; line-height: 10px; font-size: 12px; font-weight: 500; color: #f38621; opacity: 1; background-color: #eecaa9;">Tiết
									kiệm 29.000₫</span><span
									style="margin-left: 7px; color: #b7b7b7; text-decoration: line-through;">45.000</span><br>
								<span
									style="font-size: 16px; font-weight: 500; margin: 5px 0px;">30.000</span>
								<div class="icon--add">
									<img src="${base}/img/imgchitiet/icon-add.png" alt="">
								</div>
							</div>
						</div>
					</div>
					<!--  /body-content__item1-->
					<!-- body-content__item1 -->
					<div
						class="body-content__item js-buy-eat col-xl-4 col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="body-content__item--img">
							<img src="${base}/img/imgchitiet/com-trang-bo.png" alt="">
						</div>
						<div class="body-content__item--main">

							<p style="font-weight: 600; font-size: 17px;">Cơm trắng dưa
								bò</p>
							<div class="body-right__bottom">
								<span
									style="padding: 2px; line-height: 10px; font-size: 12px; font-weight: 500; color: #f38621; opacity: 1; background-color: #eecaa9;">Tiết
									kiệm 12.000₫</span><span
									style="margin-left: 7px; color: #b7b7b7; text-decoration: line-through;">45.000</span><br>
								<span
									style="font-size: 16px; font-weight: 500; margin: 5px 0px;">33.000</span>
								<div class="icon--add">
									<img src="${base}/img/imgchitiet/icon-add.png" alt="">
								</div>
							</div>
						</div>
					</div>
					<!--  /body-content__item1-->
				</div>
				<!-- /body-content__chitiet row -->
				<!-- title-content title-content2 -->
				<div class="title-content title-content2">
					<div class="padding-title" id="mon2"></div>
					<h2>Món phụ</h2>
				</div>
				<!-- /title-content title-content2 -->
				<!-- body-content__chitiet row -->
				<div class="body-content__chitiet row">
					<!-- body-content__item1 -->
					<div
						class="body-content__item js-buy-eat col-xl-4 col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="body-content__item--img">
							<img src="${base}/img/imgchitiet/img-buncha.jpg" alt="">
						</div>
						<div class="body-content__item--main">

							<p style="font-weight: 600; font-size: 17px;">Bún chả thịt
								nướng</p>
							<div class="body-right__bottom">
								<span
									style="padding: 2px; line-height: 10px; font-size: 12px; font-weight: 500; color: #f38621; opacity: 1; background-color: #eecaa9;">Tiết
									kiệm 12.000₫</span><span
									style="margin-left: 7px; color: #b7b7b7; text-decoration: line-through;">45.000</span><br>
								<span
									style="font-size: 16px; font-weight: 500; margin: 5px 0px;">40.000</span>
								<div class="icon--add">
									<img src="${base}/img/imgchitiet/icon-add.png" alt="">
								</div>
							</div>
						</div>
					</div>
					<!--  /body-content__item1-->
					<!-- body-content__item1 -->
					<div
						class="body-content__item js-buy-eat col-xl-4 col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="body-content__item--img">
							<img src="${base}/img/imgchitiet/img-buncha-hai.jpg" alt="">
						</div>
						<div class="body-content__item--main">

							<p style="font-weight: 600; font-size: 17px;">Bún chả Hà
								thành thịt viên</p>
							<div class="body-right__bottom">
								<span
									style="padding: 2px; line-height: 10px; font-size: 12px; font-weight: 500; color: #f38621; opacity: 1; background-color: #eecaa9;">Tiết
									kiệm 29.000₫</span><span
									style="margin-left: 7px; color: #b7b7b7; text-decoration: line-through;">45.000</span><br>
								<span
									style="font-size: 16px; font-weight: 500; margin: 5px 0px;">30.000</span>
								<div class="icon--add">
									<img src="${base}/img/imgchitiet/icon-add.png" alt="">
								</div>
							</div>
						</div>
					</div>
					<!--  /body-content__item1-->
					<!-- body-content__item1 -->
					<div
						class="body-content__item js-buy-eat col-xl-4 col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="body-content__item--img">
							<img src="${base}/img/imgchitiet/bun-cha-ba.jpg" alt="">
						</div>
						<div class="body-content__item--main">

							<p style="font-weight: 600; font-size: 17px;">Bún chả Hà
								thành</p>
							<div class="body-right__bottom">
								<span
									style="padding: 2px; line-height: 10px; font-size: 12px; font-weight: 500; color: #f38621; opacity: 1; background-color: #eecaa9;">Tiết
									kiệm 12.000₫</span><span
									style="margin-left: 7px; color: #b7b7b7; text-decoration: line-through;">55.000</span><br>
								<span
									style="font-size: 16px; font-weight: 500; margin: 5px 0px;">33.000</span>
								<div class="icon--add">
									<img src="${base}/img/imgchitiet/icon-add.png" alt="">
								</div>
							</div>
						</div>
					</div>
					<!--  /body-content__item1-->
				</div>
				<!-- /body-content__chitiet row -->
				<!-- body-content__chitiet row -->
				<div class="body-content__chitiet row">
					<!-- body-content__item1 -->
					<div
						class="body-content__item js-buy-eat col-xl-4 col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="body-content__item--img">
							<img src="${base}/img/imgchitiet/bun-cha-bon.png" alt="">
						</div>
						<div class="body-content__item--main">


							<div class="body-content__item--main"></div>
							<p style="font-weight: 600; font-size: 17px;">Bún chả Hà
								thành</p>
							<div class="body-right__bottom">
								<span
									style="padding: 2px; line-height: 10px; font-size: 12px; font-weight: 500; color: #f38621; opacity: 1; background-color: #eecaa9;">Tiết
									kiệm 12.000₫</span><span
									style="margin-left: 7px; color: #b7b7b7; text-decoration: line-through;">45.000</span><br>
								<span
									style="font-size: 16px; font-weight: 500; margin: 5px 0px;">40.000</span>
								<div class="icon--add">
									<img src="${base}/img/imgchitiet/icon-add.png" alt="">
								</div>
							</div>
						</div>
					</div>
					<!--  /body-content__item1-->
				</div>
				<!-- /body-content__chitiet row -->
				<!-- title-content title-content2 -->
				<div class="title-content title-content2">
					<div class="padding-title" id="mon3"></div>
					<h2>Món tráng miệng</h2>
				</div>
				<!-- /title-content title-content2 -->
				<!-- body-content__chitiet row -->
				<div class="body-content__chitiet row">
					<!-- body-content__item1 -->
					<div
						class="body-content__item js-buy-eat col-xl-4 col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="body-content__item--img">
							<img src="${base}/img/imgchitiet/qua1.png" alt="">
						</div>
						<div class="body-content__item--main">

							<p style="font-weight: 600; font-size: 17px;">Hoa quả tráng
								miệng</p>
							<div class="body-right__bottom">
								<span
									style="padding: 2px; line-height: 10px; font-size: 12px; font-weight: 500; color: #f38621; opacity: 1; background-color: #eecaa9;">Tiết
									kiệm 12.000₫</span><span
									style="margin-left: 7px; color: #b7b7b7; text-decoration: line-through;">45.000</span><br>
								<span
									style="font-size: 16px; font-weight: 500; margin: 5px 0px;">40.000</span>
								<div class="icon--add">
									<img src="${base}/img/imgchitiet/icon-add.png" alt="">
								</div>
							</div>
						</div>

					</div>
					<!--  /body-content__item1-->
				</div>
				<!-- /body-content__chitiet row -->
				<!-- title-content title-content2 -->
				<div class="title-content title-content2">
					<div class="padding-title" id="mon4"></div>
					<h2>Đồ uống</h2>
				</div>
				<!-- /title-content title-content2 -->
				<!-- body-content__chitiet row -->
				<div class="body-content__chitiet row">
					<!-- body-content__item1 -->
					<div
						class="body-content__item js-buy-eat col-xl-4 col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="body-content__item--img">
							<img src="${base}/img/imgchitiet/nuoc1.jpg" alt="">
						</div>
						<div class="body-content__item--main">

							<p style="font-weight: 600; font-size: 17px;">Coca chai nhựa</p>
							<div class="body-right__bottom">
								<span
									style="padding: 2px; line-height: 10px; font-size: 12px; font-weight: 500; color: #f38621; opacity: 1; background-color: #eecaa9;">Tiết
									kiệm 12.000₫</span><span
									style="margin-left: 7px; color: #b7b7b7; text-decoration: line-through;">45.000</span><br>
								<span
									style="font-size: 16px; font-weight: 500; margin: 5px 0px;">33.000</span>
								<div class="icon--add">
									<img src="${base}/img/imgchitiet/icon-add.png" alt="">
								</div>
							</div>
						</div>

					</div>
					<!--  /body-content__item1-->
					<!-- body-content__item1 -->
					<div
						class="body-content__item js-buy-eat col-xl-4 col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="body-content__item--img">
							<img src="${base}/img/imgchitiet/nuoc2.jpg" alt="">
						</div>
						<div class="body-content__item--main">

							<p style="font-weight: 600; font-size: 17px;">Caca lon</p>
							<div class="body-right__bottom">
								<span
									style="padding: 2px; line-height: 10px; font-size: 12px; font-weight: 500; color: #f38621; opacity: 1; background-color: #eecaa9;">Tiết
									kiệm 29.000₫</span><span
									style="margin-left: 7px; color: #b7b7b7; text-decoration: line-through;">45.000</span><br>
								<span
									style="font-size: 16px; font-weight: 500; margin: 5px 0px;">30.000</span>
								<div class="icon--add">
									<img src="${base}/img/imgchitiet/icon-add.png" alt="">
								</div>
							</div>
						</div>

					</div>
					<!--  /body-content__item1-->
					<!-- body-content__item1 -->
					<div
						class="body-content__item js-buy-eat col-xl-4 col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="body-content__item--img">
							<img src="${base}/img/imgchitiet/nuoc3.png" alt="">
						</div>
						<div class="body-content__item--main">

							<p style="font-weight: 600; font-size: 17px;">Bia</p>
							<div class="body-right__bottom">
								<span
									style="padding: 2px; line-height: 10px; font-size: 12px; font-weight: 500; color: #f38621; opacity: 1; background-color: #eecaa9;">Tiết
									kiệm 12.000₫</span><span
									style="margin-left: 7px; color: #b7b7b7; text-decoration: line-through;">45.000</span><br>
								<span
									style="font-size: 16px; font-weight: 500; margin: 5px 0px;">33.000</span>
								<div class="icon--add">
									<img src="${base}/img/imgchitiet/icon-add.png" alt="">
								</div>
							</div>
						</div>

					</div>
					<!--  /body-content__item1-->
				</div>
				<!-- /body-content__chitiet row -->
				<!-- body-content__chitiet row -->
				<div class="body-content__chitiet row">
					<!-- body-content__item1 -->
					<div
						class="body-content__item js-buy-eat col-xl-4 col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="body-content__item--img">
							<img src="${base}/img/imgchitiet/item3.png" alt="">
						</div>
						<div class="body-content__item--main">

							<p style="font-weight: 600; font-size: 17px;">Trà tắc khổng
								lồ</p>
							<div class="body-right__bottom">
								<span
									style="padding: 2px; line-height: 10px; font-size: 12px; font-weight: 500; color: #f38621; opacity: 1; background-color: #eecaa9;">Tiết
									kiệm 12.000₫</span><span
									style="margin-left: 7px; color: #b7b7b7; text-decoration: line-through;">45.000</span><br>
								<span
									style="font-size: 16px; font-weight: 500; margin: 5px 0px;">40.000</span>
								<div class="icon--add">
									<img src="${base}/img/imgchitiet/icon-add.png" alt="">
								</div>
							</div>
						</div>
					</div>
					<!--  /body-content__item1-->
				</div>
				<!-- /body-content__chitiet row -->
			</div>
			<!-- /layout-content__chitiet -->
			<!-- LienHe -->
			<div id="lienhe">
				<span>Chúng tôi luôn cố gắng cập nhật thông tin chính xác
					nhất.<a href="">Hãy báo với chúng tôi</a> nếu bạn thấy bất kỳ thông
					tin không chính xác nào
				</span>
			</div>
			<!-- /LienHe -->
		</div>
		<!-- /container__chitiet -->

		<!-- footer -->
		<jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
		<!-- /footer -->

		<!-- modal-buy-->

		<div class="modal-buy" id="modal-buy">
			<div class="modal-container js-modal-container"
				id="js-modal-container">
				<div class="header__modal">
					<button class="js-modal-close" id="js-modal-close" type="button">
						<i class="ti-close"></i>
					</button>
				</div>
				<div class="body__modal">
					<div class="firstBody">
						<div class="firstBody__img">
							<img id="imgCartProduct" src="" alt="">
						</div>
						<div class="firstBody__title">
							<p id="nameProduct"></p>
							<span style="margin-right: 10px;">Giá: </span> <span
								class="sp-body-f"> </span> <span class="sp-body"> </span>
						</div>
					</div>
					<div class="secondBody">
						<span class="sp-secondBody-f">Topping ăn thêm</span><span
							class="sp-secondBody-c">Optional, max 2</span>
					</div>
					<div class="wrapper-row-modal">
						<label class="rowBody-modal"> <input type="checkbox">
							<span class="checkmark-modal"></span>
						</label>
						<div class="wrapper-text-modal">
							<span class="text-modal-1">chả</span> <span class="text-modal-2">7.000</span>
						</div>
					</div>
					<div class="line-gray"></div>
					<div class="wrapper-row-modal">
						<label class="rowBody-modal"> <input type="checkbox">
							<span class="checkmark-modal"></span>
						</label>
						<div class="wrapper-text-modal">
							<span class="text-modal-1">Pate</span> <span class="text-modal-2">10.000</span>
						</div>
					</div>
					<div class="line-gray"></div>
					<div class="wrapper-row-modal">
						<label class="rowBody-modal"> <input type="checkbox">
							<span class="checkmark-modal"></span>
						</label>
						<div class="wrapper-text-modal">
							<span class="text-modal-1">thịt nướng</span> <span
								class="text-modal-2">15.000</span>
						</div>
					</div>
					<div class="line-gray"></div>
					<div class="wrapper-row-modal">
						<label class="rowBody-modal"> <input type="checkbox">
							<span class="checkmark-modal"></span>
						</label>
						<div class="wrapper-text-modal">
							<span class="text-modal-1">trứng</span> <span
								class="text-modal-2">5.000</span>
						</div>
					</div>
					<!-- thirdBody -->
					<div class="secondBody">
						<span class="sp-secondBody-f">Topping</span><span
							class="sp-secondBody-c">Optional, max 5</span>
					</div>
					<div class="wrapper-row-modal">
						<label class="rowBody-modal"> <input type="checkbox">
							<span class="checkmark-modal"></span>
						</label>
						<div class="wrapper-text-modal">
							<span class="text-modal-1">Không sốt</span> <span
								class="text-modal-2">0</span>
						</div>
					</div>
					<div class="line-gray"></div>
					<div class="wrapper-row-modal">
						<label class="rowBody-modal"> <input type="checkbox">
							<span class="checkmark-modal"></span>
						</label>
						<div class="wrapper-text-modal">
							<span class="text-modal-1">Không nộm</span> <span
								class="text-modal-2">0</span>
						</div>
					</div>
					<div class="line-gray"></div>
					<div class="wrapper-row-modal">
						<label class="rowBody-modal"> <input type="checkbox">
							<span class="checkmark-modal"></span>
						</label>
						<div class="wrapper-text-modal">
							<span class="text-modal-1">Không dưa chuột</span> <span
								class="text-modal-2">0</span>
						</div>
					</div>
					<div class="line-gray"></div>
					<div class="wrapper-row-modal">
						<label class="rowBody-modal"> <input type="checkbox">
							<span class="checkmark-modal"></span>
						</label>
						<div class="wrapper-text-modal">
							<span class="text-modal-1">Không rau mùi</span> <span
								class="text-modal-2">0</span>
						</div>
					</div>
					<div class="line-gray"></div>
					<div class="wrapper-row-modal">
						<label class="rowBody-modal"> <input type="checkbox">
							<span class="checkmark-modal"></span>
						</label>
						<div class="wrapper-text-modal">
							<span class="text-modal-1">Không ớt</span> <span
								class="text-modal-2">0</span>
						</div>
					</div>
					<!-- /thirdBody -->
					<!-- four -->
					<div class="secondBody">
						<span class="sp-secondBody-f">Ghi chú cho đầu bếp</span><span
							class="sp-secondBody-c">Optional</span>
					</div>
					<div class="wrapper-input-modal">
						<input type="text" name="" id=""
							placeholder="Bạn có muốn ghi chú gì thêm cho đầu bếp không?">
					</div>
					<!-- /four -->
				</div>

				<div class="footer__modal">
					<!-- 
					<div class="buttons_added">
						<input onclick="handleMinus()" class="minus is-form" type="button"
							value="-" style="width: 50px;"> <input
							aria-label="quantity" id="amount" class="input-qty" max="50"
							min="0" name="" type="number" value="1" style="width: 100px;">
						<input onclick="handlePlus()" class="plus is-form" type="button"
							value="+" style="width: 50px;">
					</div>
					
					 -->
					<c:choose>
						<c:when test="${isLogined }">
							<button type="button" class="btn-add-modal" id="btn-add-modal"
								onclick="">
								<p>Thêm vào giỏ hàng</p>

							</button>
						</c:when>
						<c:otherwise>
							<button type="button" class="btn-add-modal">
								<a href="${base }/login">Thêm vào giỏ hàng</a>
							</button>

						</c:otherwise>
					</c:choose>
				</div>

			</div>
		</div>
		<!-- /modal-buy
		<!-- /all -->
	</div>

	<!-- 
		<script>
        let amountElement = document.getElementById('amount');
        let amount = amountElement.value;
        
        let render = (amount) => {
            amountElement.value = amount;
        }
            //xử lý handlePlus
        let handlePlus = () =>{
            amount++;
            render(amount);
        }
        //xử lý handleMinus
        let handleMinus = () =>{
            if(amount>1){
                amount--;
                render(amount);
            }
        }
    </script>
	 -->

	<script>
		//biến bao cả item
        const  buyBtns = document.querySelectorAll('.js-buy-eat')
        //biến của giao diện js giỏ hàng
        const modal = document.getElementById("modal-buy")
        const modalContainer = document.getElementById("js-modal-container")
        const  modalClose = document.getElementById("js-modal-close")
        //biến của nút xóa x
        
        
        function showBuyEat(){
            modal.classList.add('open')
        	
        }
        function hideBuyEat(){
            modal.classList.remove('open')
        }
        for(const buyBtn of buyBtns){
            buyBtn.addEventListener('click', showBuyEat)
        }
        
        modal.addEventListener('click', hideBuyEat)
        modalClose.addEventListener('click', hideBuyEat)
        
        modalContainer.addEventListener('click', function(event){
        	event.stopPropagation()
        })

    </script>
	<script>
        let slideIndex = 1;
        showSlides(slideIndex);
        
        function plusSlides(n) {
          showSlides(slideIndex += n);
        }
        
        function currentSlide(n) {
          showSlides(slideIndex = n);
        }
        
        function showSlides(n) {
          let i;
          let slides = document.getElementsByClassName("mySlides");
          let dots = document.getElementsByClassName("dot");
          if (n > slides.length) {slideIndex = 1}    
          if (n < 1) {slideIndex = slides.length}
          for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";  
          }
          for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
          }
          slides[slideIndex-1].style.display = "block";  
          dots[slideIndex-1].className += " active";
        }
        </script>
	<script type="text/javascript">
        	function addCart(_baseUrl,_id, _title, _price, _priceSale, _avatar){
        		// tạo javascript object để binding với data bên phía controller  
        		var requestBody = {
        				id: _id,
        				title: _title,
        				price: _price,
        				priceSale: _priceSale,
        				avatar: _avatar,
        		};
        		var currentProduct = {
        				id: _id
        		}
        		// $ === jQuery
        		// json == javascript object
        		jQuery.ajax({
        			url: _baseUrl + "/ajax/addCart", 	   //->request mapping định nghĩa bên controller
        			type: "post",					   //-> method type của Request Mapping	
        			contentType: "application/json",   //-> nội dung gửi lên dạng json <=> javascript object
        			data: JSON.stringify(requestBody), //-> chuyển 1 javascript object thành string json
        		
        			dataType: "json", 				   // kiểu dữ liệu trả về từ Controller
        			success: function(jsonResult) {    // gọi ajax thành công
        				$('#nameProduct').text(jsonResult.title);
        				$('#imgCartProduct').attr("src", "${base}/upload/"+jsonResult.avatar);
        				$('.sp-body-f').text(jsonResult.price+"đ");
        				$('.sp-body').text(jsonResult.priceSale+"đ");
        				var onclickString = "AddToCart('${base}',"+jsonResult.id+", 1)";
        				$('#btn-add-modal').attr("onclick", onclickString);
        				//location.reload();
        			},
        			error: function(jqXhr, textStatus, errorMessage) { // gọi ajax thất bại
        				alert("error");
        			}
        		});
        	}
        </script>
		<script type="text/javascript">
				$(document).ready(function() {
					  $("#showDiv").click(function() {
					    $("#myDiv").toggle(500);
					  });
					  $("#closeDiv").click(function() {
						    $("#myDiv").toggle(300);
						  });
					});
		</script>
</body>
</html>