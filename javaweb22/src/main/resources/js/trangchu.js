var arrSlide = new Array();
arrSlide[0] = "http://localhost:8080/img/imgtrangchu/banner8.jpg";
arrSlide[1] = "http://localhost:8080/img/imgtrangchu/banner9.jpg";
arrSlide[2] = "http://localhost:8080/img/imgtrangchu/banner10.jpg";
arrSlide[3] = "http://localhost:8080/img/imgtrangchu/banner12.jpg";
arrSlide[4] = "http://localhost:8080/img/imgtrangchu/banner3.jpg";
arrSlide[5] = "http://localhost:8080/img/imgtrangchu/banner13.jpg";
arrSlide[6] = "http://localhost:8080/img/imgtrangchu/banner11.jpg";
arrSlide[7] = "http://localhost:8080/img/imgtrangchu/banner12.jpg";
arrSlide[8] = "http://localhost:8080/img/imgtrangchu/banner13.jpg";

var n = 0;
setInterval(function(){
    $(".img-banner").fadeOut(100, function(){
        n++;
        //tac dong id-img-banner thay doi gia tri thuoc tinh src
        $(".img-banner").attr('src', arrSlide[n]);
        $(".img-banner").fadeIn(100);
        //neu o vi tri cuoi cung cua array thi reset n
        if(n == arrSlide.length - 1){
            n=0;
        }
    });
}, 5000);


//select-title
	
	

$(document).ready(function(){
    $(window).scroll(function(){
        if($(this).scrollTop()>500){
            $('.header-pos').addClass('sticky');
            $('.wrapper-search-block').addClass('active-block');
        }else{
            $('.header-pos').removeClass('sticky');
            $('.wrapper-search-block').removeClass('active-block');
        }
    });
});

//


// //trang chi tiet
// document.querySelector('.acl').addEventListener('click', function(){
//     document.querySelector('.title-content2').setAttribute("style", "padding: 132px 0px 80px 0px; background-color:red;");
// });
// function myFunction(){
//     document.querySelector('.title-content2').setAttribute("style", "padding: 132px 0px 80px 0px;");
// }
// function myFunction2(){
//     document.querySelector('.title-content3').setAttribute("style", "padding: 132px 0px 80px 0px;");
// }
// function myFunctio3(){
//     document.querySelector('.title-content4').setAttribute("style", "padding: 132px 0px 80px 0px;");
// }
// function myFunctio4(){
//     document.querySelector('.title-content5').setAttribute("style", "padding: 132px 0px 80px 0px;");
// }

//btn xem thêm
	$(".body-item").slice(8).hide();
		$("#myButton-see-add")
				.html(
						"<i class='fa-solid fa-plus' style='color: #fff; margin-right: 5px;'></i>Xem thêm");
		$("#myButton-see-add")
				.click(
						function() {
							if ($(this).text() === "Xem thêm") {
								$(this).html("<i class='fa-solid fa-plus' style='color: #fff; margin-right: 5px;'></i>Thu gọn");
							} else {
								window.scrollTo({ top: 0, behavior: 'smooth' });
								$(this).html("<i class='fa-solid fa-plus' style='color: #fff; margin-right: 5px;'></i>Xem thêm");
							}
							$(".body-item").slice(8).stop().fadeToggle(500);
						});
						
//-btn xem thêm



// css select
var x, i, j, l, ll, selElmnt, a, b, c;
/*look for any elements with the class "custom-select":*/
x = document.getElementsByClassName("custom-select");
l = x.length;
for (i = 0; i < l; i++) {
  selElmnt = x[i].getElementsByTagName("select")[0];
  ll = selElmnt.length;
  /*for each element, create a new DIV that will act as the selected item:*/
  a = document.createElement("DIV");
  a.setAttribute("class", "select-selected");
  a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
  x[i].appendChild(a);
  /*for each element, create a new DIV that will contain the option list:*/
  b = document.createElement("DIV");
  b.setAttribute("class", "select-items select-hide");
  for (j = 1; j < ll; j++) {
    /*for each option in the original select element,
    create a new DIV that will act as an option item:*/
    c = document.createElement("DIV");
    c.innerHTML = selElmnt.options[j].innerHTML;
    c.addEventListener("click", function(e) {
        /*when an item is clicked, update the original select box,
        and the selected item:*/
        var y, i, k, s, h, sl, yl;
        s = this.parentNode.parentNode.getElementsByTagName("select")[0];
        sl = s.length;
        h = this.parentNode.previousSibling;
        for (i = 0; i < sl; i++) {
          if (s.options[i].innerHTML == this.innerHTML) {
            s.selectedIndex = i;
            h.innerHTML = this.innerHTML;
            y = this.parentNode.getElementsByClassName("same-as-selected");
            yl = y.length;
            for (k = 0; k < yl; k++) {
              y[k].removeAttribute("class");
            }
            this.setAttribute("class", "same-as-selected");
            break;
          }
        }
        h.click();
    });
    b.appendChild(c);
  }
  x[i].appendChild(b);
  a.addEventListener("click", function(e) {
      e.stopPropagation();
      closeAllSelect(this);
      this.nextSibling.classList.toggle("select-hide");
      this.classList.toggle("select-arrow-active");
    });
}
function closeAllSelect(elmnt) {
  var x, y, i, xl, yl, arrNo = [];
  x = document.getElementsByClassName("select-items");
  y = document.getElementsByClassName("select-selected");
  xl = x.length;
  yl = y.length;
  for (i = 0; i < yl; i++) {
    if (elmnt == y[i]) {
      arrNo.push(i)
    } else {
      y[i].classList.remove("select-arrow-active");
    }
  }
  for (i = 0; i < xl; i++) {
    if (arrNo.indexOf(i)) {
      x[i].classList.add("select-hide");
    }
  }
}

document.addEventListener("click", closeAllSelect);








