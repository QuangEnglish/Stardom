function UpdateQuanlityCart(_baseUrl, _productId, _quanlity) {

		// tạo javascript object để binding với data bên phía controller  
		var requestBody = {
			productId: _productId,
			quanlity: _quanlity
		};
		// $ === jQuery
		// json == javascript object
		jQuery.ajax({
			url: _baseUrl + "/ajax/increaseItems", 	   //->request mapping định nghĩa bên controller
			type: "post",					   //-> method type của Request Mapping	
			contentType: "application/json",   //-> nội dung gửi lên dạng json <=> javascript object
			data: JSON.stringify(requestBody), //-> chuyển 1 javascript object thành string json
			
			dataType: "json", 				   // kiểu dữ liệu trả về từ Controller
			success: function (jsonResult) {    // gọi ajax thành công
				let prevQuantity = ($(`#quanlity_${ci.productId}`).text());//lấy text (ở đây là quantity) 
				$(`#quanlity_${ci.productId}`).html(parseInt(prevQuantity) +  _quanlity);// lay cai text tren cong hoac tru 1
				$("#numberEat").html(jsonResult.totalItems);
				location.reload();
	
			},
			error: function (jqXhr, textStatus, errorMessage) { // gọi ajax thất bại
				alert("error");
			}
		});
	}

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
            	location.reload();
            	$("#numberEat").html(jsonResult.totalItems);
    		},
			error: function (jqXhr, textStatus, errorMessage) { // gọi ajax thất bại
				alert("error");
			}
			
		});
	}