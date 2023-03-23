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

