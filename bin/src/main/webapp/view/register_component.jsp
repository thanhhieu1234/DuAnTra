<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vn">
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
    <div class="container_register cartegory-container">
      <form
        *ngIf="!showLogin"
        #sellerSignUp="ngForm"
        (ngSubmit)="signUp(sellerSignUp.value)"
        action="common-form"
      >
        <div class="form-Up_signUp">
          <div class="row_signUp">
            <h4 class="information_signUp">Thông tin khách hàng</h4>
            <div class="form-control_signUp">
              <div class="control-input_signUp">
                <p class="control-item_signUp">Họ:*</p>
                <input
                  class="input-form_signUp"
                  type="text"
                  name="phone"
                  id=""
                  placeholder="Họ..."
                />
              </div>
              <div class="control-input_signUp">
                <p class="control-item_signUp">Tên:*</p>
                <input
                  class="input-form_signUp"
                  type="text"
                  name="pass"
                  id=""
                  placeholder="Tên..."
                />
              </div>
              <div class="control-input_signUp">
                <p class="control-item_signUp">Email:*</p>
                <input
                  class="input-form_signUp"
                  type="text"
                  ngModel
                  name="email"
                  id=""
                  placeholder="Email..."
                />
              </div>
              <div class="control-input_signUp">
                <p class="control-item_signUp">Điện thoại:*</p>
                <input
                  class="input-form_signUp"
                  type="number"
                  ngModel
                  name="phone"
                  id=""
                  placeholder="Điện thoại..."
                />
              </div>
              <div class="control-input_signUp">
                <p class="control-item_signUp">Ngày sinh:*</p>
                <input
                  class="input-form_signUp"
                  type="date"
                  name=""
                  id=""
                  placeholder="Ngày sinh..."
                />
              </div>
              <div class="control-input_signUp">
                <p class="control-item_signUp">Gioi tính:*</p>
                <select name="customer_sex" class="input-form_signUp">
                  <option value="0">Nữ</option>
                  <option value="1">Nam</option>
                  <option value="2">Khác</option>
                </select>
              </div>
              <div class="control-input_signUp">
                <p class="control-item_signUp">Tỉnh/thành phố</p>
                <input
                  class="input-form_signUp"
                  type="text"
                  name=""
                  id=""
                  placeholder="Chọn Tỉnh/thành phố"
                />
              </div>
              <div class="control-input_signUp">
                <p class="control-item_signUp">Quận/Huyện</p>
                <input
                  class="input-form_signUp"
                  type="text"
                  name=""
                  id=""
                  placeholder="Chọn Quận/Huyện"
                />
              </div>
              <div class="control-input_signUp">
                <p class="control-item_signUp">Phường/Xã</p>
                <input
                  class="input-forms_signUp"
                  type="text"
                  name=""
                  id=""
                  placeholder="Phường/Xã..."
                />
              </div>
              <div class="control-input_signUp">
                <p class="control-item_signUp">Địa chỉ</p>
                <input
                  class="input-forms_signUp"
                  type="text"
                  name=""
                  id=""
                  placeholder="Địa chỉ..."
                />
              </div>
            </div>
          </div>
          <div class="row_signUp">
            <h4 class="information_signUp">Thông tin đăng nhập</h4>
            <div class="form-control_signUp">
              <div class="control-input_signUp">
                <p class="control-item_signUp">Mật khẩu:*</p>
                <input
                  class="input-forms_signUp"
                  type="password"
                  ngModel
                  name="pass"
                  id=""
                  placeholder="Mật khẩu..."
                />
              </div>
              <div class="control-input_signUp">
                <p class="control-item_signUp">Nhập lại mật khẩu:*</p>
                <input
                  class="input-forms_signUp"
                  type="password"
                  name=""
                  id=""
                  placeholder="Nhập lại mật khẩu..."
                />
              </div>
              <a class="auth-link" href="#!login">Đã có tài khoản</a>
              <button class="auth-log-btn_signUp" ngModel>Đăng kí ngay</button>
            </div>
          </div>
        </div>
      </form>
    </div>
    <jsp:include page="/view/footer_component.jsp"></jsp:include>
  </body>

  <script src="/view/bootstrap-5.2.2-dist/js/bootstrap.bundle.min.js"></script>
  <script src="/view/bootstrap-5.2.2-dist/js/angular.min.js"></script>
  <script src="/view/bootstrap-5.2.2-dist/js/angular-route.min.js"></script>
  <script src="/view/route_component.js"></script>
  <script src="/view/bootstrap-5.2.2-dist/js/dirPaginate.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
</html>
