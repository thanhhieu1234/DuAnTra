<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vn">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Trà sữa chất lượng cao</title>
<link rel="stylesheet"
	href="/view/bootstrap-5.2.2-dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="/view/icofont/icofont.min.css" />
<link rel="stylesheet" href="/view/icofont/icofont.css" />
<link rel="stylesheet" href="/view/styles.css" />
<link rel="stylesheet" href="/view/logreg.css" />
<link rel="stylesheet"
	href="/view/assets/fonts/fontawesome-free-6.0.0/css/fontawesome.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css" />
<style type="text/css">
.edit {
	color: red;
	margin-left: 20px;
}
</style>
</head>
<body>
	<jsp:include page="/view/header_component.jsp"></jsp:include>
	<div class="container_register cartegory-container">

		<form:form action="/register" method="post"
			modelAttribute="registerUser">
			<div class="form-Up_signUp">
				<div class=" row_signUp">
					<h4 class="information_signUp">Thông tin khách hàng</h4>
					<div class="form-control_signUp">
						<div class="control-input_signUp">
							<p class="control-item_signUp">Email:*</p>
							<form:input path="email" type="email" class="input-form_signUp"
								placeholder="Email..." />
							<form:errors path="email" cssClass="edit"></form:errors>
							<div style="color: red; margin-left: 15px;">${error }</div>
						</div>
						<div class="control-input_signUp">
							<p class="control-item_signUp">Điện thoại:*</p>
							<form:input path="phone" type="number" class="input-form_signUp"
								placeholder="Điện thoại..." />
						</div>
						<div class="control-input_signUp">
							<p class="control-item_signUp">Tỉnh/thành phố</p>
							<form:select path="city" class="input-form_signUp">
								<form:options items="${cities }" />
							</form:select>
						</div>
						<div class="control-input_signUp">
							<p class="control-item_signUp">Quận/Huyện</p>
							<form:select path="district" class="input-form_signUp">
								<form:options items="${districts }" />
							</form:select>
						</div>
						<div class="control-input_signUp">
							<p class="control-item_signUp">Địa chỉ</p>
							<form:input path="address" class="input-form_signUp"
								placeholder="Địa chỉ..." />
						</div>
					</div>
				</div>
				<div class=" row_signUp" style="margin-left: 300px">
					<h4 class="information_signUp">Thông tin đăng nhập</h4>
					<div class="form-control_signUp">
						<div class="control-input_signUp">
							<p class="control-item_signUp">Mật khẩu:*</p>
							<form:password path="password" class="input-form_signUp"
								placeholder="Mật khẩu..." />
							<form:errors path="password" cssClass="edit"></form:errors>
							<div style="margin-left: 15px;color: red;">${message }</div>

						</div>

						<div class="control-input_signUp">
							<p class="control-item_signUp">Nhập lại mật khẩu</p>
							<input type="password" name="r_password"
								class="input-form_signUp" placeholder="Nhập lại mật khẩu..."
								required="required" /> 
							<div style="margin-left: 15px;color: red;">${message }</div>
								
						</div>
						<a style="margin-top: 60px" class="auth-link" href="/login">Đã
							có tài khoản</a>
						<button class="auth-log-btn_signUp" type="submit"
							formaction="/register/">Đăng kí ngay</button>
					</div>
				</div>
			</div>
		</form:form>

	</div>

	<jsp:include page="/view/footer_component.jsp"></jsp:include>
</body>

<script src="/view/bootstrap-5.2.2-dist/js/bootstrap.bundle.min.js"></script>
<script src="/view/bootstrap-5.2.2-dist/js/angular.min.js"></script>
<script src="/view/bootstrap-5.2.2-dist/js/angular-route.min.js"></script>
<script src="/view/route_component.js"></script>
<script src="/view/bootstrap-5.2.2-dist/js/dirPaginate.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
</html>
