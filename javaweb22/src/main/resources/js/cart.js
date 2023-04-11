//----------xóa sản phẩm
	function deleteItem(_baseUrl, _productId) {

		// tạo javascript object để binding với data bên phía controller  
		var requestBody = {
			productId: _productId
		};
		// $ === jQuery
		// json == javascript object
		jQuery.ajax({
			url: _baseUrl + "/ajax/deleteItems", 	   //->request mapping định nghĩa bên controller
			type: "post",					   //-> method type của Request Mapping	
			contentType: "application/json",   //-> nội dung gửi lên dạng json <=> javascript object
			data: JSON.stringify(requestBody), //-> chuyển 1 javascript object thành string json

			dataType: "json", 				   // kiểu dữ liệu trả về từ Controller
			success: function (jsonResult) {    // gọi ajax thành công
            	$("#numberEat").html(jsonResult.totalItems);
            	location.reload();
            	
    		},
			error: function (jqXhr, textStatus, errorMessage) { // gọi ajax thất bại
				alert("error");
			}
			
		});
	}
	

	
//-------xóa về 0 số lg thì hiện ảnh
	$(document).ready(function() {
		  var tableRows = $('#table-container tbody tr');
		  if (tableRows.length == 0) {
		    $('#no-table-message').show();
		  } else {
		    $('#no-table-message').hide();
		  }
		});

