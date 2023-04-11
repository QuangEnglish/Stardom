<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- import JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Cửa hàng Stardom</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <!-- Favicon-->
    <link rel="shortcut icon" href="${base}/img/imgtrangchu/iconLogoOffStardomChuan.png" />
    <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/views/customer/layout/css.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/views/customer/layout/js.jsp"></jsp:include>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

</head>

<body>
    <div id="all">
        <!-- banner -->
        <div id="banner__danhmuc">
            <!-- header -->
            <jsp:include page="/WEB-INF/views/customer/layout/header-chitiet.jsp"></jsp:include>
            <!-- /header -->
            <!-- banner__list -->
            <div id="banner__list" class="row">
                <div class="banner__list-item  col-xl-2 col-lg-4 col-md-6 col-sm-6 col-xs-6">
                    <img src="${base}/img/imgdanhmuc/list-banner1.png" alt="">
                </div>
                <div class="banner__list-item col-xl-2 col-lg-4 col-md-6 col-sm-6 col-xs-6">
                    <img src="${base}/img/imgdanhmuc/list-banner2.png" alt="">
                </div>
                <div class="banner__list-item col-xl-2 col-lg-4 col-md-6 col-sm-6 col-xs-6">
                    <img src="${base}/img/imgdanhmuc/list-banner3.png" alt="">
                </div>
                <div class="banner__list-item col-xl-2 col-lg-4 col-md-6 col-sm-6 col-xs-6">
                    <img src="${base}/img/imgdanhmuc/list-banner4.png" alt="">
                </div>
                <div class="banner__list-item col-xl-2 col-lg-4 col-md-6 col-sm-6 col-xs-6">
                    <img src="${base}/img/imgdanhmuc/list-banner5.png" alt="">
                </div>
                <div class="banner__list-item col-xl-2 col-lg-4 col-md-6 col-sm-6 col-xs-6">
                    <img src="${base}/img/imgdanhmuc/list-banner6.png" alt="">
                </div>
                <!-- item__controller -->
                <!-- 
                
                <div class="item__controller__danhmuc item__controller">
                    <a href="" class="ti-angle-right"></a>
                </div>
                 -->
                <!-- item__controller -->
            </div>
            <!-- /banner__list -->
        </div>
        <!-- /banner -->
        <!-- container -->
        <div id="container" style="border-top:none; padding-bottom: 70px;">
            <!-- nav__danhmuc -->
            <nav class="menu">
                <a href="${base}/home/{pathVariableName}">Trang chủ</a>
                <i class="ti-angle-right"></i>
                <a href="${base}/danhmuc">Ẩm thực</a>
                <i class="ti-angle-right"></i>
                <a href="${base}/danhmuc">Khuyến mại</a>
            </nav>
            <!-- /nav__danhmuc -->
            <!-- content -->
            <div class="content content__danhmuc">
                <!-- title-content-filter -->
                    <div class="title-content-filter">
                        <div class="title-content">
                            <i class="fa-sharp fa-solid fa-shop" style="font-size: 40px; margin-right: 10px;"></i>
                            <span>Quán ăn </span> <span id="sp-title-content">gần bạn</span>
                        </div>
                        <form class="filter" action="" method="post">
                            <select name="filter-select" id="filter-select">
                                <option value="1">Quán ăn nổi bật</option>
                                <option value="2">Quán ăn gần tôi</option>
                                <option value="3">Quán ăn đang sale</option>
                                <option value="4">Quán cũ</option>
                            </select>
                        </form>
                    </div>

                    <!-- /title-content-filter -->
                <!-- body-content -->
                <div class="body-content body-content__danhmuc row">
                    <!-- body-item -->
                    <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                        <a href="${base}/chitiet"></a>
                        <div class="img-item">
                            <img src="${base}/img/imgtrangchu/img-item1.png" alt="">
                        </div>
                        <h3>Bún Hải Sản Phú Thịnh</h3>
                        <h4>Bún - Phở - Mì - Hủ tiếu</h4>
                        <div class="infor">
                            <i class="ti-star"></i><span>3.8</span><i class="ti-alarm-clock"></i><span>25 phút</span><i
                                class="ti-control-record"></i><span>2.9km</span>
                        </div>
                        <div class="sale">
                            <i class="ti-tag"></i><span>Đồng giá 33k</span>
                        </div>
                    </div>
                    <!-- /body-item -->
                    <!-- body-item -->
                    <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                        <a href="${base}/chitiet"></a>
                        <div class="img-item">
                            <img src="${base}/img/imgtrangchu/img-item2.png" alt="">
                        </div>
                        <h3>Hải sản Thiên Ngọc</h3>
                        <h4>Hải Sản</h4>
                        <div class="infor">
                            <i class="ti-star"></i><span>3.8</span><i class="ti-alarm-clock"></i><span>15 phút</span><i
                                class="ti-control-record"></i><span>2km</span>
                        </div>
                        <div class="sale">
                            <i class="ti-tag"></i><span>Ưu đãi đến 55k</span>
                        </div>
                    </div>
                    <!-- /body-item -->
                    <!-- body-item -->
                    <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                        <a href="${base}/chitiet"></a>
                        <div class="img-item">
                            <img src="${base}/img/imgtrangchu/img-item3.png" alt="">
                        </div>
                        <h3>Highlands Coffee - Vinhome</h3>
                        <h4>Bún - Phở - Mì - Hủ tiếu</h4>
                        <div class="infor">
                            <i class="ti-star"></i><span>3.8</span><i class="ti-alarm-clock"></i><span>20 phút</span><i
                                class="ti-control-record"></i><span>3.9km</span>
                        </div>
                        <div class="sale">
                            <i class="ti-tag"></i><span>Đồng giá 53k</span>
                        </div>
                    </div>
                    <!-- /body-item -->
                    <!-- body-item -->
                    <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                    	<a href="${base}/chitiet"></a>
                        <div class="img-item">
                            <img src="${base}/img/imgtrangchu/img-item4.png" alt="">
                        </div>
                        <h3>Cơm gà Anh Ngọc</h3>
                        <h4>Cơm Gà</h4>
                        <div class="infor">
                            <i class="ti-star"></i><span>3.8</span><i class="ti-alarm-clock"></i><span>10 phút</span><i
                                class="ti-control-record"></i><span>1.9km</span>
                        </div>
                        <div class="sale">
                            <i class="ti-tag"></i><span>Deal khủng chỉ 10k</span>
                        </div>
                    </div>
                    <!-- /body-item -->
                </div>
                <!-- body-content -->
                <!-- body-content -->
                <div class="body-content body-content__danhmuc row">
                    <!-- body-item -->
                    <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                    	<a href="${base}/chitiet"></a>
                        <div class="img-item">
                            <img src="${base}/img/imgtrangchu/img-item5.png" alt="">
                        </div>
                        <h3>Bánh xèo - Nem lụi Phượng</h3>
                        <h4>Bánh Truyền Thống</h4>
                        <div class="infor">
                            <i class="ti-star"></i><span>3.8</span><i class="ti-alarm-clock"></i><span>25 phút</span><i
                                class="ti-control-record"></i><span>2.9km</span>
                        </div>
                        <div class="sale">
                            <i class="ti-tag"></i><span>Đồng giá 45k</span>
                        </div>
                    </div>
                    <!-- /body-item -->
                    <!-- body-item -->
                    <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                    	<a href="${base}/chitiet"></a>
                        <div class="img-item">
                            <img src="${base}/img/imgtrangchu/img-item6.png" alt="">
                        </div>
                        <h3>Cơm Thố Anh Nguyễn - Dương..</h3>
                        <h4>Business Order, Cơm, Tạp Dề Bạc</h4>
                        <div class="infor">
                            <i class="ti-star"></i><span>4.5</span><i class="ti-alarm-clock"></i><span>15 phút</span><i
                                class="ti-control-record"></i><span>3km</span>
                        </div>
                        <div class="sale">
                            <i class="ti-tag"></i><span>Ưu đãi đến 60k</span>
                        </div>
                    </div>
                    <!-- /body-item -->
                    <!-- body-item -->
                    <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                    	<a href="${base}/chitiet"></a>
                        <div class="img-item">
                            <img src="${base}/img/imgtrangchu/img-item7.png" alt="">
                        </div>
                        <h3>KFC - TTTM Ebest Mall</h3>
                        <h4>Gà Rán - Burger, Cơm, Món Quốc Tế </h4>
                        <div class="infor">
                            <i class="ti-star"></i><span>3.8</span><i class="ti-alarm-clock"></i><span>20 phút</span><i
                                class="ti-control-record"></i><span>3.9km</span>
                        </div>
                        <div class="sale">
                            <i class="ti-tag"></i><span>Combo BỮA TRƯA SIÊU HỜI</span>
                        </div>
                    </div>
                    <!-- /body-item -->
                    <!-- body-item -->
                    <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                    	<a href="${base}/chitiet"></a>
                        <div class="img-item">
                            <img src="${base}/img/imgtrangchu/img-item8.png" alt="">
                        </div>
                        <h3>Trà Đào Quang Anh</h3>
                        <h4>Trà Sữa</h4>
                        <div class="infor">
                            <i class="ti-star"></i><span>5</span><i class="ti-alarm-clock"></i><span>10 phút</span><i
                                class="ti-control-record"></i><span>1km</span>
                        </div>
                        <div class="sale">
                            <i class="ti-tag"></i><span>Deal khủng chỉ 15k</span>
                        </div>
                    </div>
                    <!-- /body-item -->

                </div>
                <!-- body-content -->
                <!-- body-content -->
                <div class="body-content body-content__danhmuc row">
                    <!-- body-item -->
                    <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                    <a href="${base}/chitiet"></a>
                        <div class="img-item">
                            <img src="${base}/img/imgdanhmuc/item-sp6.png" alt="">
                        </div>
                        <h3>Domino's Pizza - Hàm Nghi</h3>
                        <h4>Pizza, Món Quốc Tế </h4>
                        <div class="infor">
                            <i class="ti-star"></i><span>4.8</span><i class="ti-alarm-clock"></i><span>90 phút</span><i
                                class="ti-control-record"></i><span>2.9km</span>
                        </div>
                        <div class="sale">
                            <i class="ti-tag"></i><span>Đồng giá 33k</span>
                        </div>
                    </div>
                    <!-- /body-item -->
                    <!-- body-item -->
                    <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                    	<a href="${base}/chitiet"></a>
                        <div class="img-item">
                            <img src="${base}/img/imgdanhmuc/item-sp7.png" alt="">
                        </div>
                        <h3>TigerSugar.Fruit&Tea</h3>
                        <h4>Cà Phê - Trà - Sinh Tố - Nước Ép</h4>
                        <div class="infor">
                            <i class="ti-star"></i><span>3.8</span><i class="ti-alarm-clock"></i><span>15 phút</span><i
                                class="ti-control-record"></i><span>2km</span>
                        </div>
                        <div class="sale">
                            <i class="ti-tag"></i><span>Ưu đãi đến 55k</span>
                        </div>
                    </div>
                    <!-- /body-item -->
                    <!-- body-item -->
                    <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                    	<a href="${base}/chitiet"></a>
                        <div class="img-item">
                            <img src="${base}/img/imgdanhmuc/item-sp8.png" alt="">
                        </div>
                        <h3>Bún Đậu Mẹt - Bạn Tôi</h3>
                        <h4>Bún - Phở - Mì - Hủ tiếu</h4>
                        <div class="infor">
                            <i class="ti-star"></i><span>4.4</span><i class="ti-alarm-clock"></i><span>20 phút</span><i
                                class="ti-control-record"></i><span>3.9km</span>
                        </div>
                        <div class="sale">
                            <i class="ti-tag"></i><span>Đồng giá 53k</span>
                        </div>
                    </div>
                    <!-- /body-item -->
                    <!-- body-item -->
                    <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                    <a href="${base}/chitiet"></a>
                        <div class="img-item">
                            <img src="${base}/img/imgdanhmuc/item-sp9.png" alt="">
                        </div>
                        <h3>Pizza Hut - Hồ Tùng Mậu</h3>
                        <h4>Pizza, Món Quốc Tế </h4>
                        <div class="infor">
                            <i class="ti-star"></i><span>4.2</span><i class="ti-alarm-clock"></i><span>25 phút</span><i
                                class="ti-control-record"></i><span>1.9km</span>
                        </div>
                        <div class="sale">
                            <i class="ti-tag"></i><span>Deal khủng chỉ 10k</span>
                        </div>
                    </div>
                    <!-- /body-item -->
                 
                </div>
                <!-- /body-content -->
                <!-- body-content -->
                <div class="body-content body-content__danhmuc row">
                    <!-- body-item -->
                    <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                    	<a href="${base}/chitiet"></a>
                        <div class="img-item">
                            <img src="${base}/img/imgdanhmuc/item-sp1.png" alt="">
                        </div>
                        <h3>Cơm Gà Singapore - Dương Khuê</h3>
                        <h4>Cơm, Gà</h4>
                        <div class="infor">
                            <i class="ti-star"></i><span>4.3</span><i class="ti-alarm-clock"></i><span>25 phút</span><i
                                class="ti-control-record"></i><span>2.9km</span>
                        </div>
                        <div class="sale">
                            <i class="ti-tag"></i><span>Đồng giá 40k</span>
                        </div>
                    </div>
                    <!-- /body-item -->
                    <!-- body-item -->
                    <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                    	<a href="${base}/chitiet"></a>
                        <div class="img-item">
                            <img src="${base}/img/imgdanhmuc/item-sp2.png" alt="">
                        </div>
                        <h3>Sữa Chua Trân Châu Hạ Long</h3>
                        <h4>Tráng Miệng</h4>
                        <div class="infor">
                            <i class="ti-star"></i><span>3.8</span><i class="ti-alarm-clock"></i><span>15 phút</span><i
                                class="ti-control-record"></i><span>2km</span>
                        </div>
                        <div class="sale">
                            <i class="ti-tag"></i><span>Ưu đãi đến 25k</span>
                        </div>
                    </div>
                    <!-- /body-item -->
                    <!-- body-item -->
                    <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                    	<a href="${base}/chitiet"></a>
                        <div class="img-item">
                            <img src="${base}/img/imgdanhmuc/item-sp3.png" alt="">
                        </div>
                        <h3>Bếp nhà bắp</h3>
                        <h4>Cà Phê-Trà-Sinh Tố-Nước Ép</h4>
                        <div class="infor">
                            <i class="ti-star"></i><span>3.8</span><i class="ti-alarm-clock"></i><span>20 phút</span><i
                                class="ti-control-record"></i><span>3.9km</span>
                        </div>
                        <div class="sale">
                            <i class="ti-tag"></i><span>Đồng giá 53k</span>
                        </div>
                    </div>
                    <!-- /body-item -->
                    <!-- body-item -->
                    <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                    	<a href="${base}/chitiet"></a>
                        <div class="img-item">
                            <img src="${base}/img/imgdanhmuc/item-sp5.png" alt="">
                        </div>
                        <h3>ROSIER - Fresh Tea & Coffee</h3>
                        <h4>Trà Sữa, Tạp Dề Bạc</h4>
                        <div class="infor">
                            <i class="ti-star"></i><span>3.8</span><i class="ti-alarm-clock"></i><span>10 phút</span><i
                                class="ti-control-record"></i><span>1.9km</span>
                        </div>
                        <div class="sale">
                            <i class="ti-tag"></i><span>Deal khủng chỉ 10k</span>
                        </div>
                    </div>
                    <!-- /body-item -->
                   
                </div>
                <!-- body-content -->
                <!-- body-content -->
                <div class="body-content body-content__danhmuc row" style="padding-bottom: 70px;">
                    <!-- body-item -->
                    <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                    	<a href="${base}/chitiet"></a>
                        <div class="img-item">
                            <img src="${base}/img/imgtrangchu/img-item1.png" alt="">
                        </div>
                        <h3>Bún Hải Sản Phú Thịnh</h3>
                        <h4>Bún - Phở - Mì - Hủ tiếu</h4>
                        <div class="infor">
                            <i class="ti-star"></i><span>3.8</span><i class="ti-alarm-clock"></i><span>25 phút</span><i
                                class="ti-control-record"></i><span>2.9km</span>
                        </div>
                        <div class="sale">
                            <i class="ti-tag"></i><span>Đồng giá 33k</span>
                        </div>
                    </div>
                    <!-- /body-item -->
                    <!-- body-item -->
                    <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                    	<a href="${base}/chitiet"></a>
                        <div class="img-item">
                            <img src="${base}/img/imgtrangchu/img-item2.png" alt="">
                        </div>
                        <h3>Hải sản Thiên Ngọc</h3>
                        <h4>Hải Sản</h4>
                        <div class="infor">
                            <i class="ti-star"></i><span>3.8</span><i class="ti-alarm-clock"></i><span>15 phút</span><i
                                class="ti-control-record"></i><span>2km</span>
                        </div>
                        <div class="sale">
                            <i class="ti-tag"></i><span>Ưu đãi đến 55k</span>
                        </div>
                    </div>
                    <!-- /body-item -->
                    <!-- body-item -->
                    <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                    	<a href="${base}/chitiet"></a>
                        <div class="img-item">
                            <img src="${base}/img/imgtrangchu/img-item3.png" alt="">
                        </div>
                        <h3>Highlands Coffee - Vinhome</h3>
                        <h4>Bún - Phở - Mì - Hủ tiếu</h4>
                        <div class="infor">
                            <i class="ti-star"></i><span>3.8</span><i class="ti-alarm-clock"></i><span>20 phút</span><i
                                class="ti-control-record"></i><span>3.9km</span>
                        </div>
                        <div class="sale">
                            <i class="ti-tag"></i><span>Đồng giá 53k</span>
                        </div>
                    </div>
                    <!-- /body-item -->
                    <!-- body-item -->
                    <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                    	<a href="${base}/chitiet"></a>
                        <div class="img-item">
                            <img src="${base}/img/imgtrangchu/img-item4.png" alt="">
                        </div>
                        <h3>Cơm gà Anh Ngọc</h3>
                        <h4>Cơm Gà</h4>
                        <div class="infor">
                            <i class="ti-star"></i><span>3.8</span><i class="ti-alarm-clock"></i><span>10 phút</span><i
                                class="ti-control-record"></i><span>1.9km</span>
                        </div>
                        <div class="sale">
                            <i class="ti-tag"></i><span>Deal khủng chỉ 10k</span>
                        </div>
                    </div>
                    <!-- /body-item -->
                  
                </div>
                <!-- body-content -->
            </div>
            <!-- /content -->
            <!-- see-all -->
            <div class="see-all see-all__danhmuc">
                <a href="#">Read More</a>
            </div>
            <!-- /see-all -->
        </div>
        <!-- /container -->
        <!-- footer -->
        <jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
        <!-- /footer -->

    </div>
</body>

</html>