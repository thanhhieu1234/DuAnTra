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
    <section class="h-100 h-custom" style="background-color: #eee">
      <div class="container cartshop-container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
          <div class="col">
            <div class="card">
              <div class="card-body p-4">
                <div class="row">
                  <div class="col-lg-12">
                    <h5 class="mb-3">
                      <a href="#!category" class="text-body"
                        ><i class="fas fa-long-arrow-alt-left me-2"></i>Tiếp tục
                        mua sắm</a
                      >
                    </h5>
                    <hr />
                    <div
                      class="d-flex justify-content-between align-items-center mb-4"
                    >
                      <div>
                        <p class="mb-1">Giỏ hàng của bạn</p>
                        <p class="mb-0">Bạn có 1 mặt hàng trong giỏ hàng</p>
                      </div>
                      <div>
                        <p class="mb-0">
                          <span class="text-muted">Sắp xếp theo:</span>
                          <a href="#!" class="text-body">giá</a
                          ><i class="fas fa-angle-down mt-1"></i>
                        </p>
                      </div>
                    </div>
                    <table class="table">
                      <tr>
                        <th
                          style="
                            text-align: center;
                            width: 300px;
                            border: 1px solid #ccc;
                          "
                        >
                          Tên sản phẩm
                        </th>
                        <th
                          style="
                            text-align: center;
                            width: 200px;
                            border: 1px solid #ccc;
                          "
                        >
                          Hình ảnh
                        </th>
                        <th
                          style="
                            text-align: center;
                            width: 200px;
                            border: 1px solid #ccc;
                          "
                        >
                          Giá
                        </th>
                        <th
                          style="
                            text-align: center;
                            width: 200px;
                            border: 1px solid #ccc;
                          "
                        >
                          Số lượng
                        </th>
                        <th
                          style="
                            text-align: center;
                            width: 300px;
                            border: 1px solid #ccc;
                          "
                        >
                          Thành tiền
                        </th>
                        <th
                          style="
                            text-align: center;
                            width: 200px;
                            border: 1px solid #ccc;
                          "
                        >
                          Trạng thái
                        </th>
                      </tr>
                      <tr ng-repeat="c in cart track by $index">
                        <td
                          style="
                            text-align: center;
                            width: 300px !important;
                            border: 1px solid #ccc;
                          "
                        >
                          Mint Choco Milk Tea
                        </td>
                        <td
                          style="
                            text-align: center;
                            width: 200px !important;
                            border: 1px solid #ccc;
                          "
                        >
                          <img
                            width="100px"
                            src="http://gongcha.com.vn/wp-content/uploads/2022/11/Mint-Chocolate-Milk-Tea-w-Pearl-Iced.png"
                            alt=""
                          />
                        </td>
                        <td
                          style="
                            text-align: center;
                            width: 200px !important;
                            border: 1px solid #ccc;
                          "
                        >
                          59.000 đ
                        </td>
                        <td
                          style="
                            text-align: center;
                            width: 400px !important;
                            align-items: center;
                            border: 1px solid #ccc;
                          "
                        >
                          <span
                            style="margin: 0 15px; cursor: pointer"
                            ng-click="subClick($index)"
                            >-</span
                          >1
                          <span
                            style="margin: 0 15px; cursor: pointer"
                            ng-click="addClick($index)"
                            >+</span
                          >
                        </td>
                        <td
                          style="
                            text-align: center;
                            width: 300px !important;
                            border: 1px solid #ccc;
                          "
                        >
                          59.000 đ
                        </td>
                        <td
                          style="
                            text-align: center;
                            width: 200px !important;
                            border: 1px solid #ccc;
                          "
                        >
                          <button
                            style="border: 1px solid #ccc"
                            ng-click="delProduct($index)"
                          >
                            Xóa
                          </button>
                        </td>
                      </tr>
                      <tr>
                        <td
                          colspan="2"
                          style="text-align: center; width: 300px !important"
                        >
                          Tổng sản phẩm:1
                        </td>
                        <td
                          colspan="2"
                          style="text-align: center; width: 200px !important"
                        >
                          Tổng tiền:59.000 đ
                        </td>
                        <td
                          colspan="2"
                          style="text-align: center; width: 200px !important"
                        >
                          Sau khi giảm giá: 59.000 đ
                        </td>
                      </tr>
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
