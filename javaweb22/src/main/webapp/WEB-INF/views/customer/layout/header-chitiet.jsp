<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- import JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="header-pos header-pos-detail">
	<div class="header-mag">
		<div class="logo">
			<a class="brand-logo" href="${base }/home/shop"><img
				class="logo-img"
				src="${base }/img/imgtrangchu/iconLogoOffStardom.png" alt="logo" /></a>
			<a href="${base }/home/shop"><h2 class="brand-title">Stardom</h2></a>
		</div>
		<div class="wrapper-search-block" style="display:block;">
			<form class="search-wrapper search-block" action="${base }/shop/detail/${shop.seo}" method="get">
				<div class="search search-block--mg" style="width: 60%;">
					<i class="fa-sharp fa-solid fa-location-dot"></i> <input
						type="text" name="keyword" id="conscious" placeholder="Tìm món..."
						style="height: 46px; width: 60%;" required> <i
						class="fa-sharp fa-solid fa-location-crosshairs"></i>
				</div>

				<div class="search-block__btn">
					<button type="submit"
						class="search-block__btn--sub" id="add">
						Tìm Kiếm
					</button>
				</div>
			</form>
		</div>
		<div class="actor">
			<div class="notification">
				<a href="${base }/cart/checkout" style="color: var(- -black-color);">
					<i class="fa-sharp fa-solid fa-cart-plus"
					style="line-height: 40px; font-size: 20px; text-align: center; display: block;">
				</i>
				</a>
				<div class="number-wrapper">
					<span id="numberEat">${Tongsoluongmon }</span>
				</div>
			</div>
			<c:choose>
						<c:when test="${isLogined }">
							<div class="avatar_chitiet" style="cursor: pointer;">
								<p id="profileDropdown" style="color: #ffff;">
									<i class="fa-solid fa-user" style="color: #fff;"></i>
								</p>
								<div class="dropdown-menuz">
									<p class="dropdown-itemz-p">
										${userLogined.username }
									</p> 
									<p class="dropdown-itemz-p">
										${userLogined.email }
									</p> 
									<!-- <div class="dropdown-divider"></div> -->
									<a class="dropdown-itemz" href="${base }/logout"
										style="border-top: 1px solid #fff; border-radius: 0px 0px 10px 10px;">
										<i class="fa-sharp fa-solid fa-lock" style="color: #fff; margin-right: 5px;"></i>
										Đăng Xuất
									</a> <a class="dropdown-itemz" href="${base }/user"
										style="border-top: 1px solid #fff; border-radius: 0px 0px 10px 10px;">
										<i class="fa-solid fa-gear" style="color: #fff; margin-right: 5px;"></i>
										Cài đặt tài khoản
									</a>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="avatar">
								<a href="${base }/register" style="color: #ffff;">Đăng ký</a>
							</div>
							<div class="avatar">
								<a href="${base }/login" style="color: #ffff;">Đăng nhập</a>
							</div>

						</c:otherwise>
					</c:choose>
			<!-- <div class="avatar">
                                <a href="#" style="color: #ffff;">Đăng ký</a>
                            </div>
                            <div class="avatar">
                                <a href="#" style="color: #ffff;">Đăng nhập</a>
                            </div> -->
			<select name="language" id="language" class="language">
				<option value="VI">Việt Nam</option>
				<option value="EN">English</option>
			</select>
			<!-- <div class="language">
                                <span>VI</span><i class="ti-angle-down"></i>

                            </div> -->
		</div>
	</div>
</div>

