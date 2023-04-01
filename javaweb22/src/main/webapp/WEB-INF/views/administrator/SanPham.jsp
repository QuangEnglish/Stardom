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
<title>Sản Phẩm</title>
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
			<div class="main-panel">
				<div class="content-wrapper content-wrapper__product">
					<div class="content-wrapper__product__body">
						<div class="product__body__nav">
							<a href="../../index.html">Trang chủ</a> <span><i
								class="mdi mdi-chevron-right"></i></span> <a
								href="../../pages/ui-features/SanPham.html">Danh mục sản
								phẩm</a>
						</div>
						<form class="form-inline" action="${base }/admin/sanpham"
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
								<input id="page" name="page" value="${productSearch.page }"
									placeholder="Nhập tìm trang">
								<!-- tìm kiếm theo tên sản phẩm -->
								<input type="text" name="keyword" id="keyword"
									autocomplete="off" placeholder="Tìm theo tên sản phẩm, mô tả"
									value="${productSearch.keyword }">

								<!-- tìm theo danh mục sản phẩm  -->
								<select id="categoryId" name="categoryId">
									<option value="0" selected>Tìm theo</option>
									<c:forEach items="${categories}" var="category">
										<option value="${category.id }">${category.name }</option>
									</c:forEach>
									<!-- 
									
									<c:forEach items="${categories}" var="category" >
										<option value="${category.id }">${category.name }</option>
									</c:forEach>
									 -->
								</select>
								<button type="submit" id="btnSearch" style="width: 10%;">Search</button>
								<button type="button" style="width: 10%;">
									<a href="${base}/admin/sanpham/themsanpham"
										style="color: #fff; display: block; text-decoration: none;">
										Thêm mới</a>
								</button>
							</div>
							<div class="product__body__table">
								<table>
									<thead>
										<tr>
											<th scope="col">STT</th>
											<th scope="col">Tên món</th>
											
											<th scope="col">Giá</th>
											<th scope="col">Thể loại món</th>
											<th scope="col">Status</th>
											<th scope="col">Hình ảnh</th>
											<th scope="col">Tác vụ</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${products.data}" var="product"
											varStatus="loop">
											<tr>
												<th scope="row" width="5%">${loop.index + 1}</th>
												<td>${product.title }</td>
												
												<td>
													<!-- định dạng tiền tệ --> <fmt:setLocale value="vi_VN"
														scope="session" /> <fmt:formatNumber
														value="${product.price }" type="currency" />
												</td>
												<td>${product.categories.name }</td>
												<td><span id="_product_status_${product.id} }">
														<c:choose>
															<c:when test="${product.status }">
																<input type="checkbox" checked="checked"
																	readonly="readonly">
															</c:when>
															<c:otherwise>
																<input type="checkbox" readonly="readonly">
															</c:otherwise>
														</c:choose>
												</span></td>
												<td><img src="${base }/upload/${product.avatar}"
													width="100" height="100"></td>
												<td style="width: 25%;">
													<div>
														<a style="font-size: 0.7rem;" class="btn btn-primary"
															href="${base }/admin/sanpham/themsanpham/${product.id}"
															role="button"><i class="mdi mdi-content-paste"></i>Edit</a>
														<a style="font-size: 0.7rem;" class="btn btn-danger"
															role="button" onclick="DeleteProduct(${product.id})"><i
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
			$("#categoryId").val(${productSearch.categoryId});
			
			$("#paginator").pagination({
				currentPage: ${products.currentPage}, 	//trang hiện tại
	        	items: ${products.totalItems},			//tổng số sản phẩm
	        	itemsOnPage: ${products.sizeOfPage}, 	//số sản phẩm trên 1 trang
	        	cssStyle: 'light-theme',
	        	onPageClick: function(pageNumber, event) {
	        	$('#page').val(pageNumber);
	        	$('#btnSearch').trigger('click');
			},
	    });
	});
	</script>
	<script type="text/javascript">
		function DeleteProduct(productId) {
		var data = {
			id: productId,
		};
		var deleteConfirm = confirm("Bạn chắc chắn muốn xóa?");
		  if (deleteConfirm == true) {
		// $ === jQuery
		// json == javascript object
		jQuery.ajax({
			url: '${base}' + "/admin/sanpham/delete", 	   //->request mapping định nghĩa bên controller
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