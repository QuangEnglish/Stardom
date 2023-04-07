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
<title>Thêm Cửa Hàng</title>
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/administrator/layout/css.jsp"></jsp:include>
<link rel="shortcut icon"
	href="${base}/img/images/iconLogoOffStardom.png" />

<script src="https://code.jquery.com/jquery-3.5.1.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="${base}/summernote-0.8.18-dist/summernote-bs4.min.css">

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
			<div class="main-panel">
				<div class="content-wrapper content-wrapper__product">
					<div class="content-wrapper__product__body">
						<div class="product__body__nav">
							<a href="../../index.html">Trang chủ</a> <span><i
								class="mdi mdi-chevron-right"></i></span> <a
								href="../../pages/ui-features/SanPham.html">Danh mục sản
								phẩm</a> <span><i class="mdi mdi-chevron-right"></i></span> <a
								href="../../pages/ui-features/ThemSanPham.html">Thêm</a>

						</div>
						<div class="product__body__title">
							<p>Thông Tin Cửa Hàng</p>
						</div>
						<div class="product__body__table">
							<sf:form modelAttribute="shop"
								action="${base }/admin/cuahang/themcuahang/saveOrUpdate"
								method="post" enctype="multipart/form-data">
								<!-- trong 1 form mà có file upload nên thì ta cần enctype="multipart/form-data" -->
								<table class="tableAdd" style="border: none;">
									<tr>
										<td>Avatar:</td>
										<td style="height: 200px;"><img
											src="${base }/upload/${shop.avatar}" alt=""
											style="width: 70px; height: 70px;"><br> <input
											type='file' id="fileShopAvatar" name="shopAvatar"
											style="margin-top: 40px; height: 56px;"><br></td>
									</tr>
									<tr>
										<td>Hình ảnh:</td>
										<td style="height: 200px;"><c:forEach
												items="${shop.shopImages }" var="shopImage">
												<img alt="" style="width: 70px; height: 70px;"
													src="${base }/upload/${shopImage.path}">
											</c:forEach><br> <input type="file" id="fileShopPictures"
											name="shopPictures" multiple="multiple"
											style="margin-top: 40px; height: 56px;"><br></td>
									</tr>
									<tr>
										<td style="width: 80px;">Mã id cửa hàng:</td>
										<td><sf:input path="id" type="text" name="shopCode"
												id="shopCode"></sf:input></td>
									</tr>
									<tr>
										<td>Tên cửa hàng:</td>
										<td><sf:input path="name" type="text" name="shopTitle"
												id="shopTitle"></sf:input></td>
									</tr>
									<tr>
										<td>Địa chỉ:</td>
										<td><sf:input path="provinceAddress" type="text"
												name="provinceAddress" id="provinceAddress"
												placeholder="Nhập tỉnh"></sf:input> <sf:input
												path="townAddress" type="text" name="townAddress"
												id="townAddress" placeholder="Nhập quận, huyện"></sf:input>
											<sf:input path="villageAddress" type="text" name="villageAddress"
												id="villageAddress" placeholder="Nhập phường, xã"></sf:input> <sf:input
												path="detailAddress" type="text" name="detailAddress"
												id="detailAddress" placeholder="Nhập địa chỉ chi tiết"></sf:input>
										</td>
									</tr>
									<tr>
										<td>Thời gian mở cửa:</td>
										<td><sf:input path="openTime" type="time" name="openTime"
												id="openTime"></sf:input></td>
									</tr>
									<tr>
										<td style="width: 160px;">Thời gian đóng cửa:</td>
										<td><sf:input path="closeTime" type="time"
												name="closeTime" id="closeTime"></sf:input></td>
									</tr>
									<tr>
										<td style="width: 160px;">Số điện thoại quán:</td>
										<td><sf:input path="phone" type="tel"
												name="phone" id="phone"></sf:input></td>
									</tr>
									<tr>
										<td>Mô tả ngắn:</td>
										<td><sf:input path="shortDescriptionShop" type="text"
												id="short_description"></sf:input></td>
									</tr>
									<tr>
										<td>Mô tả chi tiết:</td>
										<td style="width: 500px;"><sf:textarea
												style="width: 500px;" autocomplete="off"
												path="descriptionShop" id="detail_description"
												class="form-control summernote"></sf:textarea></td>
									</tr>
									<tr>
										<td>Tác vụ:</td>
										<td style="display: flex;">
											<sf:checkbox path="isNew"
											name="newShop" id="newShop" label="Đang sale"
											style="height: 20px; width: 20px; margin: 15px 10px;" />
											<sf:checkbox path="isHot"  name="hotShop" id="hotShop" label="Nổi bật"
											style="height: 20px; width: 20px; margin: 15px 10px;"/>
											<sf:checkbox path="isDisplay" name="displayShop" id="displayShop"  label="Hiển thị"
											style="height: 20px; width: 20px; margin: 15px 10px;" />
										</td>
									</tr>
									<tr></tr>
									<tr>
										<td></td>
										<td><button type="submit"
												style="width: 150px; margin-right: 50px;">Thêm cửa hàng</button>
											<button type="button"
												style="width: 150px; margin-right: 50px;">
												<a href="${base }/admin/cuahang"
													style="text-decoration: none; color: black;">Thoát</a>
											</button>
										</td>
									</tr>
								</table>
								
							</sf:form>
						</div>
					</div>


				</div>
				<!-- content-wrapper ends -->
				<!-- partial:../../partials/_footer.html -->
				<jsp:include page="/WEB-INF/views/administrator/layout/footer.jsp"></jsp:include>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<jsp:include page="/WEB-INF/views/administrator/layout/js.jsp"></jsp:include>

	<!-- Jquery -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

	<!-- Paging -->
	<script src="${base}/js/jquery.simplePagination.js"></script>

	<!-- Core theme JS-->
	<script src="${base}/js/administrator_scripts.js"></script>

	<!-- summernote-->
	<script src="${base}/summernote-0.8.18-dist/summernote-bs4.min.js"></script>



	<!-- internal javascript -->
	<script type="text/javascript">
		$(document).ready(function() {
			$('#detail_description').summernote({
				placeholder : 'Mô tả chi tiết',
				height : 100, // set editor height
				minHeight : null, // set minimum height of editor
				maxHeight : null
			// set maximum height of editor				             
			});
		});
	</script>
	<!-- endinject -->
</body>

</html>