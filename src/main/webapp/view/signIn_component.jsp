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
<title>Trà sữa chất lượng thấp</title>
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
   .edit{
   color: red;
   margin-left: 160px;
   }
</style>
</head>
<body>
	<jsp:include page="/view/header_component.jsp"></jsp:include>
	<div class="container cartegory-container" style="">
		<div class="row">
			<div class="col-sm-6">
				<form:form action="/login" method="post" modelAttribute="user">
					<h1 class="auth-title container">Bạn đã có tài khoản YVY</h1>
					<p class="auth-description container">Nếu bạn đã có tài khoản,
						hãy đăng nhập để tích lũy điểm thành viên và nhận được những ưu
						đãi tốt hơn</p>
					<form:input type="email" class="form-control form-signin"
						path="email" placeholder="Email" value="${email }" />
					<form:errors path="email" cssClass="edit"></form:errors>

					<form:password class="form-control form-signin" path="password"
						placeholder="Mật khẩu" value="${password }" />
					<form:errors path="password"  cssClass="edit"></form:errors>

					<div class="save">
						<label class="save-forgot"> <input type="checkbox"
							value="true" name="check" /> <span class="">Ghi nhớ mật
								khẩu</span>
						</label> <a href="#!forgot" style="color: #251f20" class="">Quên mật
							khẩu?</a>
					</div>
					<button type="submit" class="btn-log btn-large container"
						style="color: white;">Đăng nhập</button>
				</form:form>
			</div>
			<div class="col-sm-6">
				<h1 class="auth-title container">Khách hàng mới của Đồng hồ Hải
					Triều</h1>
				<p class="auth-description container">Nếu bạn chưa có tài khoản
					trên ivymoda.com, hãy sử dụng tùy chọn này để truy cập biểu mẫu
					đăng ký.</p>
				<p class="auth-description container">Bằng cách cung cấp cho IVY
					moda thông tin chi tiết của bạn, quá trình mua hàng trên
					ivymoda.com sẽ là một trải nghiệm thú vị và nhanh chóng hơn!</p>
				<a class="logreg_btn" href="#!register">
					<button class="btn-log btn-large container">Đăng kí</button>
				</a>
			</div>
		</div>
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
