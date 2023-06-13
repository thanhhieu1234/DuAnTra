<!--Slider app-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div
  style="margin-top: 195px"
  id="carouselExampleDark"
  class="carousel carousel-dark slide"
  data-bs-ride="carousel"
>
  <div class="carousel-indicators">
    <button
      type="button"
      data-bs-target="#carouselExampleDark"
      data-bs-slide-to="0"
      class="active"
      aria-current="true"
      aria-label="Slide 1"
    ></button>
    <button
      type="button"
      data-bs-target="#carouselExampleDark"
      data-bs-slide-to="1"
      aria-label="Slide 2"
    ></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="10000">
      <img
        src="https://gongcha.com.vn/wp-content/uploads/2018/03/Mục-Trà-Sữa.jpg"
        class="d-block w-100"
        alt="..."
      />
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img
        src="https://gongcha.com.vn/wp-content/uploads/2020/08/banner-menu-1900-x-335.jpg"
        class="d-block w-100"
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
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button
    class="carousel-control-next"
    type="button"
    data-bs-target="#carouselExampleDark"
    data-bs-slide="next"
  >
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<!--Banner app-->
<div class="container mt-5">
  <div class="row">
    <div class="col-sm-6">
      <div class="banner-img">
        <div class="banner-title">
          <div class="is-divider divider"></div>
        </div>
        <div class="col-sm-12 banner-images">
          <a href="category">
            <img
              src="https://gongcha.com.vn/wp-content/uploads/2018/03/Banner-Trang-Ch%E1%BB%A7-k%E1%BA%BF-%C4%91%E1%BB%8Ba-ch%E1%BB%89-CH-800x380-01.jpg"
              class="w-100"
              alt="..."
          /></a>
        </div>
      </div>
    </div>
    <div class="col-sm-6">
      <div class="banner-img">
        <div class="banner-title">
          <div class="is-divider divider"></div>
        </div>
        <div class="col-sm-12 banner-images">
          <a href="category">
            <img
              src="https://gongcha.com.vn/wp-content/uploads/2018/03/Banner-Trang-Ch%E1%BB%A7-k%E1%BA%BF-%C4%91%E1%BB%8Ba-ch%E1%BB%89-CH-800x380-01.jpg"
              class="w-100"
              alt="..."
          /></a>
        </div>
      </div>
    </div>
  </div>
  <div id="recipeCarousel" class="carousel slide" data-bs-ride="carousel">
    <div class="heading-product">
      <h3>Sản phẩm mới về</h3>
      <div
        style="margin-right: 24px; z-index: 11; margin-block: auto"
        id="recipeCarousel"
        class="carousel slide"
        data-bs-ride="carousel"
      >
        <a
          class="icons-carousel carousel-control-prev bg-transparent w-aut"
          href="#recipeCarousel"
          role="button"
          data-bs-slide="next"
          ><i class="icofont-thin-right" aria-hidden="true"></i>
        </a>
        <a
          class="icons-carousel carousel-control-next bg-transparent w-aut"
          href="#recipeCarousel"
          role="button"
          data-bs-slide="prev"
        >
          <i class="icofont-thin-left" aria-hidden="true"></i>
        </a>
      </div>
    </div>
    <div class="mt-5 carousel-inners carousel-inner" role="listbox">
      <div class="carousel-item carousel-items active col-md-3">
        <div class="card carousel-itemss">
          <div class="img-container">
            <div
              class="d-flex justify-content-between align-items-center p-2 first"
            >
              <span class="percent">-25%</span>
              <span class="wishlist"><i class="fa fa-heart"></i></span>
            </div>
            <a href="/view/details_component.jsp">
              <img
              src="http://gongcha.com.vn/wp-content/uploads/2023/05/Tra-sua-Thach-Dao.png"
              class="img-fluid" style="margin-left: 0px;"
            />
            </a>
          </div>
          <div class="product-detail-container">
            <div class="d-flex justify-content-between align-items-center">
              <h6 class="mb-0">Đào Sữa Hoàng Kim</h6>
              <span class="text-danger font-weight-bold">$3.99</span>
            </div>
            <div class="d-flex justify-content-between align-items-center mt-2">
              <div class="ratings">
                <i class="fa fa-star"></i> <span>4.5</span>
              </div>
              <div class="size">
                <label class="radio">
                  <input type="radio" name="size1" value="small" />
                  <span>S</span>
                </label>
                <label class="radio">
                  <input type="radio" name="size1" value="Medium" checked />
                  <span>M</span>
                </label>
                <label class="radio">
                  <input type="radio" name="size1" value="Large" />
                  <span>L</span>
                </label>
              </div>
            </div>
            <div class="mt-3">
              <button class="btn btn-danger btn-block">Buy Now</button>
            </div>
          </div>
        </div>
      </div>
      <div class="carousel-item carousel-items col-md-3">
        <div class="card carousel-itemss">
          <div class="img-container">
            <div
              class="d-flex justify-content-between align-items-center p-2 first"
            >
              <span class="percent">-25%</span>
              <span class="wishlist"><i class="fa fa-heart"></i></span>
            </div>
            <img
              src="http://gongcha.com.vn/wp-content/uploads/2023/05/Tra-sua-Thach-Dao.png"
              class="img-fluid" style="margin-left: 0px;"
            />
          </div>
          <div class="product-detail-container">
            <div class="d-flex justify-content-between align-items-center">
              <h6 class="mb-0">Đào Sữa Hoàng Kim</h6>
              <span class="text-danger font-weight-bold">$3.99</span>
            </div>
            <div class="d-flex justify-content-between align-items-center mt-2">
              <div class="ratings">
                <i class="fa fa-star"></i> <span>4.5</span>
              </div>
              <div class="size">
                <label class="radio">
                  <input type="radio" name="size1" value="small" />
                  <span>S</span>
                </label>
                <label class="radio">
                  <input type="radio" name="size1" value="Medium" checked />
                  <span>M</span>
                </label>
                <label class="radio">
                  <input type="radio" name="size1" value="Large" />
                  <span>L</span>
                </label>
              </div>
            </div>
            <div class="mt-3">
              <button class="btn btn-danger btn-block">Buy Now</button>
            </div>
          </div>
        </div>
      </div>
      <div class="carousel-item carousel-items col-md-3">
        <div class="card carousel-itemss">
          <div class="img-container">
            <div
              class="d-flex justify-content-between align-items-center p-2 first"
            >
              <span class="percent">-25%</span>
              <span class="wishlist"><i class="fa fa-heart"></i></span>
            </div>
            <img
              src="http://gongcha.com.vn/wp-content/uploads/2023/05/Tra-sua-Thach-Dao.png"
              class="img-fluid" style="margin-left: 0px;"
            />
          </div>
          <div class="product-detail-container">
            <div class="d-flex justify-content-between align-items-center">
              <h6 class="mb-0">Đào Sữa Hoàng Kim</h6>
              <span class="text-danger font-weight-bold">$3.99</span>
            </div>
            <div class="d-flex justify-content-between align-items-center mt-2">
              <div class="ratings">
                <i class="fa fa-star"></i> <span>4.5</span>
              </div>
              <div class="size">
                <label class="radio">
                  <input type="radio" name="size1" value="small" />
                  <span>S</span>
                </label>
                <label class="radio">
                  <input type="radio" name="size1" value="Medium" checked />
                  <span>M</span>
                </label>
                <label class="radio">
                  <input type="radio" name="size1" value="Large" />
                  <span>L</span>
                </label>
              </div>
            </div>
            <div class="mt-3">
              <button class="btn btn-danger btn-block">Buy Now</button>
            </div>
          </div>
        </div>
      </div>
      <div class="carousel-item carousel-items col-md-3">
        <div class="card carousel-itemss">
          <div class="img-container">
            <div
              class="d-flex justify-content-between align-items-center p-2 first"
            >
              <span class="percent">-25%</span>
              <span class="wishlist"><i class="fa fa-heart"></i></span>
            </div>
            <img
              src="http://gongcha.com.vn/wp-content/uploads/2023/05/Tra-sua-Thach-Dao.png"
              class="img-fluid" style="margin-left: 0px;"
            />
          </div>
          <div class="product-detail-container">
            <div class="d-flex justify-content-between align-items-center">
              <h6 class="mb-0">Đào Sữa Hoàng Kim</h6>
              <span class="text-danger font-weight-bold">$3.99</span>
            </div>
            <div class="d-flex justify-content-between align-items-center mt-2">
              <div class="ratings">
                <i class="fa fa-star"></i> <span>4.5</span>
              </div>
              <div class="size">
                <label class="radio">
                  <input type="radio" name="size1" value="small" />
                  <span>S</span>
                </label>
                <label class="radio">
                  <input type="radio" name="size1" value="Medium" checked />
                  <span>M</span>
                </label>
                <label class="radio">
                  <input type="radio" name="size1" value="Large" />
                  <span>L</span>
                </label>
              </div>
            </div>
            <div class="mt-3">
              <button class="btn btn-danger btn-block">Buy Now</button>
            </div>
          </div>
        </div>
      </div>
      <div class="carousel-item carousel-items col-md-3">
        <div class="card carousel-itemss">
          <div class="img-container">
            <div
              class="d-flex justify-content-between align-items-center p-2 first"
            >
              <span class="percent">-25%</span>
              <span class="wishlist"><i class="fa fa-heart"></i></span>
            </div>
            <img
              src="http://gongcha.com.vn/wp-content/uploads/2023/05/Tra-sua-Thach-Dao.png"
              class="img-fluid" style="margin-left: 0px;"
            />
          </div>
          <div class="product-detail-container">
            <div class="d-flex justify-content-between align-items-center">
              <h6 class="mb-0">Đào Sữa Hoàng Kim</h6>
              <span class="text-danger font-weight-bold">$3.99</span>
            </div>
            <div class="d-flex justify-content-between align-items-center mt-2">
              <div class="ratings">
                <i class="fa fa-star"></i> <span>4.5</span>
              </div>
              <div class="size">
                <label class="radio">
                  <input type="radio" name="size1" value="small" />
                  <span>S</span>
                </label>
                <label class="radio">
                  <input type="radio" name="size1" value="Medium" checked />
                  <span>M</span>
                </label>
                <label class="radio">
                  <input type="radio" name="size1" value="Large" />
                  <span>L</span>
                </label>
              </div>
            </div>
            <div class="mt-3">
              <button class="btn btn-danger btn-block">Buy Now</button>
            </div>
          </div>
        </div>
      </div>
      <div class="carousel-item carousel-items col-md-3">
        <div class="card carousel-itemss">
          <div class="img-container">
            <div
              class="d-flex justify-content-between align-items-center p-2 first"
            >
              <span class="percent">-25%</span>
              <span class="wishlist"><i class="fa fa-heart"></i></span>
            </div>
            <img
              src="http://gongcha.com.vn/wp-content/uploads/2023/05/Tra-sua-Thach-Dao.png"
              class="img-fluid" style="margin-left: 0px;"
            />
          </div>
          <div class="product-detail-container">
            <div class="d-flex justify-content-between align-items-center">
              <h6 class="mb-0">Đào Sữa Hoàng Kim</h6>
              <span class="text-danger font-weight-bold">$3.99</span>
            </div>
            <div class="d-flex justify-content-between align-items-center mt-2">
              <div class="ratings">
                <i class="fa fa-star"></i> <span>4.5</span>
              </div>
              <div class="size">
                <label class="radio">
                  <input type="radio" name="size1" value="small" />
                  <span>S</span>
                </label>
                <label class="radio">
                  <input type="radio" name="size1" value="Medium" checked />
                  <span>M</span>
                </label>
                <label class="radio">
                  <input type="radio" name="size1" value="Large" />
                  <span>L</span>
                </label>
              </div>
            </div>
            <div class="mt-3">
              <button class="btn btn-danger btn-block">Buy Now</button>
            </div>
          </div>
        </div>
      </div>
      <div class="carousel-item carousel-items col-md-3">
        <div class="card carousel-itemss">
          <div class="img-container">
            <div
              class="d-flex justify-content-between align-items-center p-2 first"
            >
              <span class="percent">-25%</span>
              <span class="wishlist"><i class="fa fa-heart"></i></span>
            </div>
            <img
              src="http://gongcha.com.vn/wp-content/uploads/2023/05/Tra-sua-Thach-Dao.png"
              class="img-fluid" style="margin-left: 0px;"
            />
          </div>
          <div class="product-detail-container">
            <div class="d-flex justify-content-between align-items-center">
              <h6 class="mb-0">Đào Sữa Hoàng Kim</h6>
              <span class="text-danger font-weight-bold">$3.99</span>
            </div>
            <div class="d-flex justify-content-between align-items-center mt-2">
              <div class="ratings">
                <i class="fa fa-star"></i> <span>4.5</span>
              </div>
              <div class="size">
                <label class="radio">
                  <input type="radio" name="size1" value="small" />
                  <span>S</span>
                </label>
                <label class="radio">
                  <input type="radio" name="size1" value="Medium" checked />
                  <span>M</span>
                </label>
                <label class="radio">
                  <input type="radio" name="size1" value="Large" />
                  <span>L</span>
                </label>
              </div>
            </div>
            <div class="mt-3">
              <button class="btn btn-danger btn-block">Buy Now</button>
            </div>
          </div>
        </div>
      </div>
      <div class="carousel-item carousel-items col-md-3">
        <div class="card carousel-itemss">
          <div class="img-container">
            <div
              class="d-flex justify-content-between align-items-center p-2 first"
            >
              <span class="percent">-25%</span>
              <span class="wishlist"><i class="fa fa-heart"></i></span>
            </div>
            <img
              src="http://gongcha.com.vn/wp-content/uploads/2023/05/Tra-sua-Thach-Dao.png"
              class="img-fluid" style="margin-left: 0px;"
            />
          </div>
          <div class="product-detail-container">
            <div class="d-flex justify-content-between align-items-center">
              <h6 class="mb-0">Đào Sữa Hoàng Kim</h6>
              <span class="text-danger font-weight-bold">$3.99</span>
            </div>
            <div class="d-flex justify-content-between align-items-center mt-2">
              <div class="ratings">
                <i class="fa fa-star"></i> <span>4.5</span>
              </div>
              <div class="size">
                <label class="radio">
                  <input type="radio" name="size1" value="small" />
                  <span>S</span>
                </label>
                <label class="radio">
                  <input type="radio" name="size1" value="Medium" checked />
                  <span>M</span>
                </label>
                <label class="radio">
                  <input type="radio" name="size1" value="Large" />
                  <span>L</span>
                </label>
              </div>
            </div>
            <div class="mt-3">
              <button class="btn btn-danger btn-block">Buy Now</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="mt-3 col-sm-6">
      <div class="banner-img">
        <div class="banner-title">
            
          <div class="is-divider divider"></div>
          
        </div>
        <div class="col-sm-12 banner-images">
          <a href="category.html">
            <img
              src="https://gongcha.com.vn/wp-content/uploads/2018/03/Banner-Trang-Ch%E1%BB%A7-k%E1%BA%BF-%C4%91%E1%BB%8Ba-ch%E1%BB%89-CH-800x380-01.jpg"
              class="w-100"
              alt="..."
          /></a>
        </div>
      </div>
    </div>
    <div class="mt-3 col-sm-6">
      <div class="banner-img">
        <div class="banner-title">
            
          <div class="is-divider divider"></div>
      
        </div>
        <div class="col-sm-12 banner-images">
          <a href="category.html">
            <img
              src="https://gongcha.com.vn/wp-content/uploads/2018/03/Banner-Trang-Ch%E1%BB%A7-k%E1%BA%BF-%C4%91%E1%BB%8Ba-ch%E1%BB%89-CH-800x380-01.jpg"
              class="w-100"
              alt="..."
          /></a>
        </div>
      </div>
    </div>
  </div>
  <div class="d-flex justify-content-center mt-3">
    <span class="text text-center"
      >Finding Best Products Now<br />
      in Your Fingertips</span
    >
  </div>
  <div class="heading-product">
    <h3>Hàng phổ biến</h3>
  </div>
  <div class="container mt-2 home-list">
    <div class="col-md-3 item home_product">
      <div class="card">
        <div class="img-container">
          <div
            class="d-flex justify-content-between align-items-center p-2 first"
          >
            <span class="percent">25%</span>
            <span class="wishlist"><i class="fa fa-heart"></i></span>
          </div>
          <a href="#!detail/1">
            <img
              style="width: 100%"
              src="http://gongcha.com.vn/wp-content/uploads/2023/05/Tra-sua-Thach-Dao.png"
              class="img-fluid"
            />
          </a>
        </div>
        <div class="product-detail-container">
          <div class="align-items-center">
            <h6 class="mb-0">Đào Sữa Hoàng Kim</h6>
            <span class="text-danger font-weight-bold"
              >15.000.000đ</span
            >
          </div>
          <div class="d-flex justify-content-between align-items-center mt-2">
            <div class="ratings">
              <i class="fa fa-star"></i> <span>4.5</span>
            </div>
            <div class="size">
              <label class="radio">
                <input type="radio" name="size1" value="small" /> <span>S</span>
              </label>
              <label class="radio">
                <input type="radio" name="size1" value="Medium" checked />
                <span>M</span>
              </label>
              <label class="radio">
                <input type="radio" name="size1" value="Large" /> <span>L</span>
              </label>
            </div>
          </div>
          <div class="mt-3"><button class="btn btn-block">Mua</button></div>
        </div>
      </div>
    </div>
     <div class="col-md-3 item home_product">
      <div class="card">
        <div class="img-container">
          <div
            class="d-flex justify-content-between align-items-center p-2 first"
          >
            <span class="percent">25%</span>
            <span class="wishlist"><i class="fa fa-heart"></i></span>
          </div>
          <a href="#!detail/1">
            <img
              style="width: 100%"
              src="http://gongcha.com.vn/wp-content/uploads/2023/05/Tra-sua-Thach-Dao.png"
              class="img-fluid"
            />
          </a>
        </div>
        <div class="product-detail-container">
          <div class="align-items-center">
            <h6 class="mb-0">Đào Sữa Hoàng Kim</h6>
            <span class="text-danger font-weight-bold"
              >15.000.000đ</span
            >
          </div>
          <div class="d-flex justify-content-between align-items-center mt-2">
            <div class="ratings">
              <i class="fa fa-star"></i> <span>4.5</span>
            </div>
            <div class="size">
              <label class="radio">
                <input type="radio" name="size1" value="small" /> <span>S</span>
              </label>
              <label class="radio">
                <input type="radio" name="size1" value="Medium" checked />
                <span>M</span>
              </label>
              <label class="radio">
                <input type="radio" name="size1" value="Large" /> <span>L</span>
              </label>
            </div>
          </div>
          <div class="mt-3"><button class="btn btn-block">Mua</button></div>
        </div>
      </div>
    </div>
     <div class="col-md-3 item home_product">
      <div class="card">
        <div class="img-container">
          <div
            class="d-flex justify-content-between align-items-center p-2 first"
          >
            <span class="percent">25%</span>
            <span class="wishlist"><i class="fa fa-heart"></i></span>
          </div>
          <a href="#!detail/1">
            <img
              style="width: 100%"
              src="http://gongcha.com.vn/wp-content/uploads/2023/05/Tra-sua-Thach-Dao.png"
              class="img-fluid"
            />
          </a>
        </div>
        <div class="product-detail-container">
          <div class="align-items-center">
            <h6 class="mb-0">Đào Sữa Hoàng Kim</h6>
            <span class="text-danger font-weight-bold"
              >15.000.000đ</span
            >
          </div>
          <div class="d-flex justify-content-between align-items-center mt-2">
            <div class="ratings">
              <i class="fa fa-star"></i> <span>4.5</span>
            </div>
            <div class="size">
              <label class="radio">
                <input type="radio" name="size1" value="small" /> <span>S</span>
              </label>
              <label class="radio">
                <input type="radio" name="size1" value="Medium" checked />
                <span>M</span>
              </label>
              <label class="radio">
                <input type="radio" name="size1" value="Large" /> <span>L</span>
              </label>
            </div>
          </div>
          <div class="mt-3"><button class="btn btn-block">Mua</button></div>
        </div>
      </div>
    </div>
     <div class="col-md-3 item home_product">
      <div class="card">
        <div class="img-container">
          <div
            class="d-flex justify-content-between align-items-center p-2 first"
          >
            <span class="percent">25%</span>
            <span class="wishlist"><i class="fa fa-heart"></i></span>
          </div>
          <a href="#!detail/1">
            <img
              style="width: 100%"
              src="http://gongcha.com.vn/wp-content/uploads/2023/05/Tra-sua-Thach-Dao.png"
              class="img-fluid"
            />
          </a>
        </div>
        <div class="product-detail-container">
          <div class="align-items-center">
            <h6 class="mb-0">Đào Sữa Hoàng Kim</h6>
            <span class="text-danger font-weight-bold"
              >15.000.000đ</span
            >
          </div>
          <div class="d-flex justify-content-between align-items-center mt-2">
            <div class="ratings">
              <i class="fa fa-star"></i> <span>4.5</span>
            </div>
            <div class="size">
              <label class="radio">
                <input type="radio" name="size1" value="small" /> <span>S</span>
              </label>
              <label class="radio">
                <input type="radio" name="size1" value="Medium" checked />
                <span>M</span>
              </label>
              <label class="radio">
                <input type="radio" name="size1" value="Large" /> <span>L</span>
              </label>
            </div>
          </div>
          <div class="mt-3"><button class="btn btn-block">Mua</button></div>
        </div>
      </div>
    </div>
     <div class="col-md-3 item home_product">
      <div class="card">
        <div class="img-container">
          <div
            class="d-flex justify-content-between align-items-center p-2 first"
          >
            <span class="percent">25%</span>
            <span class="wishlist"><i class="fa fa-heart"></i></span>
          </div>
          <a href="#!detail/1">
            <img
              style="width: 100%"
              src="http://gongcha.com.vn/wp-content/uploads/2023/05/Tra-sua-Thach-Dao.png"
              class="img-fluid"
            />
          </a>
        </div>
        <div class="product-detail-container">
          <div class="align-items-center">
            <h6 class="mb-0">Đào Sữa Hoàng Kim</h6>
            <span class="text-danger font-weight-bold"
              >15.000.000đ</span
            >
          </div>
          <div class="d-flex justify-content-between align-items-center mt-2">
            <div class="ratings">
              <i class="fa fa-star"></i> <span>4.5</span>
            </div>
            <div class="size">
              <label class="radio">
                <input type="radio" name="size1" value="small" /> <span>S</span>
              </label>
              <label class="radio">
                <input type="radio" name="size1" value="Medium" checked />
                <span>M</span>
              </label>
              <label class="radio">
                <input type="radio" name="size1" value="Large" /> <span>L</span>
              </label>
            </div>
          </div>
          <div class="mt-3"><button class="btn btn-block">Mua</button></div>
        </div>
      </div>
    </div>
     <div class="col-md-3 item home_product">
      <div class="card">
        <div class="img-container">
          <div
            class="d-flex justify-content-between align-items-center p-2 first"
          >
            <span class="percent">25%</span>
            <span class="wishlist"><i class="fa fa-heart"></i></span>
          </div>
          <a href="#!detail/1">
            <img
              style="width: 100%"
              src="http://gongcha.com.vn/wp-content/uploads/2023/05/Tra-sua-Thach-Dao.png"
              class="img-fluid"
            />
          </a>
        </div>
        <div class="product-detail-container">
          <div class="align-items-center">
            <h6 class="mb-0">Đào Sữa Hoàng Kim</h6>
            <span class="text-danger font-weight-bold"
              >15.000.000đ</span
            >
          </div>
          <div class="d-flex justify-content-between align-items-center mt-2">
            <div class="ratings">
              <i class="fa fa-star"></i> <span>4.5</span>
            </div>
            <div class="size">
              <label class="radio">
                <input type="radio" name="size1" value="small" /> <span>S</span>
              </label>
              <label class="radio">
                <input type="radio" name="size1" value="Medium" checked />
                <span>M</span>
              </label>
              <label class="radio">
                <input type="radio" name="size1" value="Large" /> <span>L</span>
              </label>
            </div>
          </div>
          <div class="mt-3"><button class="btn btn-block">Mua</button></div>
        </div>
      </div>
    </div>
     <div class="col-md-3 item home_product">
      <div class="card">
        <div class="img-container">
          <div
            class="d-flex justify-content-between align-items-center p-2 first"
          >
            <span class="percent">25%</span>
            <span class="wishlist"><i class="fa fa-heart"></i></span>
          </div>
          <a href="#!detail/1">
            <img
              style="width: 100%"
              src="http://gongcha.com.vn/wp-content/uploads/2023/05/Tra-sua-Thach-Dao.png"
              class="img-fluid"
            />
          </a>
        </div>
        <div class="product-detail-container">
          <div class="align-items-center">
            <h6 class="mb-0">Đào Sữa Hoàng Kim</h6>
            <span class="text-danger font-weight-bold"
              >15.000.000đ</span
            >
          </div>
          <div class="d-flex justify-content-between align-items-center mt-2">
            <div class="ratings">
              <i class="fa fa-star"></i> <span>4.5</span>
            </div>
            <div class="size">
              <label class="radio">
                <input type="radio" name="size1" value="small" /> <span>S</span>
              </label>
              <label class="radio">
                <input type="radio" name="size1" value="Medium" checked />
                <span>M</span>
              </label>
              <label class="radio">
                <input type="radio" name="size1" value="Large" /> <span>L</span>
              </label>
            </div>
          </div>
          <div class="mt-3"><button class="btn btn-block">Mua</button></div>
        </div>
      </div>
    </div>
     <div class="col-md-3 item home_product">
      <div class="card">
        <div class="img-container">
          <div
            class="d-flex justify-content-between align-items-center p-2 first"
          >
            <span class="percent">25%</span>
            <span class="wishlist"><i class="fa fa-heart"></i></span>
          </div>
          <a href="#!detail/1">
            <img
              style="width: 100%"
              src="http://gongcha.com.vn/wp-content/uploads/2023/05/Tra-sua-Thach-Dao.png"
              class="img-fluid"
            />
          </a>
        </div>
        <div class="product-detail-container">
          <div class="align-items-center">
            <h6 class="mb-0">Đào Sữa Hoàng Kim</h6>
            <span class="text-danger font-weight-bold"
              >15.000.000đ</span
            >
          </div>
          <div class="d-flex justify-content-between align-items-center mt-2">
            <div class="ratings">
              <i class="fa fa-star"></i> <span>4.5</span>
            </div>
            <div class="size">
              <label class="radio">
                <input type="radio" name="size1" value="small" /> <span>S</span>
              </label>
              <label class="radio">
                <input type="radio" name="size1" value="Medium" checked />
                <span>M</span>
              </label>
              <label class="radio">
                <input type="radio" name="size1" value="Large" /> <span>L</span>
              </label>
            </div>
          </div>
          <div class="mt-3"><button class="btn btn-block">Mua</button></div>
        </div>
      </div>
    </div>
     <div class="col-md-3 item home_product">
      <div class="card">
        <div class="img-container">
          <div
            class="d-flex justify-content-between align-items-center p-2 first"
          >
            <span class="percent">25%</span>
            <span class="wishlist"><i class="fa fa-heart"></i></span>
          </div>
          <a href="#!detail/1">
            <img
              style="width: 100%"
              src="http://gongcha.com.vn/wp-content/uploads/2023/05/Tra-sua-Thach-Dao.png"
              class="img-fluid"
            />
          </a>
        </div>
        <div class="product-detail-container">
          <div class="align-items-center">
            <h6 class="mb-0">Đào Sữa Hoàng Kim</h6>
            <span class="text-danger font-weight-bold"
              >15.000.000đ</span
            >
          </div>
          <div class="d-flex justify-content-between align-items-center mt-2">
            <div class="ratings">
              <i class="fa fa-star"></i> <span>4.5</span>
            </div>
            <div class="size">
              <label class="radio">
                <input type="radio" name="size1" value="small" /> <span>S</span>
              </label>
              <label class="radio">
                <input type="radio" name="size1" value="Medium" checked />
                <span>M</span>
              </label>
              <label class="radio">
                <input type="radio" name="size1" value="Large" /> <span>L</span>
              </label>
            </div>
          </div>
          <div class="mt-3"><button class="btn btn-block">Mua</button></div>
        </div>
      </div>
    </div>
     <div class="col-md-3 item home_product">
      <div class="card">
        <div class="img-container">
          <div
            class="d-flex justify-content-between align-items-center p-2 first"
          >
            <span class="percent">25%</span>
            <span class="wishlist"><i class="fa fa-heart"></i></span>
          </div>
          <a href="#!detail/1">
            <img
              style="width: 100%"
              src="http://gongcha.com.vn/wp-content/uploads/2023/05/Tra-sua-Thach-Dao.png"
              class="img-fluid"
            />
          </a>
        </div>
        <div class="product-detail-container">
          <div class="align-items-center">
            <h6 class="mb-0">Đào Sữa Hoàng Kim</h6>
            <span class="text-danger font-weight-bold"
              >15.000.000đ</span
            >
          </div>
          <div class="d-flex justify-content-between align-items-center mt-2">
            <div class="ratings">
              <i class="fa fa-star"></i> <span>4.5</span>
            </div>
            <div class="size">
              <label class="radio">
                <input type="radio" name="size1" value="small" /> <span>S</span>
              </label>
              <label class="radio">
                <input type="radio" name="size1" value="Medium" checked />
                <span>M</span>
              </label>
              <label class="radio">
                <input type="radio" name="size1" value="Large" /> <span>L</span>
              </label>
            </div>
          </div>
          <div class="mt-3"><button class="btn btn-block">Mua</button></div>
        </div>
      </div>
    </div>
        
    </div>
  </div>

