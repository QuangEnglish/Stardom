<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- import JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 <!-- container -->
        <div id="container">
            <!-- content -->
            <form action="" method="post">
                <div class="content">
                    <!-- address -->
                    <div id="address">
                        <p style="padding: 20px 24px 0px 24px;" id="p1-address">Good Morning</p>
                        <p style="padding: 0px 24px 0px 24px;" id="p2-address">Let's explore good food near you.</p>
                        <div class="search-wrapper">
                            <div class="search">
                                <i class="fa-sharp fa-solid fa-location-dot"></i>
                                <input type="text" name="add" id="conscious" placeholder="Tỉnh..."
                                    style="height: 46px; width: 60%;">
                                    <i class="fa-sharp fa-solid fa-location-crosshairs"></i>
                            </div>
                            <div class="search">
                                <i class="fa-sharp fa-solid fa-location-dot"></i>
                                <input type="text" name="add" id="district" placeholder="Quận, huyện..."
                                    style="height: 46px; width: 60%;">
                                    <i class="fa-sharp fa-solid fa-location-crosshairs"></i>
                            </div>
                            <div class="search">
                                <i class="fa-sharp fa-solid fa-location-dot"></i>
                                <input type="text" name="add" id="wards" placeholder="Phường, xã..."
                                    style="height: 46px; width: 60%;">
                                    <i class="fa-sharp fa-solid fa-location-crosshairs"></i>
                            </div>
                        </div>
                        <div class="search-btn">
                            <button type="submit" class="search-btn--sub" id="add"><a href="#">Tìm Kiếm</a></button>
                        </div>
                    </div>
                    <!-- /address -->
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
                                <option value="4">Quán quen</option>
                            </select>
                        </form>
                    </div>

                    <!-- /title-content-filter -->

                    <!-- body-content -->
                    <div class="body-content row">
                        <!-- body-item -->
                        <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                            <a href="${base }/chitiet"></a>
                            <div class="img-item">
                                <img src="${base }/img/imgtrangchu/img-item1.png" alt="">
                            </div>
                            <h3>Bún Hải Sản Phú Thịnh</h3>
                            <h4>Bún - Phở - Mì - Hủ tiếu</h4>
                            <div class="infor">
                                <i class="ti-star"></i><span>3.8</span><i class="ti-alarm-clock"></i><span>25 phút</span><i
                                    class="ti-control-record"></i><span>2.9km</span>
                            </div>
                            <div class="sale-btnShop">
                                <div class="sale">
                                    <i class="ti-tag"></i><span>Đồng giá 33k</span>
                                </div>
                                <div class="btnShop">
                                    <a href="${base }/chitiet"><i class="ti-shopping-cart"></i>Xem quán</a>
                                </div>
                            </div>
                        </div>
                        <!-- /body-item -->
                        <!-- body-item -->
                        <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                            <a href="./chitiet.html"></a>
                            <div class="img-item">
                                <img src="${base }/img/imgtrangchu/img-item2.png" alt="">
                            </div>
                            <h3>Hải sản Thiên Ngọc</h3>
                            <h4>Hải Sản</h4>
                            <div class="infor">
                                <i class="ti-star"></i><span>3.8</span><i class="ti-alarm-clock"></i><span>15 phút</span><i
                                    class="ti-control-record"></i><span>2km</span>
                            </div>
                            <div class="sale-btnShop">
                                <div class="sale">
                                    <i class="ti-tag"></i><span>Đồng giá 33k</span>
                                </div>
                                <div class="btnShop">
                                    <a href="./chitiet.html"><i class="ti-shopping-cart"></i>Xem quán</a>
                                </div>
                            </div>
                        </div>
                        <!-- /body-item -->
                        <!-- body-item -->
                        <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                            <a href="./chitiet.html"></a>
                            <div class="img-item">
                                <img src="${base }/img/imgtrangchu/img-item3.png" alt="">
                            </div>
                            <h3>Highlands Coffee - Vinhome</h3>
                            <h4>Bún - Phở - Mì - Hủ tiếu</h4>
                            <div class="infor">
                                <i class="ti-star"></i><span>3.8</span><i class="ti-alarm-clock"></i><span>20 phút</span><i
                                    class="ti-control-record"></i><span>3.9km</span>
                            </div>
                            <div class="sale-btnShop">
                                <div class="sale">
                                    <i class="ti-tag"></i><span>Đồng giá 33k</span>
                                </div>
                                <div class="btnShop">
                                    <a href="./chitiet.html"><i class="ti-shopping-cart"></i>Xem quán</a>
                                </div>
                            </div>
                        </div>
                        <!-- /body-item -->
                        <!-- body-item -->
                        <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                            <div class="img-item">
                                <img src="${base }/img/imgtrangchu/img-item6.png" alt="">
                            </div>
                            <h3>Cơm gà Anh Ngọc</h3>
                            <h4>Cơm Gà</h4>
                            <div class="infor">
                                <i class="ti-star"></i><span>3.8</span><i class="ti-alarm-clock"></i><span>10 phút</span><i
                                    class="ti-control-record"></i><span>1.9km</span>
                            </div>
                            <div class="sale-btnShop">
                                <div class="sale">
                                    <i class="ti-tag"></i><span>Đồng giá 33k</span>
                                </div>
                                <div class="btnShop">
                                    <a href="./chitiet.html"><i class="ti-shopping-cart"></i>Xem quán</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- body-content -->
                    <!-- body-content -->
                    <div class="body-content row">
                        <!-- body-item -->
                        <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                            <div class="img-item">
                                <img src="${base }/img/imgtrangchu/img-item5.png" alt="">
                            </div>
                            <h3>Bánh xèo - Nem lụi Phượng</h3>
                            <h4>Bánh Truyền Thống</h4>
                            <div class="infor">
                                <i class="ti-star"></i><span>3.8</span><i class="ti-alarm-clock"></i><span>25 phút</span><i
                                    class="ti-control-record"></i><span>2.9km</span>
                            </div>
                            <div class="sale-btnShop">
                                <div class="sale">
                                    <i class="ti-tag"></i><span>Đồng giá 33k</span>
                                </div>
                                <div class="btnShop">
                                    <a href="./chitiet.html"><i class="ti-shopping-cart"></i>Xem quán</a>
                                </div>
                            </div>
                        </div>
                        <!-- /body-item -->
                        <!-- body-item -->
                        <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                            <div class="img-item">
                                <img src="${base }/img/imgtrangchu/img-item6.png" alt="">
                            </div>
                            <h3>Cơm Thố Anh Nguyễn - Dương..</h3>
                            <h4>Business Order, Cơm, Tạp Dề Bạc</h4>
                            <div class="infor">
                                <i class="ti-star"></i><span>4.5</span><i class="ti-alarm-clock"></i><span>15 phút</span><i
                                    class="ti-control-record"></i><span>3km</span>
                            </div>
                            <div class="sale-btnShop">
                                <div class="sale">
                                    <i class="ti-tag"></i><span>Đồng giá 33k</span>
                                </div>
                                <div class="btnShop">
                                    <a href="./chitiet.html"><i class="ti-shopping-cart"></i>Xem quán</a>
                                </div>
                            </div>
                        </div>
                        <!-- /body-item -->
                        <!-- body-item -->
                        <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                            <div class="img-item">
                                <img src="${base }/img/imgtrangchu/img-item7.png" alt="">
                            </div>
                            <h3>KFC - TTTM Ebest Mall</h3>
                            <h4>Gà Rán - Burger, Cơm, Món Quốc Tế </h4>
                            <div class="infor">
                                <i class="ti-star"></i><span>3.8</span><i class="ti-alarm-clock"></i><span>20 phút</span><i
                                    class="ti-control-record"></i><span>3.9km</span>
                            </div>
                            <div class="sale-btnShop">
                                <div class="sale">
                                    <i class="ti-tag"></i><span>Đồng giá 33k</span>
                                </div>
                                <div class="btnShop">
                                    <a href="./chitiet.html"><i class="ti-shopping-cart"></i>Xem quán</a>
                                </div>
                            </div>
                        </div>
                        <!-- /body-item -->
                        <!-- body-item -->
                        <div class="body-item col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                            <div class="img-item">
                                <img src="${base }/img/imgtrangchu/img-item8.png" alt="">
                            </div>
                            <h3>Trà Đào Quang Anh</h3>
                            <h4>Trà Sữa</h4>
                            <div class="infor">
                                <i class="ti-star"></i><span>5</span><i class="ti-alarm-clock"></i><span>10 phút</span><i
                                    class="ti-control-record"></i><span>1km</span>
                            </div>
                            <div class="sale-btnShop">
                                <div class="sale">
                                    <i class="ti-tag"></i><span>Đồng giá 33k</span>
                                </div>
                                <div class="btnShop">
                                    <a href="./chitiet.html"><i class="ti-shopping-cart"></i>Xem quán</a>
                                </div>
                            </div>
                        </div>
                        <!-- /body-item -->
                    </div>
                    <!-- body-content -->
                    <!-- see-all -->
                    <div class="see-all">
                        <a href="#">See all promotions</a>
                    </div>
                    <!-- /see-all -->
                </div>
            </form>
            <!-- /content -->
            <!-- eat -->
            <div class="eat">
                <div class="title-content title-content__eat" style="padding-top: 40px;">
                    <i class="fa-sharp fa-solid fa-utensils" style="font-size: 40px; margin-right: 10px;"></i>
                    <span>Vạn món ngon tại <span style="color: #b66dff;">Stardom</span>!</span>
                </div>
                <!-- body-eat -->
                <div class="body-eat row">
                    <div class="item-eat col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-6">
                        <a href="${base }/danhmuc"></a>
                        <div class="item-eat__img">
                            <img src="${base }/img/imgtrangchu/item-eat__img1.png" alt="">
                        </div>
                        <p>Đồ uống lạnh</p>
                    </div>
                    <div class="item-eat col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-6">
                        <a href="./danhmuc.html"></a>
                        <div class="item-eat__img">
                            <img src="${base }/img/imgtrangchu/item-eat__img2.png" alt="">
                        </div>
                        <p>Weekend Treats</p>
                    </div>
                    <div class="item-eat col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-6">
                        <a href="./danhmuc.html"></a>
                        <div class="item-eat__img">
                            <img src="${base }/img/imgtrangchu/item-eat__img3.png" alt="">
                        </div>
                        <p>Pizza</p>
                    </div>
                    <div class="item-eat col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-6">
                        <a href="./danhmuc.html"></a>
                        <div class="item-eat__img">
                            <img src="${base }/img/imgtrangchu/item-eat__img4.png" alt="">
                        </div>
                        <p>Cơm</p>
                    </div>
                </div>
                <!-- /body-ear -->
                <!-- body-eat -->
                <div class="body-eat row">
                    <div class="item-eat  col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-6">
                        <div class="item-eat__img">
                            <img src="${base }/img/imgtrangchu/item-eat__img5.png" alt="">
                        </div>
                        <p>Cháo</p>
                    </div>
                    <div class="item-eat  col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-6">
                        <div class="item-eat__img">
                            <img src="${base }/img/imgtrangchu/item-eat__img6.png" alt="">
                        </div>
                        <p>Gà Rán</p>
                    </div>
                    <div class="item-eat  col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-6">
                        <div class="item-eat__img">
                            <img src="${base }/img/imgtrangchu/item-eat__img7.png" alt="">
                        </div>
                        <p>Hủ tiếu</p>
                    </div>
                    <div class="item-eat  col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-6">
                        <div class="item-eat__img">
                            <img src="${base }/img/imgtrangchu/item-eat__img8.png" alt="">
                        </div>
                        <p>Rau trộn</p>
                    </div>
                </div>
                <!-- /body-ear -->
                <!-- body-eat -->
                <div class="body-eat row">
                    <div class="item-eat  col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-6">
                        <div class="item-eat__img">
                            <img src="${base }/img/imgtrangchu/item-eat__img9.png" alt="">
                        </div>
                        <p>Ăn vặt</p>
                    </div>
                    <div class="item-eat  col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-6">
                        <div class="item-eat__img">
                            <img src="${base }/img/imgtrangchu/item-eat__img10.png" alt="">
                        </div>
                        <p>Hiso Party</p>
                    </div>
                    <div class="item-eat  col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-6">
                        <div class="item-eat__img">
                            <img src="${base }/img/imgtrangchu/item-eat__img11.png" alt="">
                        </div>
                        <p>Thịt</p>
                    </div>
                    <div class="item-eat  col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-6">
                        <div class="item-eat__img">
                            <img src="${base }/img/imgtrangchu/item-eat__img12.png" alt="">
                        </div>
                        <p>Trà sữa</p>
                    </div>
                </div>
                <!-- /body-ear -->
            </div>
            <!--/eat -->
            <!-- text-->
            <div class="text-stardom">
                <div class="title-content title-content__eat" style="padding-top: 40px;">
                    <span>Tại sao nên lựa chọn Stardom? </span>
                </div>
                <div class="content-text">
                    <div class="content-text__line">
                        <i class="ti-check" style="color: #00b14f; font-weight: bold;"></i><span
                            style="font-weight: bold;">Nhanh nhất</span><span> - GrabFood cung cấp dịch vụ giao đồ ăn
                            nhanh nhất thị trường.</span>
                    </div>
                    <div class="content-text__line">
                        <i class="ti-check" style="color: #00b14f; font-weight: bold;"></i><span
                            style="font-weight: bold;">Dễ dàng nhất</span><span> - Giờ đây, bạn chỉ cần thực hiện vài cú
                            nhấp chuột hoặc chạm nhẹ là đã có thể đặt đồ ăn. Hãy đặt đồ ăn trực tuyến hoặc tải xuống
                            siêu ứng dụng Grab của chúng tôi để có trải nghiệm nhanh hơn và thú vị hơn.</span>
                    </div>
                    <div class="content-text__line">
                        <i class="ti-check" style="color: #00b14f; font-weight: bold;"></i><span
                            style="font-weight: bold;">Đáp ứng mọi nhu cầu</span><span> - Từ món ăn đặc sản địa phương
                            đến các nhà hàng được ưa thích, nhiều lựa chọn đa dạng chắc chắn sẽ luôn làm hài lòng khẩu
                            vị của bạn.</span>
                    </div>
                    <div class="content-text__line">
                        <i class="ti-check" style="color: #00b14f; font-weight: bold;"></i><span
                            style="font-weight: bold;">Thanh toán dễ dàng</span><span>- Giao và nhận đồ ăn thật dễ dàng.
                            Thanh toán bằng GrabPay thậm chí còn dễ dàng hơn nữa.</span>
                    </div>
                    <div class="content-text__line">
                        <i class="ti-check" style="color: #00b14f; font-weight: bold;"></i><span
                            style="font-weight: bold;">Nhiều quà tặng hơn</span><span> - Tích điểm GrabRewards cho mỗi
                            đơn hàng của bạn và sử dụng điểm thưởng để đổi lấy nhiều ưu đãi hơn.</span>
                    </div>
                </div>

                <div class="title-content title-content__eat cc" style="padding-top: 40px;">
                    <span>Các câu hỏi thường gặp </span>
                </div>
                <div class="grapfood">
                    <span>Stardom là gì?</span>
                    <p>Lunch, Bún Cá Chấm Gốc Đa - Vũ Thạnh for Dinner! We are here to satisfy your hunger with a wide
                        selection of merchant partners in Vietnam. GrabFood là dịch vụ Giao đồ ăn nhanh nhất tại Việt
                        Nam. Chúng tôi đã sắp xếp tất cả các món ăn, nhà hàng và thực phẩm yêu thích của bạn một cách
                        hợp lý để giúp bạn tìm được đồ ăn dễ dàng và nhanh chóng nhất có thể. Tìm và đặt món ăn yêu
                        thích trên khắp Việt Nam - đặt đồ ăn trực tuyến chỉ bằng vài thao tác, từ món Lifted Coffee &
                        Brunch cho bữa sáng, đến Maazi Indian – Nhà Hàng Ấn Độ cho bữa trưa, đến Bún Cá Chấm Gốc Đa – Vũ
                        Thạnh cho bữa tối! Hãy để chúng tôi xua tan cơn đói của bạn nhờ một loạt đối tác bán đồ ăn ở
                        Việt Nam.</p>
                </div>
                <!-- /text-->
                <!-- see-all -->
                <div class="see-all">
                    <a href="#">Read More</a>
                </div>
                <!-- /see-all -->
            </div>

        </div>
        <!-- /container -->