<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Check out</title>
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
</head>
<body>
	<jsp:include page="/view/header_component.jsp"></jsp:include>
	<section class="h-100 h-custom" style="background-color: #eee">
		<div class="container cartshop-container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col">
					<div class="card">
						<div class="card-body p-4">
							<div class="row">
								<div class="col-lg-12">
									<h5 class="mb-3"></h5>
									<hr />
									<table class="table">
										<tr>
											<th
												style="text-align: center; width: 300px; border: 1px solid #ccc;">
												Tên sản phẩm</th>
											<th
												style="text-align: center; width: 300px; border: 1px solid #ccc;">
												Hình ảnh</th>
											<th
												style="text-align: center; width: 200px; border: 1px solid #ccc;">
												Kích thước</th>
											<th
												style="text-align: center; width: 200px; border: 1px solid #ccc;">
												Giá</th>
											<th
												style="text-align: center; width: 200px; border: 1px solid #ccc;">
												Số lượng</th>
											<th
												style="text-align: center; width: 300px; border: 1px solid #ccc;">
												Thành tiền</th>
											<th
												style="text-align: center; width: 300px; border: 1px solid #ccc;">
												Ngày đặt hàng</th>
											<th
												style="text-align: center; width: 300px; border: 1px solid #ccc;">
												Trạng thái</th>

										</tr>
										<c:forEach items="${listOrder }" var="order1">
											<tr>
												<td
													style="text-align: center; width: 300px !important; border: 1px solid #ccc;">
													${order1.product.title }</td>
												<td
													style="text-align: center; width: 300px !important; border: 1px solid #ccc;">
													<img alt="" src="${order1.product.image }"
													style="max-height: 100px">

												</td>
												<td
													style="text-align: center; width: 200px !important; border: 1px solid #ccc;">${order1.size.nameSize }

												</td>
												<td
													style="text-align: center; width: 200px !important; border: 1px solid #ccc;">${order1.product.price }

												</td>
												<td
													style="text-align: center; width: 200px !important; border: 1px solid #ccc;">
													${order1.quantity }</td>
												<td
													style="text-align: center; width: 200px !important; border: 1px solid #ccc;">${order1.quantity * order1.product.price  }

												</td>
												<td
													style="text-align: center; width: 200px !important; border: 1px solid #ccc;">${order1.order.buyDate }

												</td>

												<c:if test="${order1.order.statusOrder == false }">
													<td
														style="text-align: center; width: 200px !important; border: 1px solid #ccc;">
														Chờ xác nhận đơn hàng</td>

												</c:if>
												<c:if test="${order1.order.statusOrder == true }">
													<td
														style="text-align: center; width: 200px !important; border: 1px solid #ccc;">
														Đang giao hàng</td>

												</c:if>

											</tr>
										</c:forEach>

									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="/view/footer_component.jsp"></jsp:include>
</body>
</html>
