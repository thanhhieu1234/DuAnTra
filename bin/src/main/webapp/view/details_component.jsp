<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Trà sữa chất lượng thấp</title>
    <link
      rel="stylesheet"
      href="/view/bootstrap-5.2.2-dist/css/bootstrap.min.css"
    />
    <link rel="stylesheet" href="/view/icofont/icofont.min.css" />
    <link rel="stylesheet" href="/view/icofont/icofont.css" />
    <link rel="stylesheet" href="/view/styles.css" />
    <link rel="stylesheet" href="/view/logreg.css" />
    <link
      rel="stylesheet"
      href="/view/assets/fonts/fontawesome-free-6.0.0/css/fontawesome.min.css"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css"
    />
  </head>
  <body>
    <jsp:include page="/view/header_component.jsp"></jsp:include>

    <div iv class="container details-container">
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
          <div
            id="carouselExampleDark"
            class="carousel carousel-dark slide"
            data-bs-ride="carousel"
          >
            <div class="carousel-inner">
              <div class="carousel-item active" data-bs-interval="2000">
                <img
                  src="https://gongcha.com.vn/wp-content/uploads/2022/11/Mint-Chocolate-Milk-Tea-w-Pearl-Iced.png"
                  class="details-img"
                  alt="..."
                />
              </div>
              <div class="carousel-item" data-bs-interval="2000">
                <img
                  src="https://gongcha.com.vn/wp-content/uploads/2022/11/Mint-Chocolate-Milk-Tea-w-Pearl-Iced.png"
                  class="details-img"
                  alt=""
                />
              </div>
              <div class="carousel-item" data-bs-interval="2000">
                <img
                  src="https://gongcha.com.vn/wp-content/uploads/2022/11/Mint-Chocolate-Milk-Tea-w-Pearl-Iced.png"
                  class="details-img"
                  alt=""
                />
              </div>
              <div class="carousel-item" data-bs-interval="2000">
                <img
                  src="https://gongcha.com.vn/wp-content/uploads/2022/11/Mint-Chocolate-Milk-Tea-w-Pearl-Iced.png"
                  class="details-img"
                  alt=""
                />
              </div>
            </div>
            <button
              class="carousel-control-prev"
              type="button"
              data-bs-target="#carouselExampleDark"
              data-bs-slide="prev"
            >
              <span
                class="carousel-control-prev-icon"
                aria-hidden="true"
              ></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button
              class="carousel-control-next"
              type="button"
              data-bs-target="#carouselExampleDark"
              data-bs-slide="next"
            >
              <span
                class="carousel-control-next-icon"
                aria-hidden="true"
              ></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
          <div class="row details-img-list">
            <div class="col-sm-3">
              <img
                type="button"
                data-bs-target="#carouselExampleDark"
                data-bs-slide-to="0"
                aria-current="true"
                aria-label="Slide 1"
                src="https://gongcha.com.vn/wp-content/uploads/2022/11/Mint-Chocolate-Milk-Tea-w-Pearl-Iced.png"
                class="img-small active"
                alt=""
              />
            </div>
            <div class="col-sm-3">
              <img
                type="button"
                data-bs-target="#carouselExampleDark"
                data-bs-slide-to="1"
                aria-label="Slide 2"
                src="https://gongcha.com.vn/wp-content/uploads/2022/11/Mint-Chocolate-Milk-Tea-w-Pearl-Iced.png"
                class="img-small"
                alt=""
              />
            </div>
            <div class="col-sm-3">
              <img
                type="button"
                data-bs-target="#carouselExampleDark"
                data-bs-slide-to="2"
                aria-label="Slide 3"
                src="https://gongcha.com.vn/wp-content/uploads/2022/11/Mint-Chocolate-Milk-Tea-w-Pearl-Iced.png"
                class="img-small"
                alt=""
              />
            </div>
            <div class="col-sm-3">
              <img
                type="button"
                data-bs-target="#carouselExampleDark"
                data-bs-slide-to="3"
                aria-label="Slide 4"
                src="https://gongcha.com.vn/wp-content/uploads/2022/11/Mint-Chocolate-Milk-Tea-w-Pearl-Iced.png"
                class="img-small"
                alt=""
              />
            </div>
          </div>
        </div>
        <div class="col-sm-6">
          <span class="details-name">Mint Choco Milk Tea</span>
          <div class="divider"></div>
          <div class="details-product">
            <p class="price-old">59.000 Đ</p>
            <p class="price">59.000 Đ</p>
          </div>
          <p class="title-details">
            Mint Choco Milk Tea là em trà sữa có lớp kem béo béo ở trên và đương
            nhiên không thể thiếu topping trân châu
          </p>
          <ul>
            <li class="details-item">Sku: P006</li>
            <li class="details-item">
              Categories:Mint Choco Milk Tea. Mint Choco Milk Tea
            </li>
            <li class="details-item">Tag: Drink</li>
          </ul>
          <div class="details-cart">
            <div class="details-amount">
              <button class="upanddown">-</button
              ><input type="text" min="0" value="1" class="input-amount" />
              <button class="upanddown">+</button>
            </div>
            <button ng-click="addCart(products[index])" class="btn-details">
              Thêm vào giỏ hàng
            </button>
          </div>
        </div>
      </div>
      <div class="details-content">
        <nav>
          <div class="nav nav-tabs" id="nav-tab" role="tablist">
            <button
              class="nav-link active"
              id="nav-home-tab"
              data-bs-toggle="tab"
              data-bs-target="#nav-home"
              type="button"
              role="tab"
              aria-controls="nav-home"
              aria-selected="true"
            >
              MÔ TẢ
            </button>
            <button
              class="nav-link"
              id="nav-profile-tab"
              data-bs-toggle="tab"
              data-bs-target="#nav-profile"
              type="button"
              role="tab"
              aria-controls="nav-profile"
              aria-selected="false"
            >
              ĐÁNH GIÁ
            </button>
          </div>
        </nav>
        <div class="tab-content" id="nav-tabContent">
          <div
            class="tab-pane fade show active"
            id="nav-home"
            role="tabpanel"
            aria-labelledby="nav-home-tab"
            tabindex="0"
          >
            <div class="description-list">
              <p class="details-description">
                Asus TUF Gaming F15 FX506HC HN144W sở hữu cấu hình tuyệt vời với
                những linh kiện mới nhất cùng một thiết kế di động, bền bỉ nhưng
                lại được bán ở mức giá rẻ đến khó tin. Đây chắc chắn là mẫu
                laptop gaming giá tốt mà các game thủ sẽ rất yêu thích.
              </p>
            </div>
          </div>
          <div
            class="tab-pane fade"
            id="nav-profile"
            role="tabpanel"
            aria-labelledby="nav-profile-tab"
            tabindex="0"
          >
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
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                        </div>
                        <div class="small-ratings">
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                        </div>
                        <div class="small-ratings">
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
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
  </body>
  <script type="text/javascript">
    let items = document.querySelectorAll(".carousel .carousel-item");

    items.forEach((el) => {
      const minPerSlide = 4;
      let next = el.nextElementSibling;
      for (var i = 1; i < minPerSlide; i++) {
        if (!next) {
          // wrap carousel by using first child
          next = items[0];
        }
        let cloneChild = next.cloneNode(true);
        el.appendChild(cloneChild.children[0]);
        next = next.nextElementSibling;
      }
    });
  </script>
  <script src="/view/bootstrap-5.2.2-dist/js/bootstrap.bundle.min.js"></script>
  <script src="/view/bootstrap-5.2.2-dist/js/angular.min.js"></script>
  <script src="/view/bootstrap-5.2.2-dist/js/angular-route.min.js"></script>
  <script src="/view/route_component.js"></script>
  <script src="/view/bootstrap-5.2.2-dist/js/dirPaginate.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
</html>
