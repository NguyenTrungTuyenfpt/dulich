<!-- JS -->
<script setup lang="ts">

import { RouterLink, RouterView, useRouter} from 'vue-router';
import TripsList from '../components/TripsList.vue';
import type { Product } from '../stores/Product';
import { ref, onMounted } from 'vue';


const Trips = ref<Product[]>([]);


onMounted(async () =>{
  Trips.value = await fetch('http://localhost:3000/tour')
                              .then(response => response.json());
})
</script>

<!-- Main -->
<template>




<!-- main -->
<div class="container-fluid d-flex justify-content-center mt-5 mb-5" >
      <div class="col-md-9">
        <div class="row g-5">
          <div class="col-lg-4 col-ms-5 d-flex align-items-center flex-column">
           <div class="row rounded-1 shadow d-flex align-items-center flex-column w-100"  style="background-color: rgb(100% 100% 100%);">
            <div class="row mb-1   " style="background-color:rgb(0% 24% 44%);">
              <h4 class="text-white  fw-bold fs-md-2 fs-sm-4 text-center py-1  " > Tìm Tour</h4>
            </div>
            <div class="row w-100">
              <form >
                <div class="mb-1">
                  <input  type="text" class="form-control shadow " id="exampleFormControlInput1" placeholder="Nhập địa danh, địa điểm">
                </div>
                <div class="mb-1">
                  <select class="form-select shadow " aria-label="Default select example">
                    <option selected>Loại tour</option>
                    <option value="1">Trong nước</option>
                    <option value="2">Nước ngoài</option>
                    <option value="3">Free & easy</option>
                  </select>
                </div>
                <div class="mb-1">
                  <select class="form-select shadow " aria-label="Default select example">
                    <option selected>Nơi khởi hành</option>
                    <option value="1">Hà Nội</option>
                    <option value="2">Hồ Chí Minh</option>
                    <option value="3">Nam Định</option>
                  </select>
                </div>
                <div class="mb-1">
                  <select class="form-select shadow " aria-label="Default select example">
                    <option selected>Nơi đến</option>
                    <option value="1">Châu Á</option>
                    <option value="2">Châu Âu</option>
                    <option value="3">Châu Phi </option>
                  </select>
                </div>
                <div class="mb-1">
                  <select class="form-select shadow " aria-label="Default select example">
                    <option selected>Dòng tour</option>
                    <option value="1">Tour mùa Đông</option>
                    <option value="2">Tour mùa hè</option>
                    <option value="3">Tour Tết 2025</option>
                  </select>
                </div>
                <div class="mb-1">
                  <input  type="date" class="form-control shadow mb-2 " id="exampleFormControlInput3" placeholder="Ngày đi">
                </div>
                
                
                <button class="btn btn-warning form-control mb-3 text-white"><span class="me-2"><i class="bi bi-search"></i></span>Tìm Kiếm</button>

              </form>
            </div>
           </div>
           <div class="row mt-2 rounded-1 shadow d-flex align-items-center flex-column w-100"  style="background-color: rgb(100% 100% 100%);">
            <div class="row mb-1   " style="background-color:rgb(0% 24% 44%);">
              <h4 class="text-white  fw-bold fs-md-2 fs-sm-4 text-center py-1  " ><span class="me-2"><i class="bi bi-building"></i></span> Liên Hệ</h4>
            </div>
            <div class="row w-100">
             <strong>CÔNG TY CỔ PHẦN DỊCH VỤ DU LỊCH BẾN THÀNH (BENTHANH TOURIST) </strong>
             <span class="py-1"><strong>Trụ sở:</strong>70 Lý Tự Trọng, P. Bến Thành, Quận 1, TP. Hồ Chí Minh</span>
             <span class="py-1"><strong>Điện thoại:</strong>028.38227788</span>
             <span class="py-1"><strong>Fax:</strong>028.3829 5060</span>
             <span class="py-1"><strong>Email: </strong>benthanh@benthanhtourist.com</span>
             <span class="py-1"><strong>Tổng đài:</strong>1900 6668</span>
              <h5 >KẾT NỐI CHÚNG TÔI <span><i class="bi bi-whatsapp"></i></span></h5>

           
            </div>
           </div>
          </div>
          <div class="col-lg-8 col-ms-7 " >
            <div class="row m-2 w-100" >
              <strong class="h2 text-dark w-100 fw-bold fs-md-2 fs-sm-4  py-1 " > Du lịch nước ngoài</strong>
              <p>Nếu bạn là một tín đồ đam mê <a href="#">du lịch nước ngoài</a> và muốn tìm hiểu thêm về những điều mới lạ 
                ở các nước bạn trên khắp thế giới, đừng ngần ngại hãy đến ngay với BenThanh Tourist. Trong 
                chuyến hành trình đầy thú vị này, quý khách sẽ được thỏa sức khám phá những cảnh đẹp hiếm có,
                 nhiều công trình kiến trúc ấn tượng và nền văn hóa đặc sắc ở nơi mình đến. </p>
            </div>
            <!-- ================ -->
            
                <TripsList  :tours="Trips" />
            
            <!-- ================ -->
             
            <hr>  
          </div>
        </div>

        
      </div>
    </div>
    
<!-- main end -->
</template>

<!-- CSS -->
<style scoped>

</style>