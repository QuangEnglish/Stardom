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
			<jsp:include page="/WEB-INF/views/administrator/layout/sidebar.jsp"></jsp:include>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper content-wrapper__product">
					<div class="content-wrapper__product__body">
						<div class="product__body__nav">
							<a href="${base }/admin/trangchu">Trang chủ</a> <span><i
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
									<option value="">Tỉnh</option>
									<option value="Hà Nội">Hà Nội</option>
									<option value="Đà Nẵng">Đà Nẵng</option>
									<option value="Hồ Chí Minh">Hồ Chí Minh</option>
								</select>
								<!-- tìm theo huyện  -->
								<input type="text" name="townAddress" id="townAddress"
									value="${shopSearch.townAddress }" placeholder="Quận, huyện...">
								<input type="text" name="villageAddress" id="villageAddress"
									value="${shopSearch.villageAddress }"
									placeholder="Phường, xã...">

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
											<th scope="col">Lượng truy cập</th>
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
												<td>${shop.viewShop }</td>
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