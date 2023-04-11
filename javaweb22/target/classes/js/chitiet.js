		// Lấy danh sách các phần tử <li>
		var items = document.querySelectorAll("ul.product-details__menu--ul li a");

		// Khởi tạo selectedItem là null vì ban đầu chưa có phần tử nào được chọn
		var selectedItem = null;

		// Lặp qua các phần tử và gắn sự kiện click cho chúng
		for (var i = 0; i < items.length; i++) {
		  items[i].addEventListener("click", function() {
		    // Nếu đã có phần tử được chọn trước đó, xóa màu đỏ của nó
		    if (selectedItem) {
		      selectedItem.style.color = "";
		    }
		    // Thiết lập phần tử được chọn là phần tử hiện tại
		    selectedItem = this;
		    // Đặt màu đỏ cho phần tử được chọn
		    this.style.color = "#b66dff";
		  });
		}

		
		$(document).ready(function() {
					  $("#showDiv").click(function() {
					    $("#myDiv").toggle(500);
					    $("#wrapper-myDiv").fadeIn();
					  });
					  $("#closeDiv").click(function() {
						    $("#myDiv").toggle(300);
						    $("#wrapper-myDiv").fadeOut();
						  });
					});
					
		 let slideIndex = 1;
        showSlides(slideIndex);
        
        function plusSlides(n) {
          showSlides(slideIndex += n);
        }
        
        function currentSlide(n) {
          showSlides(slideIndex = n);
        }
        
        function showSlides(n) {
          let i;
          let slides = document.getElementsByClassName("mySlides");
          let dots = document.getElementsByClassName("dot");
          if (n > slides.length) {slideIndex = 1}    
          if (n < 1) {slideIndex = slides.length}
          for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";  
          }
          for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
          }
          slides[slideIndex-1].style.display = "block";  
          dots[slideIndex-1].className += " active";
        }
		
