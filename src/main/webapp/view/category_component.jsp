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
<title>Sản phẩm</title>
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
	<div class="container cartegory-container">
		<div class="row cartegory-list">
			<div class="col-sm-3 mb-lg-0 mb-2">
				<div class="container-fluid">
					<div class="row" id="fs_app">
						<section class="col-12" id="fs_header_bar">
							<div class="row">
								<div class="col-2">
									<i class="fa fa-chevron-left"></i>
								</div>
								<div class="col-10" id="fs_page_title">Lọc sản phẩm</div>
							</div>
							<div class="form-filter col-sm-12">
								<section>
									<div class="input-group mb-3">
										<form action="/search" method="get">
											<select name="name" class="custom-select"
												id="inputGroupSelect02">
												<c:forEach items="${categoryName }" var="category">
													<option value="${category.title }">${category.title }</option>
												</c:forEach>
											</select> <input type="submit" formaction="/search/the-loai"
												value="Lọc sản phẩm">
										</form>
									</div>
								</section>
							</div>
						</section>
						<section class="col-sm" id="fs_price_body">
							<div>
								<form action="/search/price" method="get">
									<span class="heading"> Theo giá </span>
									<div class="row">
										<div class="col-6 active">
											<select name="price1">
												<option value="0">0</option>
												<option value="10">10</option>
												<option value="20">20</option>
												<option value="30">30</option>
												<option value="40">40</option>
											</select>
										</div>
										<div class="col-6">
											<select name="price2">
												<option value="0">0</option>
												<option value="10">10</option>
												<option value="20">20</option>
												<option value="30">30</option>
												<option value="40">40</option>

											</select>
										</div>
									</div>
									<input type="submit" value="Lọc theo giá">

								</form>
							</div>
						</section>
						<section class="col-12" id="fs_distance_body">
							<span class="heading"> By Distance </span>
							<div class="contents">
								<ul>
									<li><span>From 1 km to 3 km</span> <span
										class="text-right"></span></li>
									<li class="active"><span>From 4 km to 7 km</span> <span
										class="text-right"> <i class="fa fa-check"></i>
									</span></li>
									<li><span>From 8 km to 10 km</span> <span
										class="text-right"></span></li>
								</ul>
							</div>
						</section>

						<section class="col-12" id="fs_time_body">
							<span class="heading"> By Time </span>
							<div class="contents">
								<ul>
									<li><span>Less than 30 Min</span> <span class="text-right"></span>
									</li>
									<li><span>30 Min - 45 Min</span> <span class="text-right"></span>
									</li>
									<li class="active"><span>45 Min - 55 Min</span> <span
										class="text-right"> <i class="fa fa-check"></i>
									</span></li>
								</ul>
							</div>
						</section>
						<section class="col-12" id="fs_rating">
							<span class="heading"> By Rating </span>
							<div class="contents">
								<ul>
									<li><span> <i class="fa fa-star dark"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i>
									</span> <span class="text-right"></span></li>
									<li><span> <i class="fa fa-star dark"></i> <i
											class="fa fa-star dark"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i>
									</span> <span class="text-right"></span></li>
								</ul>
							</div>
						</section>
					</div>
				</div>
			</div>
			<div class="row col-sm-9">
				<c:forEach items="${productList.content }" var="product">
					<div class="col-sm-4">
						<div class="card">
							<div class="img-container">
								<div
									class="d-flex justify-content-between align-items-center p-2 first">
									<span class="percent">50%</span> <span class="wishlist"><i
										class="fa fa-heart"></i></span>
								</div>
								<a href="/details/${product.id }?name=${product.title}"><img
									style="margin-left: 0px" src="${product.image }"
									class="img-fluid" /></a>
							</div>
							<div class="product-detail-container">
								<div class="align-items-center">
									<h1
										style="text-align: center; font-size: 20px; line-height: 19.5px; margin: 0px 0px 8px; padding: 0px 13px; text-align: center;"
										class="mb-0 w-100">${product.title }</h1>
									<div
										style="display: inline; font-size: 18px; line-height: 27px; margin: 0px 5px 0px 0px; text-align: center; justify-content: center;"
										class="d-flex justify-content-between">
										<span style="text-decoration: line-through; color: #808080"
											class="font-weight-bold">59.000 đ </span> <span
											style="color: #c01926" class="font-weight-bold">${product.price }
											đ </span> <span style="color: #575555" class="font-weight-bold">50%
										</span>
									</div>
								</div>
								<div class="d-flex justify-content-center align-items-center">
									<div class="small-ratings">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <span style="color: #333333">13
											Đánh giá</span>
									</div>
								</div>


							</div>
							<div class="">
								<a href="/details/${product.id}?name=${product.title }"
									class="btn btn-block">Xem chi tiết</a>
							</div>
						</div>
					</div>
				</c:forEach>

				<nav aria-label="Page navigation example">
					<ul class="pagination" style="margin-left: 200px">
						<c:if test="${index > 0}">
							<li class="page-item"><a class="page-link"
								href="/product/page?number=${(index - 1 ) + 1}">Previous</a></li>
						</c:if>
						<c:forEach begin="1" end="${endIndex }" var="i">
							<li class="page-item"><a class="page-link"
								href="/product/page?number=${i }">${i }</a></li>
						</c:forEach>

						<c:if test="${index + 1 < endIndex}">
							<li class="page-item"><a class="page-link"
								href="/product/page?number=${(index + 1 ) + 1}">Next</a></li>
						</c:if>
					</ul>
				</nav>

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