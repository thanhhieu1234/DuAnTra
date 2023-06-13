<%@page import="com.poly.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<div class="header">

	<div class="header-container">
		<div class="container">
			<div class="row">
				<div class="logo col-sm-2s">
					<img class="logo-img"
						src="/view/Image/z4379851682525_de66b98b0f47173d54161de8e22ac2dd-removebg-preview.png"
						alt="" />
				</div>
				<div class="search col-sm-8">
					<form action="/search" method="post">

						<input type="text" name="keyword" class="search-input"
							placeholder="Tìm kiếm" />
						<button type="submit" class="search-btn">
							<i class="icofont-search-1"></i>
						</button>

					</form>
				</div>
				<div class="user row col-sm-2">

					<%
					User user = (User) session.getAttribute("user");
					if (user == null) {
					%>
					<a class="user-item col-sm-6" href="/login">Đăng nhập</a> <a
						class="user-item col-sm-4" href="/register">Đăng kí</a>

					<%
					} else {
					%>
					<div>Xin chào ${user.email }</div>
					<a class="user-item col-sm-6" href="/logout">Đăng xuất</a>

					<%
					}
					%>

					<div class="user-cart col-sm-2">
						<span class="cart-amount"></span> <a href="/shopping-card"><i
							class="icofont-shopping-cart"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="header-bottom">
		<div class="container">
			<nav class="row navbar navbar-expand-lg navbar-dark">
				<div class="row container-fluid">
					<div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
						<ul class="navbar-nav">
							<li class="nav-item dropdown"><a class="nav-link"
								href="/index"> <i class="icofont-home"></i> Trang chủ
							</a></li>
							<li class="nav-item dropdown"><a class="nav-link" href="#">
									<i class="icofont-listine-dots"></i> Giới thiệu
							</a></li>
							<li class="nav-item dropdown"><a class="nav-link"
								href="/product"> <i class="icofont-bag"></i> Sản phẩm
							</a></li>

							<c:if
								test="${sessionScope.user != null && sessionScope.user.admin == false }">
								<li class="nav-item dropdown">

									<div class="dropdown" style="margin-top: -15px;">
										<button
											style="background: white; color: black; font-weight: bold; font-size: 15px; border: black;"
											class="btn btn-secondary dropdown-toggle" type="button"
											id="dropdownMenuButton" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="false">Tài khoản</button>
										<div class="dropdown-menu"
											aria-labelledby="dropdownMenuButton">
											<a class="dropdown-item" href="#">Thông tin tài khoản</a> <a
												class="dropdown-item" href="#">Đổi mật khẩu</a> <a
												class="dropdown-item" href="/user/lich-su-mua-hang">Lịch sử mua hàng</a>
										</div>
									</div>
								</li>

							</c:if>
							<li class="nav-item dropdown"><a class="nav-link" href="#">
									<i class="icofont-phone"></i> Liên hệ
							</a></li>
						</ul>
						<ul class="navbar-nav">
							<li class="nav-items dropdown"><a class="nav-link" href="#">
									English </a></li>
							<li class="nav-items dropdown"><a class="nav-link" href="#">
									Tiếng Việt </a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</div>

</div>
