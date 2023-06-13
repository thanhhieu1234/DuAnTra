<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
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
</head>
<body>
	<jsp:include page="/view/header_component.jsp"></jsp:include>

	<div class="container details-container">

		<div class="row details-content">

			<div class="col-sm-6 details-products">

				<div class="details-header">
					<div class="promotion">
						<p class="promotion-item">25%</p>
					</div>
					<button class="details-interactive">
						<i class="icofont-heart details-icons"></i>
					</button>
				</div>
				<div id="carouselExampleDark" class="carousel carousel-dark slide"
					data-bs-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active" data-bs-interval="2000">
							<img src="${product.image }" class="details-img" alt="..." />
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleDark" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleDark" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
				<div class="row details-img-list">
					<div class="col-sm-3">
						<img type="button" data-bs-target="#carouselExampleDark"
							data-bs-slide-to="0" aria-current="true" aria-label="Slide 1"
							src="${product.image }" class="img-small active" alt="" />
					</div>
					<div class="col-sm-3">
						<img type="button" data-bs-target="#carouselExampleDark"
							data-bs-slide-to="1" aria-label="Slide 2" src="${product.image }"
							class="img-small" alt="" />
					</div>
					<div class="col-sm-3">
						<img type="button" data-bs-target="#carouselExampleDark"
							data-bs-slide-to="2" aria-label="Slide 3" src="${product.image }"
							class="img-small" alt="" />
					</div>
					<div class="col-sm-3">
						<img type="button" data-bs-target="#carouselExampleDark"
							data-bs-slide-to="3" aria-label="Slide 4" src="${product.image }"
							class="img-small" alt="" />
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<span class="details-name">
					<h1>${product.title }</h1>
				</span>
				<div class="divider"></div>
				<div class="details-product">
					<p class="price-old">59.000 Đ</p>
					<p class="price">${product.price }Đ</p>
				</div>
				<p class="title-details">${product.detail }</p>
				<div class="size d-flex justify-content-center"
					style="margin-right: 340px">
					<form action="/addtocard" method="get">
						<c:forEach items="${sizeList }" var="size">
							<label style="margin: 8px 4px" class="radio"><input
								type="radio" name="size" value="${size.id}" /><span>${size.nameSize }</span></label>
						</c:forEach>
						<c:if test="${sessionScope.user == null}">
							<a href="/login">
								<h6>Bạn cần đăng nhập để tiếp tục mua hàng -> LOGIN</h6>
							</a>
						</c:if>
						<c:if test="${sessionScope.user != null}">
							<div style="width: 100%;">
								<button type="submit"
									formaction="/addtocard/${product.id }/"
									class="btn btn-block">
									<b style="width: 300px">Thêm vào giỏ</b>
								</button>
							</div>
						</c:if>
					</form>
				</div>
				<span class="details-name">
					<h4>Lượt xem: ${product.viewCount }</h4>
				</span>
				<div class="details-cart">
					<div class="details-amount">
						<button class="upanddown">-</button>
						<input type="number" min="0" value="1" class="input-amount" />
						<button class="upanddown">+</button>
					</div>
				</div>
			</div>
		</div>
		<div class="details-content">
			<nav>
				<div class="nav nav-tabs" id="nav-tab" role="tablist">
					<button class="nav-link active" id="nav-home-tab"
						data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
						role="tab" aria-controls="nav-home" aria-selected="true">
						MÔ TẢ</button>
					<button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab"
						data-bs-target="#nav-profile" type="button" role="tab"
						aria-controls="nav-profile" aria-selected="false">ĐÁNH
						GIÁ</button>
				</div>
			</nav>
			<div class="tab-content" id="nav-tabContent">
				<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
					aria-labelledby="nav-home-tab" tabindex="0">
					<div class="description-list">
						<p class="details-description">${product.description }</p>
					</div>
				</div>
				<div class="tab-pane fade" id="nav-profile" role="tabpanel"
					aria-labelledby="nav-profile-tab" tabindex="0">
					<div class="evaluate-list">
						<div class="evaluate-comments">
							<h3 class="normal">Đánh giá</h3>
							<p class="details-description">Chưa có đánh giá nào</p>
						</div>
						<div class="evaluate-comments">
							<div class="evaluate-review">
								<div class="comments-list">
									<h3 class="normal">Hãy là người đầu tiên đánh giá</h3>
									<label for="">Đánh giá của bạn</label>
									<div class="card-details mt-3">
										<div class="d-flex align-items-center">
											<div class="small-ratings">
												<i class="fa fa-star"></i>
											</div>
											<div class="small-ratings">
												<i class="fa fa-star"></i> <i class="fa fa-star"></i>
											</div>
											<div class="small-ratings">
												<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star"></i>
											</div>
											<div class="small-ratings">
												<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star"></i> <i class="fa fa-star"></i>
											</div>
											<div class="small-ratings"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
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
