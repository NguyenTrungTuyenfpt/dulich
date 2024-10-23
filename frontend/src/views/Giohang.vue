<!-- JS -->
<script setup lang="ts">

</script>

<!-- Main -->
<template>




<!-- main -->
<div class="container-fluid d-flex justify-content-center mt-5 mb-5" >
      <div class="col-9">
        <div class="row g-5">
          <div class="col-lg-4 col-ms-5 d-flex align-items-center flex-column" style="background-color: rgb(100% 100% 100%);">
            <div class="row mb-1 mt-2 w-100" style="background-color:rgb(0% 24% 44%);">
              <h4 class="text-white w-100 fw-bold fs-md-2 fs-sm-4 text-center py-1 " > <span class="me-2"><i class="bi bi-credit-card"></i></span>Thông Tin Thanh Toán</h4>
            </div>
            <div class="row w-100">
              <form >
                <div class="mb-1">
                  <input  type="text" class="form-control shadow mb-2 mt-3" id="exampleFormControlInput1" placeholder="Nhập họ và tên">
                </div>
                <div class="mb-1">
                  <input  type="email" class="form-control shadow mb-2 " id="exampleFormControlInput2" placeholder="Nhập email">
                </div>
                <div class="mb-1">
                  <input  type="text" class="form-control shadow mb-2 " id="exampleFormControlInput3" placeholder="Nhập điện thoại">
                </div>
                <div class="mb-1">
                  <input  type="text" class="form-control shadow mb-2 " id="exampleFormControlInput3" placeholder="Nhập địa chỉ">
                </div>
                <div class="mb-1 d-flex justify-content-between ">
                  <input  type="text" class="form-control shadow mb-2  w-50" id="exampleFormControlInput3" placeholder="Nhập mã giảm giá">
                  <div class="col-ms-4">
                  <a class=" btn btn-outline-secondary w-100" style="height: 80%;" >Kiểm tra</a>
                  </div>
                </div>
                <div class="mb-2">
                  <input  type="radio" name="tt" class="" id="exampleFormControlInput33" placeholder="Nhập địa chỉ">
                  <label for="exampleFormControlInput33"> Chuyển khoản ngân hàng</label>
                </div>

                <div class="mb-1 bg-opacity-50 bg-secondary-subtle p-1 shadow">
                  <span class="fw-medium ">THÔNG TIN THANH TOÁN CHUYỂN KHOẢN</span>
                  <p class="m-2 fs-6">- Ngân hàng TMCP Ngoại Thương Việt Nam - CN TP.HCM (VCB)</p>
                  <p class="m-2 fs-6">- Tên đơn vị hưởng: CÔNG TY CỔ PHẦN DỊCH VỤ DU LỊCH BẾN THÀNH</p>
                  <p class="m-2 fs-6">- Số tài khoản VNĐ: 007.‎‎1001204617</p>
                  <p class="m-2 fs-6">- Tại Ngân Hàng VCB - CN TP.HCM</p>
                </div>

                <div class="mb-2 mt-3">
                  <input  type="radio" name="tt" class="" id="exampleFormControlInput33" placeholder="Nhập địa chỉ">
                  <label for="exampleFormControlInput33"> Thanh toán tại văn phòng</label>
                </div>
                <div class="mb-2 mt-2">
                  <input  type="radio" name="tt" class="" id="exampleFormControlInput33" placeholder="Nhập địa chỉ">
                  <label for="exampleFormControlInput33"> Thanh toán online</label>
                </div>
                <hr>
                <button class="btn btn-warning form-control mb-3">Thanh Toán</button>

              </form>
            </div>
          </div>
          <div class="col-lg-8 col-ms-7 " >
            <div class="row m-2 w-100" style="background-color:rgb(0% 24% 44%);">
              <h4 class="text-white w-100 fw-bold fs-md-2 fs-sm-4 text-center py-1 " > <span class="me-2"><i class="bi bi-cart-plus"></i></span>Thông Tin Về Sản Phẩm/ Dịch Vu</h4>
            </div>

            <div class=" row  m-2 w-100 " >
              <div class="col-md-6 position-relative">
                <img src="https://benthanhtourist.com/uploads/images/chau-au/Phap/5c175f0f1280f.jpg" alt="" class="img-fluid">
                <img src="https://benthanhtourist.com/img/Home/hot.png" class="position-absolute" style="left: 0%; top:45%" alt="">           
              </div>
              <div class="col-md-6">
                <h3 style="color: rgb(0% 24% 44%);" class="h5 m-2">Du Lịch Mùa Thu Châu Âu: Pháp - Thuỵ Sỹ - Ý - Núi Tuyết Titlis</h3>
                <strong class="m-2">Ngày khởi hành:</strong><span class="text-danger ms-2 fw-medium">09/10/2024</span>
                <p class="m-2"><span class="me-2"><i class="bi bi-people-fill"></i></span>Số chỗ còn nhận: 20</p>

                <div class="m-2">
                  <strong>Người lớn</strong> <input type="number" min="1" class="w-25 "> 
                </div>
                <div class="m-2">
                  <strong>Trẻ em</strong> <input type="number" min="1" class="ms-4 w-25 "> 
                </div>
                <hr>
                <strong class="m-2" >Tổng: </strong>
              </div>
            </div>
            <hr>
            <div class=" row  m-2 w-100 " >
              <div class="col-md-6 position-relative">
                <img src="https://benthanhtourist.com/uploads/images/ha-giang/5c2dbfb7a922f.jpg" alt="" class="img-fluid">
                <!-- <img src="https://benthanhtourist.com/img/Home/hot.png" class="position-absolute" style="left: 0%; top:45%" alt="">            -->
              </div>
              <div class="col-md-6">
                <h3 style="color: rgb(0% 24% 44%);" class="h5 m-2">Du Lịch Đông Bắc: Hà Giang - Đồng Văn - Lũng Cú - Sông Nho Quế</h3>
                <strong class="m-2">Ngày khởi hành:</strong><span class="text-danger ms-2 fw-medium">01/12/2024</span>
                <p class="m-2"><span class="me-2"><i class="bi bi-people-fill"></i></span>Số chỗ còn nhận: 20</p>

                <div class="m-2">
                  <strong>Người lớn</strong> <input type="number" min="1" class="w-25 "> 
                </div>
                <div class="m-2">
                  <strong>Trẻ em</strong> <input type="number" min="1" class="ms-4 w-25 "> 
                </div>
                <hr>
                <strong class="m-2" >Tổng: </strong>
              </div>
            </div>
            <hr>  

           <!-- <div class="row">
            <button class="btn btn-danger">Thanh Toán</button>
           </div> -->
          </div>
        </div>
      </div>
    </div>
<!-- main end -->
</template>

<!-- CSS -->
<style scoped>

</style>