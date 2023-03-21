<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- import JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- address -->
        <div id="address">
            <p style="padding: 48px 24px 0px 24px;" id="p1-address">Good Morning</p>
            <p style="padding: 0px 24px 48px 24px;" id="p2-address">Let's explore good food near you.</p>
            <div class="search">
                <div class="ti-location-pin" style="height: 48px; width: 20%; line-height: 48px; text-align: center;">
                </div>
                <input type="text" name="add" id="add" placeholder="Nhập địa chỉ của bạn"
                    style="height: 46px; width: 60%;">
                <div class="ti-target" style="height: 48px; width: 20%; line-height: 48px; text-align: center;"></div>
            </div>
            <div class="search-btn">
                <button type="submit" class="search-btn--sub" id="add"><a href="#">Tìm kiếm</a></button>
            </div>
        </div>
        <!-- /address -->