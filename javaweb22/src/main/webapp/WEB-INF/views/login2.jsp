<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- import JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- import thư viện spring-form -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Đăng nhập vào Stardom</title>
    <link rel="stylesheet" href="${base }/assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="${base }/assets/vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="${base }/assets/css/base.css">
    <link rel="stylesheet"
	href="${base}/font/themify-icons-font/themify-icons/themify-icons.css">
	<link rel="shortcut icon" href="${base}/img/imgtrangchu/iconLogoOffStardomChuan.png" />
  </head>
  <body>
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth">
          <div class="row flex-grow">
            <div class="col-lg-4 mx-auto">
              <div class="auth-form-light text-left p-5">
                <div class="brand-logo">
                  <!-- <img src="../../assets/images/logo.svg"> -->
                  <h2>Stardom</h2>
                </div>
                <h4>Xin chào! Hãy bắt đầu trải nghiệm ngay</h4>
                <h6 class="font-weight-light">Đăng nhập để tiếp tục.</h6>
                <form method="POST" action="${base }/login_processing_url" class="pt-3">
                   <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                   <!-- kiểm tra xem đã login thành công hay không, bằng cách kiểm tra request param login_error -->
					<c:if test="${not empty param.login_error}">
						<div class="alert alert-danger" role="alert">
							Đăng nhập thất bại, nhập lại!
						</div>
					</c:if>
                  <div class="form-group">
                    <input type="text" name="username" class="form-control form-control-lg" id="exampleInputEmail1" placeholder="Tài khoản">
                  </div>
                  <div class="form-group">
                    <input type="password" name="password" class="form-control form-control-lg" id="exampleInputPassword1" placeholder="Mật khẩu">
                  </div>
                  <div class="mt-3">
                    <button class="btn btn-block btn-gradient-primary btn-lg font-weight-medium auth-form-btn" type="submit">ĐĂNG NHẬP</button>
                  </div>
                  <div class="my-2 d-flex justify-content-between align-items-center">
                    <div class="form-check">
                      <label class="form-check-label text-muted">
                        <input type="checkbox" class="form-check-input">Nhớ mật khẩu
                        <i class="input-helper"></i>
                       </label>
                    </div>
                    <a href="#" class="auth-link text-black">Bạn quên mật khẩu?</a>
                  </div>
                  <div class="mb-2">
                    <button type="button" class="btn btn-block btn-facebook auth-form-btn">
                      <i class="mdi mdi-facebook me-2"></i>Kết nối bằng tài khoản facebook </button>
                  </div>
                  <div class="text-center mt-4 font-weight-light"> Bạn chưa có tài khoản? <a href="${base}/register" class="text-primary" style="color: #9a55ff;">Đăng Ký</a>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="${base }/assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="${base }/assets/js/off-canvas.js"></script>
    <script src="${base }/assets/js/hoverable-collapse.js"></script>
    <script src="${base }/assets/js/misc.js"></script>
    <!-- endinject -->
  </body>
</html>