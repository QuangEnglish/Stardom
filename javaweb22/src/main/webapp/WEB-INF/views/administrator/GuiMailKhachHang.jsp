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
<title>Gửi mail khách hàng</title>
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/administrator/layout/css.jsp"></jsp:include>
<link rel="shortcut icon"
	href="${base}/img/images/iconLogoOffStardom.png" />
<!-- Jquery 
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

-->

<!-- Bootstrap core JS
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

-->
</head>

<body>
	<div class="container-scroller">
		<!-- partial:../../partials/_navbar.html -->
		<jsp:include page="/WEB-INF/views/administrator/layout/header.jsp"></jsp:include>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:../../partials/_sidebar.html -->
			<jsp:include page="/WEB-INF/views/administrator/layout/sidebar.jsp"></jsp:include>
			<!-- partial -->
			<!-- partial:../../partials/_footer.html -->
			<div class="main-panel">
				<div class="content-wrapper content-wrapper__product">
					<div class="content-wrapper__product__body">
						<div class="product__body__nav">
							<a href="../../index.html">Trang chủ</a> <span><i
								class="mdi mdi-chevron-right"></i></span> <a
								href="../../pages/ui-features/SanPham.html">Gửi mail khách
								hàng</a>
						</div>
						<!-- Floating Labels Form -->
						<form class="row g-3 form-inline"
							style="width: 70%; margin: auto;"
							action="${base }/admin/sendEmailToAllUsers" method="get">
							<div class="col-md-10">
								<div class="form-floating" style="border: 1px solid gray;">
									<input type="email" name="to" class="form-control" id="floatingName"
										style="padding-top: 50px !important;" placeholder="to email" disabled>
									<label for="floatingName">To all email:</label>
								</div>
							</div>
							<div class="col-md-10">
								<div class="form-floating" style="border: 1px solid gray;">
									<input type="text" name="subject" class="form-control" id="floatingEmail"
										style="padding-top: 50px !important;" placeholder="subject">
									<label for="floatingEmail">Subject:</label>
								</div>
							</div>
							<div class="col-10">
								<div class="form-floating" style="border: 1px solid gray;">
									<textarea class="form-control" name="content" placeholder="Address"
										style="padding-top: 50px !important; height: 250px;" id="floatingTextarea"
										style="height: 100px;"></textarea>
									<label for="floatingTextarea">Content:</label>
								</div>
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Gửi</button>
								<button type="reset" class="btn btn-secondary">Hủy</button>
							</div>
						</form>
						<!-- End floating Labels Form -->
					</div>
				</div>
				<!-- content-wrapper ends -->
				<jsp:include page="/WEB-INF/views/administrator/layout/footer.jsp"></jsp:include>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<script src="${base}/assets/vendors/js/vendor.bundle.base.js"></script>

	<script src="${base}/assets/js/off-canvas.js"></script>
	<script src="${base}/assets/js/hoverable-collapse.js"></script>
	<script src="${base}/assets/js/misc.js"></script>
	<script src="${base}/js/jquery.simplePagination.js"></script>


</body>

</html>