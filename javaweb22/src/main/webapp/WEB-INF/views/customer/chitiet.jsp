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
<script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
<link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet" />
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
						<a href="#">Ẩm thực</a> <i class="ti-angle-right"></i> <a href="#">Bún
							hải sải - Mỹ Đình</a>
					</nav>
					<!-- /nav__danhmuc -->
					<!-- h2 -->
					<h2 style="color: var(--white-color);">Bún hải sải - Mỹ Đình</h2>
					<!-- /h2 -->
					<!--product-details__p  -->
					<p>Cơm</p>
					<p>
						<span style="color: var(- -violet-color);">Địa chỉ: </span>số 134
						Nguyên Xá, Minh Khai, Bắc Từ Liêm, Hà Nội
					</p>
					<p>
						<i class="fa-solid fa-star"
							style="color: yellow; margin-right: 5px;"></i><span
							style="color: #fff;">4.5</span><i class="fa-solid fa-clock"
							style="color: #18e13e; margin-right: 5px; margin-left: 30px;"></i><span
							style="color: #fff;">15 phút</span> <i
							class="fa-sharp fa-solid fa-location-dot"
							style="color: #e11818; margin-right: 5px; margin-left: 30px;"></i><span
							style="color: #fff;">3km</span>
					</p>
					<p>
						<span style="font-weight: bold;">Giờ mở cửa: </span><span
							style="margin-left: 54px;">07:00-22:30</span>
					</p>
					<!--product-details__p  -->
					<!-- btn-book-shop -->
					<div class="btn-book-shop">
						<button type="button">
							<i class="fa-sharp fa-regular fa-clock"></i>Đặt bàn
						</button>
					</div>
					<!-- /btn-book-shop -->
					<!-- product-details__sale -->
					<div class="product-details__sale sale">
						<i class="ti-tag"></i><span>Tặng ngay trà tắc thơm ngon khi
							đặt đơn tối thiểu 150.000₫</span>
					</div>
					<div class="product-details__sale sale">
						<i class="ti-tag"></i><span>Giảm 5.000₫ phí giao hàng khi
							đặt đơn tối thiểu 150.000₫</span> <span
							style="margin-left: 40px; color: rgb(63, 63, 151); font-weight: bold;">Xem
							thêm 5</span>
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
									<option value="2">Tue,22 Nov</option>
									<option value="3">Web,23 nov</option>
								</select>
							</div>
						</div>
						<div class="product-details__select">
							<i class="ti-time"></i>
							<div class="select-time">
								<select>
									<option value="0">8:00 - 8:15</option>
									<option value="1">8:15 - 8:30</option>
									<option value="2">8:30 - 8:45</option>
									<option value="3">8:45 - 9:00</option>
									<option value="4">9:00 - 9:15</option>
									<option value="5">9:15 - 9:30</option>
									<option value="6">9:30 - 9:45</option>
									<option value="7">9:45 - 10:00</option>
									<option value="8">11:00 - 12:00</option>
									<option value="9">12:00 - 13:00</option>
									<option value="10">18:00 - 19:00</option>
									<option value="11">18:15 - 19:00</option>
									<option value="12">18:45 - 19:00</option>

								</select>
							</div>
						</div>
					</div>
					<!-- /product-details__time -->
				</div>
				<!-- /product-details -->
				<!-- wrapper-imgShop -->
				<div class="wrapper-imgShop">
					<div class="slideshow-container">
						<div class="mySlides ">
							<div class="numbertext">1 / 3</div>
							<img src="${base }/img/imgchitiet/img-nhahang1.jpg"
								style="width: 100%">
							<div class="text">Hình ảnh nhà hàng 1</div>
						</div>

						<div class="mySlides ">
							<div class="numbertext">2 / 3</div>
							<img src="${base }/img/imgchitiet/img-nhahang2.png"
								style="width: 100%">
							<div class="text">Hình ảnh nhà hàng 2</div>
						</div>

						<div class="mySlides ">
							<div class="numbertext">3 / 3</div>
							<img src="${base }/img/imgchitiet/img-nhahang3.jpg"
								style="width: 100%">
							<div class="text">Hình ảnh nhà hàng 3</div>
						</div>

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
				<li onclick="myFunction()"><a href="#uuDai" class="acl">Ưu
						đãi hôm nay</a></li>
				<li onclick="myFunction2()"><a href="#mon1" class="acl">Cơm
						rang</a></li>
				<li onclick="myFunction3()"><a href="#mon2" class="acl">Bún
						chả</a></li>
				<li onclick="myFunction4()"><a href="#mon3" class="acl">Hoa
						quả tráng miệng</a></li>
				<li onclick="myFunction5()"><a href="#mon4" class="acl">Đồ
						uống</a></li>
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
					<c:forEach var="product" items="${products }">
						
						<div
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
							 <a href="#"></a>
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
					<h2>Cơm rang</h2>
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
					<h2>Bún Chả</h2>
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
					<h2>Hoa quả tráng miệng</h2>
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

		<!-- modal-buy		
			<c:forEach var="product" items="${products }">
			-->
		<div class="modal-buy">
			<div class="modal-container js-modal-container">
				<div class="header__modal">
					<button class="js-modal-close" type="button">
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
						<span class="sp-secondBody-f">Special instructions</span><span
							class="sp-secondBody-c">Optional</span>
					</div>
					<div class="wrapper-input-modal">
						<input type="text" name="" id=""
							placeholder="E.g. No onions please">
					</div>
					<!-- /four -->
				</div>
			
				<div class="footer__modal">
					<div class="buttons_added">
						<input onclick="handleMinus()" class="minus is-form" type="button"
							value="-" style="width: 50px;"> <input
							aria-label="quantity" id="amount" class="input-qty" max="50"
							min="0" name="" type="number" value="1" style="width: 100px;">
						<input onclick="handlePlus()" class="plus is-form" type="button"
							value="+" style="width: 50px;">
					</div>
					<button type="button" class="btn-add-modal" id="btn-add-modal"
						onclick="">
						<p>Add to Basket</p>

					</button>
				</div>
			
			</div>
		</div>
		<!-- /modal-buy
			</c:forEach>
			
			 -->

		<!-- modal-cart -->
		<!--  
			
			<div class="modal-cart">
				<div
					class="modal-container modal-container-cart js-modal-container-cart">
					<div class="header__modal header__modal-cart">
						<button class="js-modal-close-cart" type="button">
							<i class="ti-close"></i>
						</button>
						<p>Giỏ đồ ăn</p>
					</div>
					<div class="body__modal">
						<div class="firstBody">
							<div class="firstBody__title">
								<p>Cơm rang gà sốt Mỹ Đình</p>
							</div>
						</div>
						<div class="secondBody"></div>
						<div class="wrapper-row-modal wrapper-row-modal-cart">
							<div class="buttons_added buttons_added-cart">
								<input onclick="handleMinus()"
									class="minus is-form is-form-cart" type="button" value="-">
								<input aria-label="quantity" id="amount"
									class="input-qty input-qty-cart" max="50" min="0" name=""
									type="number" value="1" style="width: 50px;"> <input
									onclick="handlePlus()" class="plus is-form is-form-cart"
									type="button" value="+">
							</div>
							<div class="firstBody__img">
								<img src="${base}/img/imgchitiet/item1.png" alt="">
							</div>
							<div class="firstBody__title firstBody__title-cart">
								<p>Cơm rang thập cẩm bò</p>
								<span class="sp-body-f">33.000</span><span class="sp-body">45.000</span><br>
								<span>chả, Pate, Không dưa chuột, Không rau mùi</span>
							</div>
						</div>
						<div class="line-gray"></div>
						<div class="wrapper-row-modal wrapper-row-modal-cart">
							<div class="buttons_added buttons_added-cart">
								<input onclick="handleMinus()"
									class="minus is-form is-form-cart" type="button" value="-">
								<input aria-label="quantity" id="amount"
									class="input-qty input-qty-cart" max="50" min="0" name=""
									type="number" value="1" style="width: 50px;"> <input
									onclick="handlePlus()" class="plus is-form is-form-cart"
									type="button" value="+">
							</div>
							<div class="firstBody__img">
								<img src="${base}/img/imgchitiet/item2.png" alt="">
							</div>
							<div class="firstBody__title firstBody__title-cart">
								<p>Cơm rang thập cẩm bò</p>
								<span class="sp-body-f">33.000</span><span class="sp-body">45.000</span><br>
								<span>chả, Pate, Không dưa chuột, Không rau mùi</span>
							</div>
						</div>
						<div class="line-gray"></div>
						<div class="wrapper-row-modal wrapper-row-modal-cart">
							<div class="buttons_added buttons_added-cart">
								<input onclick="handleMinus()"
									class="minus is-form is-form-cart" type="button" value="-">
								<input aria-label="quantity" id="amount"
									class="input-qty input-qty-cart" max="50" min="0" name=""
									type="number" value="1" style="width: 50px;"> <input
									onclick="handlePlus()" class="plus is-form is-form-cart"
									type="button" value="+">
							</div>
							<div class="firstBody__img">
								<img src="${base}/img/imgchitiet/item3.png" alt="">
							</div>
							<div class="firstBody__title firstBody__title-cart">
								<p>Cơm rang thập cẩm bò</p>
								<span class="sp-body-f">33.000</span><span class="sp-body">45.000</span><br>
								<span>chả, Pate, Không dưa chuột, Không rau mùi</span>
							</div>
						</div>
			-->
		<!-- thirdBody -->
		<!-- /thirdBody -->
		<!-- four 
						
						<div class="secondBody">
							<span class="sp-secondBody-f">Tổng</span><span
								class="sp-secondBody-c">Delivery Fee will be shown after
								you review order</span>
						</div>
						<div class="cart-cost">
							<p>102.000đ</p>
						</div>
						<!-- /four
						
						<div class="footer__modal footer__modal-cart">
							<button type="button"
								class="btn-add-modal btn-add-modal-cart js-btn-close-cart">
								<p>Đặt đơn</p>
							</button>
						</div>
					</div>
				</div>
						 -->

		<!-- /modal-cart
				
			</div>
				 -->

		<!-- /all -->
	</div>


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
	<script>
        const  buyBtns = document.querySelectorAll('.js-buy-eat')
        const modal = document.querySelector('.modal-buy')
        //const modalCart = document.querySelector('.modal-cart')
        const  modalClose = document.querySelector('.js-modal-close')
        const modalCloseCart = document.querySelector('.js-modal-close-cart')
        const modalContainer = document.querySelector('.js-modal-container')
        //const modalContainerCart = document.querySelector('.js-modal-container-cart')
     
        const modalBtnCloseCart = document.querySelector('.js-btn-close-cart')
        const spanText = document.querySelector('.sp-cost')
        const notif = document.querySelector('.notification')
        function showBuyEat(){
            modal.classList.add('open')
        }
        function showBuyEatCart(){
            spanText.classList.add('sp-cost-open')
            notif.classList.add('notification-modal')
        }
        //function showCart(){
            //modalCart.classList.add('open')
        //}
        function hideBuyEat(){
            modal.classList.remove('open')
        }
        //function hideBuyEatCart(){
            //modalCart.classList.remove('open')
        //}
        for(const buyBtn of buyBtns){
            buyBtn.addEventListener('click', showBuyEat)
        }
        modalClose.addEventListener('click', hideBuyEat)
        modal.addEventListener('click', hideBuyEat)
        //modalCart.addEventListener('click', hideBuyEatCart)
       
        //modalBtnCloseCart.addEventListener('click', hideBuyEatCart)
        //modalCloseCart.addEventListener('click', hideBuyEatCart)
       
        //notif.addEventListener('click', showCart)
        modalContainer.addEventListener('click', function(event){
            event.stopPropagation()
        })
        //modalContainerCart.addEventListener('click', function(event){
            //event.stopPropagation()
        //})
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
        				console.log(jsonResult.id);
        				//location.reload();
        			},
        			error: function(jqXhr, textStatus, errorMessage) { // gọi ajax thất bại
        				alert("error");
        			}
        		});
        	}
        </script>

</body>
</html>