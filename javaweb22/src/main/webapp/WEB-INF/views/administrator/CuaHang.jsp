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
<title>Cửa hàng</title>
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/administrator/layout/css.jsp"></jsp:include>
<link rel="shortcut icon"
	href="${base}/img/images/iconLogoOffStardom.png" />
<!-- Jquery 

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
-->

<!-- Bootstrap core JS
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

-->
</head>

<body>
	<div class="container-scroller">
		<!-- partial:../../partials/_navbar.html -->
		<jsp:include page="/WEB-INF/views/administrator/layout/header.jsp"></jsp:include>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:../../partials/_sidebar.html -->
			<!-- partial:partials/_sidebar.html -->
			<nav class="sidebar sidebar-offcanvas" id="sidebar">
				<ul class="nav">
					<li class="nav-item nav-profile"><a href="#" class="nav-link">
							<div class="nav-profile-image">
								<img src="${base}/img/images/anhdaidien.jpg" alt="profile">
								<span class="login-status online"></span>
								<!--change to offline or busy as needed-->
							</div>
							<div class="nav-profile-text d-flex flex-column">
								<span class="font-weight-bold mb-2">Quang Anh</span> <span
									class="text-secondary text-small">Quản lý dự án</span>
							</div> <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="index.html">
							<span class="menu-title">Trang Chủ</span> <i
							class="mdi mdi-home menu-icon"></i>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false"
						aria-controls="ui-basic"> <span class="menu-title">Quản
								trị danh mục</span> <i class="menu-arrow"></i> <i
							class="mdi mdi-crosshairs-gps menu-icon"></i>

					</a>
						<div class="collapse" id="ui-basic">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="${base}/admin/sanpham">Cửa hàng</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/LoaiDanhMuc.html">Loại danh mục</a></li>
								<li class="nav-item"><a class="nav-link"
									href="${base}/admin/sanpham">Sản Phẩm</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/BaiViet.html">Bài viết</a></li>

							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						data-bs-toggle="collapse" href="#ui-basic1" aria-expanded="false"
						aria-controls="ui-basic1"> <span class="menu-title">Quản
								trị giao diện</span> <i class="menu-arrow"></i> <i
							class="mdi mdi-crosshairs-gps menu-icon"></i>
					</a>
						<div class="collapse" id="ui-basic1">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/buttons.html">Slider</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/SanPham.html">Hình ảnh</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/SanPham.html">Hỗ trợ trực tuyến</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/SanPham.html">Thông tin</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/SanPham.html">Nội dung khác</a></li>

							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						data-bs-toggle="collapse" href="#ui-basic2" aria-expanded="false"
						aria-controls="ui-basic2"> <span class="menu-title">Quản
								trị thông tin</span> <i class="menu-arrow"></i> <i
							class="mdi mdi-crosshairs-gps menu-icon"></i>
					</a>
						<div class="collapse" id="ui-basic2">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/buttons.html">Danh sách đơn hàng</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/SanPham.html">Khách hàng liên hệ</a></li>

							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						data-bs-toggle="collapse" href="#ui-basic3" aria-expanded="false"
						aria-controls="ui-basic3"> <span class="menu-title">Cấu
								hình Admin</span> <i class="menu-arrow"></i> <i
							class="mdi mdi-crosshairs-gps menu-icon"></i>
					</a>
						<div class="collapse" id="ui-basic3">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/QuanLyAdmin.html">Quản lý admin</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/SanPham.html">Danh sách quyền</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/ThongTinAdmin.html">Thông tin admin</a></li>

							</ul>
						</div></li>

					<li class="nav-item"><a class="nav-link"
						data-bs-toggle="collapse" href="#general-pages"
						aria-expanded="false" aria-controls="general-pages"> <span
							class="menu-title">Tài liệu Admin</span> <i class="menu-arrow"></i>
							<i class="mdi mdi-medical-bag menu-icon"></i>
					</a>
						<div class="collapse" id="general-pages">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="pages/samples/blank-page.html"> Blank Page </a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/samples/login.html"> Login </a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/samples/register.html"> Register </a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/samples/error-404.html"> 404 </a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/samples/error-500.html"> 500 </a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/icons/mdi.html"> <span class="menu-title">Icons</span>
										<i class="mdi mdi-contacts menu-icon"></i>
								</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/forms/basic_elements.html"> <span
										class="menu-title">Forms</span> <i
										class="mdi mdi-format-list-bulleted menu-icon"></i>
								</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/charts/chartjs.html"> <span class="menu-title">Charts</span>
										<i class="mdi mdi-chart-bar menu-icon"></i>
								</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/tables/basic-table.html"> <span
										class="menu-title">Tables</span> <i
										class="mdi mdi-table-large menu-icon"></i>
								</a></li>
							</ul>
						</div></li>
					<li class="nav-item sidebar-actions"><span class="nav-link">
							<div class="border-bottom">
								<h6 class="font-weight-normal mb-3">Projects</h6>
							</div>
							<button class="btn btn-block btn-lg btn-gradient-primary mt-4">+
								Add a project</button> <!-- <div class="mt-4">
                  <div class="border-bottom">
                    <p class="text-secondary">Categories</p>
                  </div>
                  <ul class="gradient-bullet-list mt-4">
                    <li>Free</li>
                    <li>Pro</li>
                  </ul>
                </div> -->
					</span></li>
				</ul>
			</nav>
			<!-- partial -->
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper content-wrapper__product">
					<div class="content-wrapper__product__body">
						<div class="product__body__nav">
							<a href="../../index.html">Trang chủ</a> <span><i
								class="mdi mdi-chevron-right"></i></span> <a
								href="../../pages/ui-features/SanPham.html">Danh mục sản
								phẩm</a>
						</div>
						<form class="form-inline" action="${base }/admin/cuahang"
							method="get">
							<div class="product__body__filter">
								<!-- 
								<select id="filter">
									<option value="Tác Vụ"
										style="background-color: black; color: #fff;">Tác Vụ</option>
									<option value="Hiển thị">Hiển thị</option>
									<option value="Nổi bật">Nổi bật</option>
									<option value="Mới">Mới</option>
								</select> 
							
							 -->
								<input id="page" name="page" value="${shopSearch.page }"
									placeholder="Nhập tìm trang">
								<!-- tìm kiếm theo tên sản phẩm -->
								<input type="text" name="keyword" id="keyword"
									autocomplete="off"
									placeholder="Tên cửa hàng, mô tả, địa chỉ..."
									value="${shopSearch.keyword }" style="width: 20%;">

								<!-- tìm theo tỉnh  -->
								<select id="categoryId" name="categoryId">
									<option value="0" selected>Tỉnh</option>
									<c:forEach items="${categories}" var="category">
										<option value="${category.id }">${category.name }</option>
									</c:forEach>
								</select>
								<!-- tìm theo huyện  -->
								<select id="categoryId" name="categoryId">
									<option value="0" selected>Quận, huyện</option>
									<c:forEach items="${categories}" var="category">
										<option value="${category.id }">${category.name }</option>
									</c:forEach>
								</select>
								<!-- tìm theo xã  -->
								<select id="categoryId" name="categoryId">
									<option value="0" selected>Phường, xã</option>
									<c:forEach items="${categories}" var="category">
										<option value="${category.id }">${category.name }</option>
									</c:forEach>
								</select>
								<button type="submit" id="btnSearch" style="width: 10%;">Search</button>
								<button type="button" style="width: 10%;">
									<a href="${base}/admin/cuahang/themcuahang"
										style="color: #fff; display: block; text-decoration: none;">
										Thêm mới</a>
								</button>
							</div>
							<div class="product__body__table">
								<table>
									<thead>
										<tr style="height: 40px;">
											<th scope="col">STT</th>
											<th scope="col">Tên cửa hàng</th>
											<th scope="col">Địa chỉ</th>
											<th scope="col">ID Sản phẩm</th>
											<th scope="col">Hiển thị</th>
											<th scope="col">Nổi bật</th>
											<th scope="col">Đang sale</th>
											<th scope="col">Hình ảnh</th>
											<th scope="col">Status</th>
											<th scope="col">Tác vụ</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${shops.data}" var="shop" varStatus="loop">
											<tr>
												<th scope="row" width="5%">${loop.index + 1}</th>
												<td>${shop.name }</td>
												<td style="width: 20%;">
													<p>${shop.detailAddress },${shop.villageAddress },${shop.townAddress },${shop.provinceAddress }</p>
												</td>
												<td>
													
												</td>
												<td style="width: 70px;"><span
													id="_shop_isHot_${shop.id} }"> <c:choose>
															<c:when test="${shop.isDisplay }">
																<input type="checkbox" checked="checked"
																	readonly="readonly">
															</c:when>
															<c:otherwise>
																<input type="checkbox" readonly="readonly">
															</c:otherwise>
														</c:choose>
												</span></td>
												<td style="width: 70px;"><span
													id="_shop_isHot_${shop.id} }"> <c:choose>
															<c:when test="${shop.isHot }">
																<input type="checkbox" checked="checked"
																	readonly="readonly">
															</c:when>
															<c:otherwise>
																<input type="checkbox" readonly="readonly">
															</c:otherwise>
														</c:choose>
												</span></td>
												<td style="width: 70px;"><span
													id="_shop_isNew_${shop.id} }"> <c:choose>
															<c:when test="${shop.isNew }">
																<input type="checkbox" checked="checked"
																	readonly="readonly">
															</c:when>
															<c:otherwise>
																<input type="checkbox" readonly="readonly">
															</c:otherwise>
														</c:choose>
												</span></td>
												<td style="width: 100px;"><img
													src="${base }/upload/${shop.avatar}" width="100"
													height="100"></td>
												<td><span id="_shop_status_${shop.id} }"> <c:choose>
															<c:when test="${shop.status }">
																<input type="checkbox" checked="checked"
																	readonly="readonly">
															</c:when>
															<c:otherwise>
																<input type="checkbox" readonly="readonly">
															</c:otherwise>
														</c:choose>
												</span></td>
												<td style="width: 19%;">
													<div>
														<a style="font-size: 0.7rem;" class="btn btn-primary"
															href="${base }/admin/cuahang/themcuahang/${shop.id}"
															role="button"><i class="mdi mdi-content-paste"></i>Edit</a>
														<a style="font-size: 0.7rem;" class="btn btn-danger"
															role="button" onclick="DeleteShop(${shop.id})"><i
															class="mdi mdi-close-box"></i>Delete</a>
													</div>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div id="paginator" class="paginator"></div>
						</form>
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
	<script src="${base}/assets/vendors/js/vendor.bundle.base.js"></script>

	<script src="${base}/assets/js/off-canvas.js"></script>
	<script src="${base}/assets/js/hoverable-collapse.js"></script>
	<script src="${base}/assets/js/misc.js"></script>
	<script src="${base}/js/jquery.simplePagination.js"></script>
	<script type="text/javascript">
		$( document ).ready(function() {
			//đặt giá trị cửa category ứng với điều kiện search trước đó
			//$("#categoryId").val(${productSearch.categoryId});
			
			$("#paginator").pagination({
				currentPage: ${shops.currentPage}, 	//trang hiện tại
	        	items: ${shops.totalItems},			//tổng số sản phẩm
	        	itemsOnPage: ${shops.sizeOfPage}, 	//số sản phẩm trên 1 trang
	        	cssStyle: 'light-theme',
	        	onPageClick: function(pageNumber, event) {
	        	$('#page').val(pageNumber);
	        	$('#btnSearch').trigger('click');
			},
	    });
	});
	</script>
	<script type="text/javascript">
		function DeleteShop(shopId) {
		var data = {
			id: shopId,
		};
		var deleteConfirm = confirm("Bạn chắc chắn muốn xóa?");
		  if (deleteConfirm == true) {
		// $ === jQuery
		// json == javascript object
		jQuery.ajax({
			url: '${base}' + "/admin/cuahang/delete", 	   //->request mapping định nghĩa bên controller
			type: "post",					   //-> method type của Request Mapping	
			contentType: "application/json",   //-> nội dung gửi lên dạng json <=> javascript object
			data: JSON.stringify(data), //-> chuyển 1 javascript object thành string json
		
			dataType: "json", 				   // kiểu dữ liệu trả về từ Controller
			success: function(jsonResult) {    // gọi ajax thành công
				location.reload();
			},
			error: function(jqXhr, textStatus, errorMessage) { // gọi ajax thất bại
				alert("Xóa thất bại");
			}
		});
  
		  }
	}
	
	</script>

</body>

</html>