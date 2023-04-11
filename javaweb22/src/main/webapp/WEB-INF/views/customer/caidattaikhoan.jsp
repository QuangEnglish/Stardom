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
	<jsp:include page="/WEB-INF/views/customer/layout/header-success.jsp"></jsp:include>
	<section class="section">
		<div class="wrapper-user-install">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title" style="font-weight: bold !important;">
								<i class="fa-solid fa-clipboard" style="margin-right: 7px;"></i>Thông
								tin tài khoản
							</h5>
							<c:choose>
								<c:when test="${isLogined }">
									<!-- Vertical Form -->
									<div class="row g-3">
										<div class="col-12">
											<label for="inputNanme4" class="form-label">Tên khách
												hàng</label> <input type="text" class="form-control"
												id="inputNanme4" value="${userLogined.username }">
										</div>
										<div class="col-6">
											<label for="inputEmail4" class="form-label">Email</label> <input
												type="email" class="form-control" id="inputEmail4" value="${userLogined.email }">
										</div>
										<div class="col-6">
											<label for="inputPhone4" class="form-label">Số điện
												thoại</label> <input type="tel" class="form-control"
												id="inputPhone4" value="${userLogined.phone }">
										</div>
										<div class="col-6">
											<label for="inputDate4" class="form-label">Ngày sinh</label>
											<input type="date" class="form-control" id="inputDate4">
										</div>
										<div class="col-6">
											<label for="inputIdcart4" class="form-label">Chứng
												minh thư/ mã số thuế</label> <input type="text" class="form-control"
												id="inputIdcart4">
										</div>


									</div>
									<!-- Vertical Form -->
									<h5 class="card-title" style="margin-top: 40px;">
										<i class="fa-solid fa-clipboard" style="margin-right: 7px;"></i>Địa
										chỉ
									</h5>

									<!-- Vertical Form -->
								</c:when>
								<c:otherwise>
									<!-- Vertical Form -->
									<div class="row g-3">
										<div class="col-12">
											<label for="inputNanme4" class="form-label">Tên khách
												hàng</label> <input type="text" class="form-control"
												id="inputNanme4">
										</div>
										<div class="col-6">
											<label for="inputEmail4" class="form-label">Email</label> <input
												type="email" class="form-control" id="inputEmail4">
										</div>
										<div class="col-6">
											<label for="inputPhone4" class="form-label">Số điện
												thoại</label> <input type="tel" class="form-control"
												id="inputPhone4">
										</div>
										<div class="col-6">
											<label for="inputDate4" class="form-label">Ngày sinh</label>
											<input type="date" class="form-control" id="inputDate4">
										</div>
										<div class="col-6">
											<label for="inputIdcart4" class="form-label">Chứng
												minh thư/ mã số thuế</label> <input type="text" class="form-control"
												id="inputIdcart4">
										</div>


									</div>
									<!-- Vertical Form -->
									<h5 class="card-title" style="margin-top: 40px;">
										<i class="fa-solid fa-clipboard" style="margin-right: 7px;"></i>Địa
										chỉ
									</h5>

									<!-- Vertical Form -->
								</c:otherwise>
							</c:choose>
							<div class="row g-3">
								<div class="col-12"
									style="display: flex; justify-content: space-between; margin-top: 16px;">
									<div class="col-3" style="width: 30%;">
										<label for="inputProvince4" class="form-label">Tỉnh/
											Thành phố</label> <input type="text" class="form-control"
											id="inputProvince4">
									</div>
									<div class="col-3" style="width: 30%;">
										<label for="inputDistrict4" class="form-label">Quận/
											Huyện</label> <input type="text" class="form-control"
											id="inputDistrict4">
									</div>
									<div class="col-3" style="width: 30%;">
										<label for="inputVillage4" class="form-label">Phường/
											Xã</label> <input type="text" class="form-control" id="inputVillage4">
									</div>
								</div>
								<div class="col-6" style="margin-top: 16px;">
									<label for="inputLane4" class="form-label">Đường/ Ngõ</label> <input
										type="text" class="form-control" id="inputLane4">
								</div>
								<div class="col-6" style="margin-top: 16px;">
									<label for="inputHomeNumber4" class="form-label">Số nhà</label>
									<input type="text" class="form-control" id="inputHomeNumber4">
								</div>
								<div class="text-centers">
									<button type="submit" class="btn btn-primary">Lưu</button>
									<button type="reset" class="btn btn-secondary">Nhập lại</button>
								</div>
							</div>
							<!-- Vertical Form -->
						</div>
					</div>

				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="card" style="margin-top: 50px;">
						<div class="card-body">
							<h5 class="card-title" style="font-weight: bold !important;">
								<i class="fa-solid fa-clipboard" style="margin-right: 7px;"></i>Thay
								đổi mật khẩu
							</h5>

							<!-- Vertical Form -->
							<form class="row g-3" action="" method="post">
								<div class="col-12">
									<label for="inputPasswordPerson4" class="form-label">Mật
										khẩu cũ</label> <input type="text" class="form-control"
										id="inputPasswordPerson4">
								</div>
								<div class="col-12">
									<label for="inputPasswordPersonNew4" class="form-label">Mật
										khẩu mới</label> <input type="text" class="form-control"
										id="inputPasswordPersonNew4">
								</div>
								<div class="col-12">
									<label for="inputPasswordPersonConfluent4" class="form-label">Nhập
										lại</label> <input type="text" class="form-control"
										id="inputPasswordPersonConfluent4">
								</div>
								<div class="text-center" style="margin-top: 50px">
									<button type="submit" class="btn btn-primary">Thay đổi</button>
									<button type="reset" class="btn btn-secondary">Nhập lại</button>
								</div>
							</form>
							<!-- Vertical Form -->

						</div>
					</div>
				</div>
			</div>

		</div>
	</section>

	<!-- footer -->
	<jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
	<!-- /footer -->

	<!-- JS -->
	<jsp:include page="/WEB-INF/views/customer/layout/js.jsp"></jsp:include>

</body>
</html>
