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
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Đăng nhập /Đăng ký</title>
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<link rel='stylesheet' type='text/css' media='screen'
	href='http://localhost:8080/css/style-off.css'>
<link rel="stylesheet"
	href="${base}/font/themify-icons-font/themify-icons/themify-icons.css">
<link rel="shortcut icon" href="${base}/img/imgtrangchu/iconLogoOffStardomChuan.png" />
<script src='${base}/js/jquery-3.6.1.js'></script>
<script src="${base}/js/login.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
</head>
<body>
	<div id="all">
		<div class="wrapper-login">
            <div class="logo logo-login">
                <a class="brand-logo" href="#"><img class="logo-img" src="${base }/img/imgtrangchu/iconLogoOffStardom.png"
                    alt="logo" /></a>
                <a  href="#"><h2 class="brand-title">Stardom</h2></a>
            </div>
        </div>
		<div class="header-root">
			<div class="root-register">
				<p onclick="myClickRegister()" id="root-register-p">Đăng ký</p>
			</div>
			<div class="root-login">
				<p onclick="myClickLogin()" id="root-login-p">Đăng nhập</p>

			</div>
			<div class="ant-tabs-ink-bar" id="ant-tabs-ink-bar"></div>
		</div>
		<div class="container-login">
			<form class="content-login" >
				<h2>Đã có tài khoản ?</h2>
				<h5>Đăng nhập bằng số điện thoại di động của bạn.</h5>
				<div class="wrapper-input-phone">
					<input type="tel" id="input-phone-is" placeholder="Số điện thoại"
						autofocus>
				</div>
				<div class="wrapper-input-phone wrapper-otp">
					<input type="tel" id="input-phone-otp" disabled
						placeholder="Nhập mã OTP" style="background-color: #bcb5b5;">
					<button type="button"
						onclick="location.href='${base}/home/{pathVariableName}';"
						id="button-phone-otp" style="background-color: #bcb5b5;" disabled>Đăng
						Nhập</button>
				</div>
				<div class="wrapper-button-login wrapper-button-login--small"
					style="margin-top: 20px;">
					<button type="button" id="button-request">Yêu cầu mã đăng
						nhập OTP</button>
				</div>
				<div class="wrapper-line">
					<span>-----hoặc-----</span>
				</div>
				<div class="wrapper-button-login wrapper-button-login--small"
					style="margin-top: 10px;">
					<a href="${base}/home/{pathVariableName}"><img id="icon-google"
						src="${base}/img/imgtrangchu/Google__G__Logo.svg.png" alt="">Đăng
						nhập bằng tài khoản google</a>
				</div>
			</form>
			<sf:form class="content-login content-login--pos" id="content-login--pos" modelAttribute="registerModel" action="${base}/register-us-spring-form" method="post">
				<h2>Đăng ký ngay!</h2>
				<h5>Để nhận hàng ngàn ưu đãi</h5>
				<div class="row-wrapper-name">
					<div class="wrapper-input-name">
						<sf:input path="lastName" type="text" id="input-surname" placeholder="Họ"></sf:input>
					</div>
					<div class="wrapper-input-name">
						<sf:input path="firstName" type="text" id="input-name" placeholder="Tên"></sf:input>
					</div>
				</div>
				<div class="wrapper-input-phone">
					<sf:input path="phone" type="tel" id="input-phone" placeholder="Số điện thoại"></sf:input>
				</div>
				<div class="wrapper-input-phone">
					<sf:input path="email" type="email" id="input-email" placeholder="Email"></sf:input>
				</div>
				<button type="submit" class="wrapper-button-login">
					<a href="${base}/home/{pathVariableName}">Đăng ký</a>
				</button>

			</sf:form>

		</div>
	</div>
</body>
</html>