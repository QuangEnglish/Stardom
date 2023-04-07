<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- import JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- import thư viện spring-form -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!-- container -->
<div id="container">
	<!-- content -->
	<div class="content">
		<!-- address -->
		<div id="address">
			<form action="${base }/home/shop" method="post">
				<p style="padding: 20px 24px 0px 24px;" id="p1-address">Good
					Morning</p>
				<p style="padding: 0px 24px 0px 24px;" id="p2-address">Let's
					explore good food near you.</p>
				<div class="search-wrapper">
					<div class="search">
						<i class="fa-sharp fa-solid fa-location-dot"></i>
						<div class="select-container">
							<select class="select-input" name="provinceAddress"
								id="provinceAddress">
									<option value="">Tỉnh</option>
									<option value="Hà Nội">Hà Nội</option>
									<option value="Đà Nẵng">Đà Nẵng</option>
									<option value="Hồ Chí Minh">Hồ Chí Minh</option>
							</select>
						</div>
						<i class="fa-sharp fa-solid fa-location-crosshairs"></i>
					</div>
					<div class="search">
						<i class="fa-sharp fa-solid fa-location-dot"></i> <input
							type="text" name="townAddress" id="townAddress"
							value="${shopSearch.townAddress }" placeholder="Quận, huyện..."
							style="height: 46px; width: 60%;"> <i
							class="fa-sharp fa-solid fa-location-crosshairs"></i>
					</div>
					<div class="search">
						<i class="fa-sharp fa-solid fa-location-dot"></i> <input
							type="text" name="villageAddress" id="villageAddress"
							value="${shopSearch.villageAddress }" placeholder="Phường, xã..."
							style="height: 46px; width: 60%;"> <i
							class="fa-sharp fa-solid fa-location-crosshairs"></i>
					</div>
				</div>
				<div class="search-btn">
					<button type="submit" class="search-btn--sub" id="btn-add-content">
						<i class="fa-solid fa-magnifying-glass"
							style="font-size: 25px; color: #fff;"></i> Tìm Kiếm
					</button>
				</div>
			</form>
		</div>
		<!-- /address -->
		<!-- title-content-filter -->
		<div class="title-content-filter">
			<div class="title-content">
				<i class="fa-sharp fa-solid fa-shop"
					style="font-size: 40px; margin-right: 10px;"></i><span
					id="sp-title-content">Quán ăn gần bạn</span>
			</div>
			<form action="${base }/home/shop/search" class="filter-select">
				<div class="custom-select" style="width:70%;">
				<select class="filter-select-body" name="filter-select"
					id="filter-select">
					<option value="0" selected>Tìm quán</option>
					<option value="">Quán ăn gần bạn</option>
					<option value="1">Quán ăn nổi bật</option>
					<option value="2">Quán ăn đang sale</option>
					<option value="3">Quán quen</option>
				</select>
				</div>
				<button type="submit" id="btnFilterSearch" class="btnFilterSearch">
					<i class="fa-solid fa-magnifying-glass"></i>
				</button>
			</form>

		</div>
		<h3 id="sp-title-content--address">
			<i class="fa-solid fa-road"></i>${shopSearch.villageAddress }<i
				class="fa-solid fa-road"></i>${shopSearch.townAddress }<i
				class="fa-solid fa-road"></i> ${shopSearch.provinceAddress }
		</h3>
		<!-- /title-content-filter -->

		<!-- body-content -->
		<div class="body-content row">
			<c:forEach var="shop" items="${shops.data }" varStatus="loop">
				<!-- body-item -->
				<div class="body-item col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-12" >
					
					<div class="img-item">
						<div class="img-item-pos arm-sale" id="arm-sale"><span>Sale</span></div>
						<div class="arrow-sale arrow-sale" id="arrow-sale"></div>
						<div class="img-item-pos arm-hot" id="arm-hot"><span>Hot</span></div>
						<div class="arrow-hot arrow-hot" id="arrow-hot"></div>
						<img src="${base }/upload/${shop.avatar}" alt="">
					</div>
					<h3>${shop.name }</h3>
					<h4>
						<i class="fa-sharp fa-solid fa-location-dot"></i><span
							style="font-weight: bold;">Địa chỉ:</span> ${shop.detailAddress },${shop.villageAddress },${shop.townAddress },${shop.provinceAddress }
					</h4>
					<div class="infor">
						<i class="ti-tag"></i><span>${shop.shortDescriptionShop }</span>
					</div>
					<div class="sale-btnShop">
						<div class="sale">
							<i class="fa-solid fa-star"
								style="color: #ffc107; margin-right: 5px;"></i><span>${shop.viewShop} lượt xem</span>
						</div>
						<div class="btnShop">
							<a  href="${base }/shop/detail/${shop.seo}" onclick="AddViewShop(${shop.id})"><i
								class="ti-shopping-cart"></i>Xem quán</a>
						</div>
					</div>
				</div>


			</c:forEach>
		</div>

		<!-- see-all -->
		<div class="see-all">
			<button type="button" class="btn-see-shop"  id="myButton-see-add">
				<i class="fa-solid fa-plus"
					style="color: #fff; margin-right: 5px;"></i>Xem thêm
			</button>
		</div>
		<!-- /see-all -->
	</div>

	<!-- /content -->
	<!-- eat -->
	<div class="eat">
		<div class="title-content title-content__eat"
			style="padding-top: 40px;">
			<i class="fa-sharp fa-solid fa-utensils"
				style="font-size: 40px; margin-right: 10px;"></i> <span>Vạn
				món ngon tại <span style="color: #b66dff;">Stardom</span>!
			</span>
		</div>
		<!-- body-eat -->
		<div class="body-eat row">
			<div class="item-eat col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-6">
				<a href="${base }/danhmuc"></a>
				<div class="item-eat__img">
					<img src="${base }/img/imgtrangchu/item-eat__img1.png" alt="">
				</div>
				<p>Đồ uống lạnh</p>
			</div>
			<div class="item-eat col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-6">
				<a href="./danhmuc.html"></a>
				<div class="item-eat__img">
					<img src="${base }/img/imgtrangchu/item-eat__img2.png" alt="">
				</div>
				<p>Weekend Treats</p>
			</div>
			<div class="item-eat col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-6">
				<a href="./danhmuc.html"></a>
				<div class="item-eat__img">
					<img src="${base }/img/imgtrangchu/item-eat__img3.png" alt="">
				</div>
				<p>Pizza</p>
			</div>
			<div class="item-eat col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-6">
				<a href="./danhmuc.html"></a>
				<div class="item-eat__img">
					<img src="${base }/img/imgtrangchu/item-eat__img4.png" alt="">
				</div>
				<p>Cơm</p>
			</div>
		</div>
		<!-- /body-ear -->
		<!-- body-eat -->
		<div class="body-eat row">
			<div class="item-eat  col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-6">
				<div class="item-eat__img">
					<img src="${base }/img/imgtrangchu/item-eat__img5.png" alt="">
				</div>
				<p>Cháo</p>
			</div>
			<div class="item-eat  col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-6">
				<div class="item-eat__img">
					<img src="${base }/img/imgtrangchu/item-eat__img6.png" alt="">
				</div>
				<p>Gà Rán</p>
			</div>
			<div class="item-eat  col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-6">
				<div class="item-eat__img">
					<img src="${base }/img/imgtrangchu/item-eat__img7.png" alt="">
				</div>
				<p>Hủ tiếu</p>
			</div>
			<div class="item-eat  col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-6">
				<div class="item-eat__img">
					<img src="${base }/img/imgtrangchu/item-eat__img8.png" alt="">
				</div>
				<p>Rau trộn</p>
			</div>
		</div>
		<!-- /body-ear -->
		<!-- body-eat -->
		<div class="body-eat row">
			<div class="item-eat  col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-6">
				<div class="item-eat__img">
					<img src="${base }/img/imgtrangchu/item-eat__img9.png" alt="">
				</div>
				<p>Ăn vặt</p>
			</div>
			<div class="item-eat  col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-6">
				<div class="item-eat__img">
					<img src="${base }/img/imgtrangchu/item-eat__img10.png" alt="">
				</div>
				<p>Hiso Party</p>
			</div>
			<div class="item-eat  col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-6">
				<div class="item-eat__img">
					<img src="${base }/img/imgtrangchu/item-eat__img11.png" alt="">
				</div>
				<p>Thịt</p>
			</div>
			<div class="item-eat  col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-6">
				<div class="item-eat__img">
					<img src="${base }/img/imgtrangchu/item-eat__img12.png" alt="">
				</div>
				<p>Trà sữa</p>
			</div>
		</div>
		<!-- /body-ear -->
	</div>
	<!--/eat -->
	<!-- text-->
	<div class="text-stardom">
		<div class="title-content title-content__eat"
			style="padding-top: 40px;">
			<span>Tại sao nên lựa chọn Stardom? </span>
		</div>
		<div class="content-text">
			<div class="content-text__line">
				<i class="ti-check" style="color: #00b14f; font-weight: bold;"></i><span
					style="font-weight: bold;">Nhanh nhất</span><span> -
					GrabFood cung cấp dịch vụ giao đồ ăn nhanh nhất thị trường.</span>
			</div>
			<div class="content-text__line">
				<i class="ti-check" style="color: #00b14f; font-weight: bold;"></i><span
					style="font-weight: bold;">Dễ dàng nhất</span><span> - Giờ
					đây, bạn chỉ cần thực hiện vài cú nhấp chuột hoặc chạm nhẹ là đã có
					thể đặt đồ ăn. Hãy đặt đồ ăn trực tuyến hoặc tải xuống siêu ứng
					dụng Grab của chúng tôi để có trải nghiệm nhanh hơn và thú vị hơn.</span>
			</div>
			<div class="content-text__line">
				<i class="ti-check" style="color: #00b14f; font-weight: bold;"></i><span
					style="font-weight: bold;">Đáp ứng mọi nhu cầu</span><span>
					- Từ món ăn đặc sản địa phương đến các nhà hàng được ưa thích,
					nhiều lựa chọn đa dạng chắc chắn sẽ luôn làm hài lòng khẩu vị của
					bạn.</span>
			</div>
			<div class="content-text__line">
				<i class="ti-check" style="color: #00b14f; font-weight: bold;"></i><span
					style="font-weight: bold;">Thanh toán dễ dàng</span><span>-
					Giao và nhận đồ ăn thật dễ dàng. Thanh toán bằng GrabPay thậm chí
					còn dễ dàng hơn nữa.</span>
			</div>
			<div class="content-text__line">
				<i class="ti-check" style="color: #00b14f; font-weight: bold;"></i><span
					style="font-weight: bold;">Nhiều quà tặng hơn</span><span> -
					Tích điểm GrabRewards cho mỗi đơn hàng của bạn và sử dụng điểm
					thưởng để đổi lấy nhiều ưu đãi hơn.</span>
			</div>
		</div>

		<div class="title-content title-content__eat cc"
			style="padding-top: 40px;">
			<span>Các câu hỏi thường gặp </span>
		</div>
		<div class="grapfood">
			<span>Stardom là gì?</span>
			<p>Lunch, Bún Cá Chấm Gốc Đa - Vũ Thạnh for Dinner! We are here
				to satisfy your hunger with a wide selection of merchant partners in
				Vietnam. GrabFood là dịch vụ Giao đồ ăn nhanh nhất tại Việt Nam.
				Chúng tôi đã sắp xếp tất cả các món ăn, nhà hàng và thực phẩm yêu
				thích của bạn một cách hợp lý để giúp bạn tìm được đồ ăn dễ dàng và
				nhanh chóng nhất có thể. Tìm và đặt món ăn yêu thích trên khắp Việt
				Nam - đặt đồ ăn trực tuyến chỉ bằng vài thao tác, từ món Lifted
				Coffee-Brunch cho bữa sáng, đến Maazi Indian – Nhà Hàng Ấn Độ cho
				bữa trưa, đến Bún Cá Chấm Gốc Đa – Vũ Thạnh cho bữa tối! Hãy để
				chúng tôi xua tan cơn đói của bạn nhờ một loạt đối tác bán đồ ăn ở
				Việt Nam.</p>
		</div>
		<!-- /text-->
		<!-- see-all -->
		<div class="see-all">
			<button type="button" class="btn-see-shop">
				<i class="fa-solid fa-plus" style="color: #fff; margin-right: 5px;"></i>Xem
				thêm
			</button>
		</div>
		<!-- /see-all -->
	</div>

</div>
<!-- /container -->

