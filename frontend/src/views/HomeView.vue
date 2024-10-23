<!-- JS -->
<script setup lang="ts">

import { RouterLink, RouterView, useRouter} from 'vue-router';
import ProductList from '../components/ProductList.vue';
import type { Product } from '../stores/Product';
import { ref, onMounted } from 'vue';

// import axios from 'axios';
// export default {
//    data() {
//     return {
//       tour: [],
//     },

//     created() {
//       this.getTour();
//     }, 

//     methods: {
//       async getTour() {
//         try {
//           const response = await axios.get('http://localhost:3000/tour');
//           this.tour = response.data;
//         } catch (error) {
//           console.error(error);
//         }
//       }
//     }
//    }
// }


const hostProducts = ref<Product[]>([]);
const tourTrongNuoc = ref<Product[]>([]);
const tourNuocNgoai = ref<Product[]>([]);

onMounted(async () =>{
  hostProducts.value = await fetch('http://localhost:3000/tour')
                              .then(response => response.json());
  tourTrongNuoc.value = await fetch('http://localhost:3000/tour?idtype=3')
                              .then(response => response.json());
  tourNuocNgoai.value = await fetch('http://localhost:3000/tour?idtype=5')
                              .then(response => response.json());
})

</script>

<!-- Main -->
<template>


   


 
     


    

    <!-- main 1 -->
    <div class="container-fluid bg-opacity-25 d-flex align-items-center flex-column" style="background-size: cover; background-image: url(https://benthanhtourist.com/assets/img/bg1.jpg);">
    <ProductList title="Chúng tôi giới thiệu đến bạn" title2="TOUR ĐANG HOT"   :tours="hostProducts " css1="mt-3 fs-5 text-white mt-5"  css2="fw-semibold text-white mb-4"  cl1="" cl2="" image="https://benthanhtourist.com/img/Home/hot.png"/>
 </div> 
    <!-- main 1 end -->
 
    <!-- main 2 -->
    <div class="container-fluid bg-opacity-25 d-flex align-items-center flex-column mb-5" style="background-size: cover; background-image: url(https://benthanhtourist.com/assets/img/bg.png);">
    <ProductList title="Khám phá lịch sử - văn hóa - con người Việt Nam với" title2="TOUR TRONG NƯỚC" background="url(https://benthanhtourist.com/assets/img/bg.png)"  :tours="tourTrongNuoc " css1="mt-3 fs-5  mt-5"  css2="fw-semibold mb-4" cl1="color: rgb(25% 25% 26%)" cl2="color: rgb(0% 24% 44%)" image="" />
 </div> 
     
    <!-- main 2 end -->

     <!-- main 3 -->
     
 <div class="container-fluid bg-opacity-25 d-flex align-items-center flex-column mb-5" style="background-size: cover; background-image: url(https://benthanhtourist.com/assets/img/bg2.jpg);">
    <ProductList title="Khám phá lịch sử - văn hóa thế giới với" title2="TOUR NƯỚC NGOÀI" background="url(https://benthanhtourist.com/assets/img/bg2.jpg)"  :tours="tourNuocNgoai " css1="mt-3 fs-5  mt-5 text-white"  css2="fw-semibold mb-4 text-white" cl1="" cl2="" image=""/>
 </div>
  <!-- main 3 end -->

   <!-- main 4 -->
   <div class="container-fluid bg-opacity-25 d-flex align-items-center flex-column mb-5" style="background-size: cover; background-image: url(https://benthanhtourist.com/assets/img/bg.png);">
    <div class="col-12 d-flex justify-content-center flex-column align-items-center mt-3">
      <span class="mt-3 fs-5  mt-5 " style="color: rgb(25% 25% 26%);">Các nước đang là cao điểm hiện tại</span>
      <h2 class=" fw-semibold mb-4 " style="color: rgb(0% 24% 44%);" >ĐIỂM ĐẾN HẤP DẪN</h2>
</div>
<div class="row g-2 d-flex d-flex justify-content-center gx-2 gy-5  pb-2  ">
      <div class="col-md-6">
        <div id="carouselExampleDark" class="carousel carousel-dark slide">
          <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
          </div>
          <div class="carousel-inner">
            <div class="carousel-item active" data-bs-interval="10000">
              <img src="https://benthanhtourist.com/images/destination/chau-au.jpg" class="d-block w-100" alt="...">
              <div class="carousel-caption d-none d-md-block bg-info bg-opacity-50 ">
                <h5 class="text-white fw-bold h4">Du Lịch Mùa Thu Châu Âu: Pháp - Thuỵ Sỹ - Ý - Núi Tuyết</h5>
                <p class="text-white fw-bold h5">Some representative placeholder content for the first slide.</p>
              </div>
            </div>
            <div class="carousel-item" data-bs-interval="2000">
              <img src="https://benthanhtourist.com/uploads/images/chau-au/Thuy%20Si/5c1a0ab38498d.jpg" class="d-block w-100" alt="...">
              <div class="carousel-caption d-none d-md-block bg-info bg-opacity-50 ">
                <h5 class="text-white fw-bold h4">Du Lịch Mùa Thu Đông - Tây Âu: Đức - Thuỵ Sỹ - Áo</h5>
                <p class="text-white fw-bold h5">Some representative placeholder content for the second slide.</p>
              </div>
            </div>
            <div class="carousel-item">
              <img src="https://benthanhtourist.com/uploads/images/trung-quoc/van-ly-truong-thanh.jpg" class="d-block w-100" alt="...">
              <div class="carousel-caption d-none d-md-block bg-info bg-opacity-50 ">
                <h5 class="text-white fw-bold h4">Du Lịch Trung Quốc: Thượng Hải - Hàng Châu - Tô Châu</h5>
                <p class="text-white fw-bold h5">Some representative placeholder content for the third slide.</p>
              </div>
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
      </div>
      <div class="col-md-3 ">
        <div class="row position-relative" >
          <img src="https://benthanhtourist.com/images/destination/chau-a.jpg" alt="" class="img-fluid rounded-2 ">
         <!-- <a href="#" style="left:5px;" class="btn btn-warning position-absolute w-50 ">Du lịch Châu Á</a> -->
         <div class=" position-absolute" style="top:0;">
          <button class="btn btn-warning rounded-0 "  type="button" data-bs-toggle="collapse" data-bs-target="#collapseWidthExample9" aria-expanded="false" aria-controls="collapseWidthExample">
            Du lịch Châu Á
          </button>
        
        <div style="min-height: 120px;">
          <div class="collapse collapse-horizontal" id="collapseWidthExample9">
            <div class="card card-body" style="width: 300px;margin-top: 18%; margin-left: 8%;">
              <div class=" d-flex justify-content-between">
                <p><span class="me-2 fw-bold"><i class="bi bi-clock"></i></span>24/09/2024</p>  
                 <a href="" class="link-offset-2 link-underline link-underline-opacity-0">Ngày khác</a>
                 
                </div> 
                  <span class="text-danger h5 fw-bold"><span class="text-dark h4 me-1 text-align-center"><i class="bi bi-cash"></i></span>1.000.000 VND</span>
                  <a href="#" class="btn btn-warning h-100 ">ĐẶT NGAY</a>
               
            </div>
          </div>
        </div>
         </div>
        </div>
        <div class="row mt-2 position-relative">
          <img src="https://benthanhtourist.com/images/destination/chau-uc.png" alt="" class="img-fluid rounded-2 ">
          <!-- <a href="#" style="left:5px;" class="btn btn-warning position-absolute w-50 ">Du lịch Châu Úc</a> -->
          <div class=" position-absolute" style="top:0;">
            <button class="btn btn-warning rounded-0 "  type="button" data-bs-toggle="collapse" data-bs-target="#collapseWidthExample10" aria-expanded="false" aria-controls="collapseWidthExample">
              Du lịch Châu Úc
            </button>
          
          <div style="min-height: 120px;">
            <div class="collapse collapse-horizontal" id="collapseWidthExample10">
              <div class="card card-body" style="width: 300px;margin-top: 18%; margin-left: 8%;">
                <div class=" d-flex justify-content-between">
                  <p><span class="me-2 fw-bold"><i class="bi bi-clock"></i></span>24/09/2024</p>  
                   <a href="" class="link-offset-2 link-underline link-underline-opacity-0">Ngày khác</a>
                   
                  </div> 
                    <span class="text-danger h5 fw-bold"><span class="text-dark h4 me-1 text-align-center"><i class="bi bi-cash"></i></span>1.000.000 VND</span>
                    <a href="#" class="btn btn-warning h-100 ">ĐẶT NGAY</a>
              </div>
            </div>
          </div>
           </div>
        </div>
      </div>
  </div>
  <div class="row g-2 d-flex d-flex justify-content-center gx-2 gy-5  pb-5  ">
    <div class="col-md-9">
      <div class="row g-2">
        <div class="col-ms-6 col-md-4  position-relative">
          <img src="https://benthanhtourist.com/images/destination/chau-my.jpg" alt="" class="img-fluid rounded-1">
          <!-- <button class="btn btn-warning position-absolute" style="left:0;">Du lịch Châu Âu</button> -->
          
           <div class=" position-absolute" style="top:0;">
            <button class="btn btn-warning rounded-0 "  type="button" data-bs-toggle="collapse" data-bs-target="#collapseWidthExample" aria-expanded="false" aria-controls="collapseWidthExample">
              Du lịch Châu Âu
            </button>
          
          <div style="min-height: 120px;">
            <div class="collapse collapse-horizontal" id="collapseWidthExample">
              <div class="card card-body" style="width: 300px;margin-top: 18%; margin-left: 8%;">
                <div class=" d-flex justify-content-between">
                  <p><span class="me-2 fw-bold"><i class="bi bi-clock"></i></span>24/09/2024</p>  
                   <a href="" class="link-offset-2 link-underline link-underline-opacity-0">Ngày khác</a>
                   
                  </div> 
                    <span class="text-danger h5 fw-bold"><span class="text-dark h4 me-1 text-align-center"><i class="bi bi-cash"></i></span>1.000.000 VND</span>
                    <a href="#" class="btn btn-warning h-100 ">ĐẶT NGAY</a>
              </div>
            </div>
          </div>
           </div>
        </div>
        <div class="col-ms-6 col-md-4  position-relative">
          <img src="https://benthanhtourist.com/images/destination/chau-phi.jpg" alt="" class="img-fluid rounded-1">
          <!-- <button class="btn btn-warning position-absolute" style="left:0;">Du lịch Châu Phi</button> -->
          <div class=" position-absolute" style="top:0;">
            <button class="btn btn-warning rounded-0 "  type="button" data-bs-toggle="collapse" data-bs-target="#collapseWidthExample2" aria-expanded="false" aria-controls="collapseWidthExample">
              Du lịch Châu Phi
            </button>
          
          <div style="min-height: 120px;">
            <div class="collapse collapse-horizontal" id="collapseWidthExample2">
              <div class="card card-body" style="width: 300px;margin-top: 18%; margin-left: 8%;">
                <div class=" d-flex justify-content-between">
                  <p><span class="me-2 fw-bold"><i class="bi bi-clock"></i></span>24/09/2024</p>  
                   <a href="" class="link-offset-2 link-underline link-underline-opacity-0">Ngày khác</a>
                   
                  </div> 
                    <span class="text-danger h5 fw-bold"><span class="text-dark h4 me-1 text-align-center"><i class="bi bi-cash"></i></span>1.000.000 VND</span>
                    <a href="#" class="btn btn-warning h-100 ">ĐẶT NGAY</a>
              </div>
            </div>
          </div>
           </div>
        </div>
        <div class="col-ms-6 col-md-4  position-relative">
          <img src="https://benthanhtourist.com/images/destination/mien-bac.jpg" alt="" class="img-fluid rounded-1">
          <!-- <button class="btn btn-warning position-absolute" style="left:0;">Du lịch Miền Bắc</button> -->
          <div class=" position-absolute" style="top:0;">
            <button class="btn btn-warning rounded-0 "  type="button" data-bs-toggle="collapse" data-bs-target="#collapseWidthExample3" aria-expanded="false" aria-controls="collapseWidthExample">
              Du lịch Miền Bắc
            </button>
          
          <div style="min-height: 120px;">
            <div class="collapse collapse-horizontal" id="collapseWidthExample3">
              <div class="card card-body" style="width: 300px;margin-top: 18%; margin-left: 8%;">
                <div class=" d-flex justify-content-between">
                  <p><span class="me-2 fw-bold"><i class="bi bi-clock"></i></span>24/09/2024</p>  
                   <a href="" class="link-offset-2 link-underline link-underline-opacity-0">Ngày khác</a>
                   
                  </div> 
                    <span class="text-danger h5 fw-bold"><span class="text-dark h4 me-1 text-align-center"><i class="bi bi-cash"></i></span>1.000.000 VND</span>
                    <a href="#" class="btn btn-warning h-100 ">ĐẶT NGAY</a>
              </div>
            </div>
          </div>
           </div>
        </div>
        <div class="col-ms-6 col-md-4  position-relative">
          <img src="https://benthanhtourist.com/images/destination/mien-trung.jpg" alt="" class="img-fluid rounded-1">
          <!-- <button class="btn btn-warning position-absolute" style="left:0;">Du lịch Miền Trung</button> -->
          <div class=" position-absolute" style="top:0;">
            <button class="btn btn-warning rounded-0 "  type="button" data-bs-toggle="collapse" data-bs-target="#collapseWidthExample4" aria-expanded="false" aria-controls="collapseWidthExample">
              Du lịch Miền Trung
            </button>
          
          <div style="min-height: 120px;">
            <div class="collapse collapse-horizontal" id="collapseWidthExample4">
              <div class="card card-body" style="width: 300px;margin-top: 18%; margin-left: 8%;">
                <div class=" d-flex justify-content-between">
                  <p><span class="me-2 fw-bold"><i class="bi bi-clock"></i></span>24/09/2024</p>  
                   <a href="" class="link-offset-2 link-underline link-underline-opacity-0">Ngày khác</a>
                   
                  </div> 
                    <span class="text-danger h5 fw-bold"><span class="text-dark h4 me-1 text-align-center"><i class="bi bi-cash"></i></span>1.000.000 VND</span>
                    <a href="#" class="btn btn-warning h-100 ">ĐẶT NGAY</a>
              </div>
            </div>
          </div>
           </div>
        </div>
        <div class="col-ms-6 col-md-4  position-relative">
          <img src="https://benthanhtourist.com/images/destination/abc.jpg" alt="" class="img-fluid rounded-1">
          <!-- <button class="btn btn-warning position-absolute" style="left:0;">Du lịch Miền Nam</button> -->
          <div class=" position-absolute" style="top:0;">
            <button class="btn btn-warning rounded-0 "  type="button" data-bs-toggle="collapse" data-bs-target="#collapseWidthExample5" aria-expanded="false" aria-controls="collapseWidthExample">
              Du lịch Miền Nam
            </button>
          
          <div style="min-height: 120px;">
            <div class="collapse collapse-horizontal" id="collapseWidthExample5">
              <div class="card card-body" style="width: 300px;margin-top: 18%; margin-left: 8%;">
                <div class=" d-flex justify-content-between">
                  <p><span class="me-2 fw-bold"><i class="bi bi-clock"></i></span>24/09/2024</p>  
                   <a href="" class="link-offset-2 link-underline link-underline-opacity-0">Ngày khác</a>
                   
                  </div> 
                    <span class="text-danger h5 fw-bold"><span class="text-dark h4 me-1 text-align-center"><i class="bi bi-cash"></i></span>1.000.000 VND</span>
                    <a href="#" class="btn btn-warning h-100 ">ĐẶT NGAY</a>
              </div>
            </div>
          </div>
           </div>
        </div>
        <div class="col-ms-6 col-md-4  position-relative">
          <img src="https://benthanhtourist.com/images/destination/tay-nguyen.jpg" alt="" class="img-fluid rounded-1">
          <!-- <button class="btn btn-warning position-absolute" style="left:0;">Du lịch Tây Nguyên</button> -->
          <div class=" position-absolute" style="top:0;">
            <button class="btn btn-warning rounded-0 "  type="button" data-bs-toggle="collapse" data-bs-target="#collapseWidthExample6" aria-expanded="false" aria-controls="collapseWidthExample">
              Du lịch Tây Nguyên
            </button>
          
          <div style="min-height: 120px;">
            <div class="collapse collapse-horizontal" id="collapseWidthExample6">
              <div class="card card-body" style="width: 300px;margin-top: 18%; margin-left: 8%;">
                <div class=" d-flex justify-content-between">
                  <p><span class="me-2 fw-bold"><i class="bi bi-clock"></i></span>24/09/2024</p>  
                   <a href="" class="link-offset-2 link-underline link-underline-opacity-0">Ngày khác</a>
                   
                  </div> 
                    <span class="text-danger h5 fw-bold"><span class="text-dark h4 me-1 text-align-center"><i class="bi bi-cash"></i></span>1.000.000 VND</span>
                    <a href="#" class="btn btn-warning h-100 ">ĐẶT NGAY</a>
              </div>
            </div>
          </div>
           </div>
        </div>
      </div>
    </div>
    
</div>
   </div>
<!-- main 4 end -->

 <!-- main 5 -->
 <div class="container-fluid bg-opacity-25 d-flex align-items-center flex-column mb-2" style="background-color:rgb(96% 96% 96%)">
  <div class="col-12 d-flex justify-content-center flex-column align-items-center mt-3">
    <h2 class=" fw-semibold mb-4 mt-5 " style="color: rgb(0% 24% 44%);">KHOẢNH KHẮC LỮ HÀNH</h2>
</div>
<div class="row d-flex gx-2 gy-5 justify-content-evenly pb-5  w-100">
<div class="col-md-10">
  <div class="row g-3">
<div class="col-md-6 col-lg-4 d-flex justify-content-center  ">
 <a href="#"><img src="https://benthanhtourist.com/uploads/images/khoanh-khac/tour-phan-thiet-petrolimex/doan-petrolimex-5.jpg" alt="" class="img-fluid rounded-2"></a>
</div>
<div class="col-md-6 col-lg-4 d-flex justify-content-center  ">
  <a href="#"><img src="https://benthanhtourist.com/uploads/images/khoanh-khac/tour-thai-lan-archetype/archetype-3.JPG" alt="" class="img-fluid rounded-2"></a>
 </div>
 <div class="col-md-6 col-lg-4 d-flex justify-content-center  ">
  <a href="#"><img src="https://benthanhtourist.com/uploads/images/khoanh-khac/doan-inbound-an-do/doan-an-do-inbound-1.JPG" alt="" class="img-fluid rounded-2"></a>
 </div>
 <div class="col-md-6 col-lg-4 d-flex justify-content-center  ">
  <a href="#"><img src="https://benthanhtourist.com/uploads/images/khoanh-khac/team-building-tai-hue/team-building.jpg" alt="" class="img-fluid rounded-2"></a>
 </div>
 <div class="col-md-6 col-lg-4 d-flex justify-content-center  ">
  <a href="#"><img src="https://benthanhtourist.com/uploads/images/khoanh-khac/doan-tham-quan-singapore/singapore-1.jpg" alt="" class="img-fluid rounded-2"></a>
 </div>
 <div class="col-md-6 col-lg-4 d-flex justify-content-center  ">
  <a href="#"><img src="https://benthanhtourist.com/uploads/images/khoanh-khac/khach-tham-quan-dai-loan/hinh-2.jpg" alt="" class="img-fluid rounded-2"></a>
 </div>
 <div class="col-md-6 col-lg-4 d-flex justify-content-center  ">
  <a href="#"><img src="https://benthanhtourist.com/uploads/images/khoanh-khac/khach-tham-quan-han-quoc/hinh-1.jpg" alt="" class="img-fluid rounded-2"></a>
 </div>
 <div class="col-md-6 col-lg-4 d-flex justify-content-center  ">
  <a href="#"><img src="https://benthanhtourist.com/uploads/images/khoanh-khac/khach-tham-quan-an-do/hinh-6.jpg" alt="" class="img-fluid rounded-2"></a>
 </div>
 <div class="col-md-6 col-lg-4 d-flex justify-content-center  ">
  <a href="#"><img src="https://benthanhtourist.com/uploads/images/khoanh-khac/tour-phan-thiet-petrolimex/doan-petrolimex-5.jpg" alt="" class="img-fluid rounded-2"></a>
 </div>

</div>
</div>

</div>

<div class="row d-flex justify-content-center mb-5">
<div class="col">
<a href="#" class="px-5 py-2 rounded-0 text-white h4  " style="text-decoration: none; background-color: rgb(0% 24% 44%);">Xem thêm</a>
</div>
</div>
  
</div>
<!-- main 5 end -->

<!-- contact -->
<div class="container-fluid d-flex justify-content-center bg-warning py-1">
  <div class="col-md-10">
    <div class="row ">
      <div class="col-md-7 ">
        <div class="row ">
          <div class="col-md-3 w-25  d-flex align-items-center justify-content-center ">
            <span class="h1 text-white  w-50 h-75 d-flex align-items-center  justify-content-center  text-center" style="border-radius: 50%;  background-color: rgb(0% 24% 44%);"><i class="bi bi-envelope"></i></span>
          </div>
          <div class="col-md-5 w-75">
            <h4>Đăng ký để nhận Bản Tin</h4>
            <p class="w-100">Nhập email để nhận chương trình tour khuyến mãi nhanh nhất và các ưu đãi hấp dẫn khác</p>
          </div>
        </div>
      </div>
      <div class="col-md-5">
        <div class="row mt-3">
          <div class="col-md-12 "></div>
            <form >
              <div class="form-group d-flex">
                <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="Email">
                <button type="submit" class="btn btn-danger w-25">Đăng ký</button>
              </div>
              
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

<!-- contac end -->
</template>

<!-- CSS -->
<style scoped>

</style>