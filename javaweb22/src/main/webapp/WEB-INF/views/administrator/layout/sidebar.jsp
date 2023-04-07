<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- import JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- partial:partials/_sidebar.html -->
			<nav class="sidebar sidebar-offcanvas" id="sidebar">
				<ul class="nav">
					<li class="nav-item nav-profile"><a href="${base }/admin/trangchu" class="nav-link">
							<div class="nav-profile-image">
								<img src="${base}/img/images/anhdaidien.jpg" alt="profile">
								<span class="login-status online"></span>
								<!--change to offline or busy as needed-->
							</div>
							<div class="nav-profile-text d-flex flex-column">
								<span class="font-weight-bold mb-2">Quang Anh</span> <span
									class="text-secondary text-small">Quản lý dự án</span>
							</div> <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="${base }/admin/trangchu">
							<span class="menu-title">Trang Chủ</span> <i
							class="mdi mdi-home menu-icon"></i>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false"
						aria-controls="ui-basic"> <span class="menu-title">Quản
								trị danh mục</span> <i class="menu-arrow"></i> <i
							class="mdi mdi-crosshairs-gps menu-icon"></i>

					</a>
						<div class="collapse" id="ui-basic">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="${base}/admin/cuahang">Cửa hàng</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/LoaiDanhMuc.html">Loại danh mục</a></li>
								<li class="nav-item"><a class="nav-link"
									href="${base}/admin/sanpham">Sản Phẩm</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/BaiViet.html">Bài viết</a></li>

							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						data-bs-toggle="collapse" href="#ui-basic1" aria-expanded="false"
						aria-controls="ui-basic1"> <span class="menu-title">Quản
								trị giao diện</span> <i class="menu-arrow"></i> <i
							class="mdi mdi-crosshairs-gps menu-icon"></i>
					</a>
						<div class="collapse" id="ui-basic1">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/buttons.html">Slider</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/SanPham.html">Hình ảnh</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/SanPham.html">Hỗ trợ trực tuyến</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/SanPham.html">Thông tin</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/SanPham.html">Nội dung khác</a></li>

							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						data-bs-toggle="collapse" href="#ui-basic2" aria-expanded="false"
						aria-controls="ui-basic2"> <span class="menu-title">Quản
								trị thông tin</span> <i class="menu-arrow"></i> <i
							class="mdi mdi-crosshairs-gps menu-icon"></i>
					</a>
						<div class="collapse" id="ui-basic2">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/buttons.html">Danh sách đơn hàng</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/SanPham.html">Khách hàng liên hệ</a></li>

							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						data-bs-toggle="collapse" href="#ui-basic3" aria-expanded="false"
						aria-controls="ui-basic3"> <span class="menu-title">Cấu
								hình Admin</span> <i class="menu-arrow"></i> <i
							class="mdi mdi-crosshairs-gps menu-icon"></i>
					</a>
						<div class="collapse" id="ui-basic3">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/QuanLyAdmin.html">Quản lý admin</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/SanPham.html">Danh sách quyền</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/ThongTinAdmin.html">Thông tin admin</a></li>

							</ul>
						</div></li>

					<li class="nav-item"><a class="nav-link"
						data-bs-toggle="collapse" href="#general-pages"
						aria-expanded="false" aria-controls="general-pages"> <span
							class="menu-title">Tài liệu Admin</span> <i class="menu-arrow"></i>
							<i class="mdi mdi-medical-bag menu-icon"></i>
					</a>
						<div class="collapse" id="general-pages">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="pages/samples/blank-page.html"> Blank Page </a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/samples/login.html"> Login </a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/samples/register.html"> Register </a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/samples/error-404.html"> 404 </a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/samples/error-500.html"> 500 </a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/icons/mdi.html"> <span class="menu-title">Icons</span>
										<i class="mdi mdi-contacts menu-icon"></i>
								</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/forms/basic_elements.html"> <span
										class="menu-title">Forms</span> <i
										class="mdi mdi-format-list-bulleted menu-icon"></i>
								</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/charts/chartjs.html"> <span class="menu-title">Charts</span>
										<i class="mdi mdi-chart-bar menu-icon"></i>
								</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/tables/basic-table.html"> <span
										class="menu-title">Tables</span> <i
										class="mdi mdi-table-large menu-icon"></i>
								</a></li>
							</ul>
						</div></li>
					<li class="nav-item sidebar-actions"><span class="nav-link">
							<div class="border-bottom">
								<h6 class="font-weight-normal mb-3">Projects</h6>
							</div>
							<button class="btn btn-block btn-lg btn-gradient-primary mt-4">+
								Add a project</button> <!-- <div class="mt-4">
                  <div class="border-bottom">
                    <p class="text-secondary">Categories</p>
                  </div>
                  <ul class="gradient-bullet-list mt-4">
                    <li>Free</li>
                    <li>Pro</li>
                  </ul>
                </div> -->
					</span></li>
				</ul>
			</nav>
			<!-- partial -->