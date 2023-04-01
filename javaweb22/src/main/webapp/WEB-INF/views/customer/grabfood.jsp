<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- import JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset='utf-8'>
<meta http-equiv='X-UA-Compatible' content='IE=edge'>
<title>Stardom</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/customer/layout/css.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/customer/layout/js.jsp"></jsp:include>
<!-- Jquery -->
<script src="https://code.jquery.com/jquery-3.6.4.js"
	integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="shortcut icon"
	href="${base}/img/imgtrangchu/iconLogoOffStardomChuan.png" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css"
	rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
</head>

<body>
	<div id="all">
		<jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/customer/layout/container.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/customer/layout/subFooter.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#filter-select").val('${shopSearchFilter.filterSelect}');
			$("#provinceAddress").val('${shopSearch.provinceAddress}');

		});
	</script>
	<script type="text/javascript">
		function AddViewShop(shopId) {
			var data = {
				id : shopId
			}
			jQuery.ajax({
				url : '${base}' + "/ajax/shop-view",
				type : "post",
				contentType : "application/json",
				data : JSON.stringify(data),

				dataType : "json",
				success : function(jsonResult) {
				},
				error : function(jqXhr, textStatus, errorMessage) {
					alert("Lỗi");
				}
			});
		}
	</script>
	<script type="text/javascript">
		$(".body-item").slice(8).hide();
		$("#myButton-see-add").html("<i class='fa-solid fa-plus' style='color: #fff; margin-right: 5px;'></i>Xem thêm");
		$("#myButton-see-add").click(function() {
			if ($(this).text() === "Xem thêm") {
				$(this).html("<i class='fa-solid fa-plus' style='color: #fff; margin-right: 5px;'></i>Thu gọn");
			} else {
				$(this).html("<i class='fa-solid fa-plus' style='color: #fff; margin-right: 5px;'></i>Xem thêm");
			}
			$(".body-item").slice(8).stop().slideToggle(500);
		});
	</script>
</body>
</html>