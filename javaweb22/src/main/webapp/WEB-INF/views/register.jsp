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
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Đăng ký vào Stardom</title>
<link rel="stylesheet"
	href="${base }/assets/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="${base }/assets/vendors/css/vendor.bundle.base.css">
<link rel="stylesheet" href="${base }/assets/css/base.css">
<link rel="stylesheet"
	href="${base}/font/themify-icons-font/themify-icons/themify-icons.css">
<link rel="shortcut icon"
	href="${base}/img/imgtrangchu/iconLogoOffStardomChuan.png" />

</head>
<body>
	<div class="container-scroller">
		<div class="container-fluid page-body-wrapper full-page-wrapper">
			<div
				class="content-wrapper d-flex align-items-center auth content-wrapper__register">
				<div class="row flex-grow">
					<div class="col-lg-4 mx-auto">
						<div class="auth-form-light text-left p-5">
							<div class="brand-logo">
								<h2 style="color: #047edf;">Stardom</h2>
							</div>
							<h4>Tại đây?</h4>
							<h6 class="font-weight-light">Đăng ký thật dễ dàng. Chỉ mất
								vài bước</h6>
							<div class="alert alert-danger" role="alert" id="error-message"
								style="display: none">Bạn cần nhập đầy đủ thông tin.</div>
							<div class="alert alert-danger" role="alert" id="error-message2"
								style="display: none">Mật khẩu không khớp</div>
							<div class="alert alert-danger" role="alert" id="error-message3"
								style="display: none">Cần xác nhận các điều khoản!</div>
							<div class="alert alert-success" role="alert" id="error-message4" style="display: none">
  									Đăng ký thành công!
							</div>	
							<sf:form class="pt-3" modelAttribute="user" id="myFormRegister"
								onsubmit="return validateForm()" action="${base }/register"
								method="post">
								<div class="form-group">
									<sf:input path="username" type="text"
										class="form-control form-control-lg"
										id="exampleInputUsername1" placeholder="Tài khoản"></sf:input>
								</div>
								<div class="form-group">
									<sf:input path="email" type="email"
										class="form-control form-control-lg" id="exampleInputEmail1"
										placeholder="Email"></sf:input>
								</div>
								<div class="form-group">
									<sf:input path="phone" type="text" maxlength="10"
										class="form-control form-control-lg" id="exampleInputPhone"
										placeholder="Số điện thoại"></sf:input>

								</div>
								<div class="form-group">
									<sf:input path="password" type="password"
										class="form-control form-control-lg"
										id="exampleInputPassword1" placeholder="Mật khẩu"></sf:input>
								</div>
								<div class="form-group">
									<input type="password"
										class="form-control form-control-lg"
										id="exampleInputPassword2" placeholder="Nhập lại mật khẩu">
								</div>
								<div class="mb-4">
									<div class="form-check">
										<label class="form-check-label text-muted"> <input
											type="checkbox" class="form-check-input" id="myCheckBox">Tôi đồng ý
											với tất cả Điều khoản & Điều kiện <i class="input-helper"></i>
										</label>
									</div>
								</div>
								<div class="mt-3">
									<button type="submit" id="mySubmit"
										class="btn btn-block btn-gradient-primary2 btn-lg font-weight-medium auth-form-btn btn-regist">ĐĂNG
										KÝ</button>
								</div>
								<div class="text-center mt-4 font-weight-light">
									Bạn đã có tài khoản <a href="${base }/login"
										class="text-primary">Đăng nhập</a>
								</div>
							</sf:form>
						</div>
					</div>
				</div>
			</div>
			<!-- content-wrapper ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->
	<script src="${base }/assets/vendors/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src="${base }/assets/js/off-canvas.js"></script>
	<script src="${base }/assets/js/hoverable-collapse.js"></script>
	<script src="${base }/assets/js/misc.js"></script>
	<!-- endinject -->
	<script type="text/javascript">
		function validateForm() {
			const myCheckBox = document.getElementById('myCheckBox');
			const mySubmit = document.getElementById('mySubmit');
			const myFormRegister = document.getElementById('myFormRegister');
			var name = document.getElementById("exampleInputUsername1").value;
			var email = document.getElementById("exampleInputEmail1").value;
			var phone = document.getElementById("exampleInputPhone").value;
			var pass = document.getElementById("exampleInputPassword1").value;
			var pass2 = document.getElementById("exampleInputPassword2").value;
			
			if (name == "" || email == "" || phone == "" || pass == "" || pass2 == "") {
				document.getElementById("error-message").style.display = "block";
				return false;
			}else if(pass !== pass2){
				document.getElementById("error-message2").style.display = "block";
				document.getElementById("error-message").style.display = "none";
				return false;
			}
			else if(myCheckBox.checked == false){
				document.getElementById("error-message3").style.display = "block";
				document.getElementById("error-message2").style.display = "none";
				document.getElementById("error-message").style.display = "none";
				return false;
			}
			else{
				document.getElementById("error-message").style.display = "none";
				document.getElementById("error-message2").style.display = "none";
				document.getElementById("error-message3").style.display = "none";
				document.getElementById("error-message4").style.display = "block";
				return true;
			}

		}
	</script>
	
</body>
</html>