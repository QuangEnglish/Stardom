<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- import JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  <!-- footer -->
        <div class="footer">
            <div class="footer-wrapper">
                <ul class="footer-list-icon">
                    <li><a href="https://www.facebook.com/quang.sam.777/" target="_blank"><i
                                class="mdi mdi-facebook"></i></a></li>
                    <li><a href="#"><i class="mdi mdi-twitter"></i></a></li>
                    <li><a href="#"><i class="mdi mdi-instagram"></i></a></li>
                    <li><a href="#"><i class="mdi mdi-youtube"></i></a></li>
                </ul>
                <div class="footer-content">
                    <div class="footer-item">
                        <ul>
                            <li>
                                <h4 style="font-weight: bold; font-size: 23px;color: var(--secondary-icon);">Về Stardom
                                </h4>
                            </li>
                            <li><a href="#">Giới thiệu Stardom</a></li>
                            <li><a href="#">Tin tức</a></li>
                            <li><a href="#">Trung tâm trợ giúp</a></li>
                            <li><a href="#">Chính sách bảo mật</a></li>
                        </ul>
                    </div>
                    <div class="footer-item">
                        <ul>
                            <li>
                                <h4 style="font-weight: bold; font-size: 23px;color: var(--secondary-icon);">Được truy
                                    cập nhiều nhất</h4>
                            </li>
                            <li><a href="#">Live hot</a></li>
                            <li><a href="#">Lịch trình</a></li>
                            <li><a href="#">Sự kiện nổi bật</a></li>
                        </ul>
                    </div>
                    <div class="footer-item">
                        <h4 style="font-weight: bold; font-size: 23px;color: var(--secondary-icon); padding: 5px 0px;">
                            Đăng ký thông báo</h4>
                        <p>Đăng ký nhận bản tin của chúng tôi để nhận tin tức, cập nhật các nội dung khác qua email.
                        </p>
                        <div class="search-email">
                            <input type="text" name="search-email" id="search-email" placeholder="Email">
                            <button type="submit" id="search-email">Gửi</button>
                        </div>
                    </div>
                </div>
                <div class="footer-pay">
                    <div class="logo" style="background-color: var(--blacklight-color); margin-left: -15px;">
                        <a class="brand-logo" href="${base }/home/shop"><img class="logo-img" src="${base }/img/imgtrangchu/iconLogoOffStardom.png"
                            alt="logo" /></a>
                        <a  href="${base }/home/shop"><h2 class="brand-title">Stardom</h2></a>
                    </div>
                    <p>© Bản quyền 2023 | Đã đăng ký Bản quyền</p>
                    <ul class="footer-list-pay">
                        <li><img src="${base }/img/imgtrangchu/img-momo.png" alt=""></li>
                        <li><img src="${base }/img/imgtrangchu/img-visa.jpg" alt=""></li>
                        <li><img src="${base }/img/imgtrangchu/img-paypal.jpg" alt=""></li>
                        <li><img src="${base }/img/imgtrangchu/img-zalopay.png" alt=""></li>
                        <li><img src="${base }/img/imgtrangchu/img-no2.png" alt=""></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- /footer -->