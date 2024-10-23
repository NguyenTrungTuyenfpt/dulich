<script setup lang="ts">
import { RouterLink, RouterView, useRouter} from 'vue-router'
import { ref } from 'vue';
import { isAuthenticated } from './stores/user';

const keyword = ref(''); 
const selected = ref('');
const selected2 = ref('');
const router = useRouter();

const handleSeach = () => {
  if (keyword.value) {
    router.push({ path: 'timkiem', query: { tukhoa: keyword.value}});
  }
  else if (selected.value) {
    router.push({ path: 'timkiem', query: { tukhoa: selected.value}});
  }
  else if (selected2.value) {
    router.push({ path: 'timkiem', query: { tukhoa: selected2.value}});
  }
};

</script>

<template>
  <!-- dau trang -->
  

  <!-- =========================== -->
   <!-- top header -->
   <div class="container-fluid" style="background-color: rgb(0.78% 19% 33%);">
    <div class="col-ms-12 d-flex justify-content-end flex-wrap px-3">
      
      <a  class="p-2   link-warning text-warning fw-semibold link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover" href="#">1900 6668 </a>
      <a  class="p-2 link-warning text-white fw-semibold link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover" href="#"> benthanh@benthanhtourist.com</a>
      <a  class="p-2 link-warning text-white dropdown-toggle fw-semibold link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover" data-bs-toggle="dropdown" data-bs-auto-close="true" aria-expanded="false" href="#">
          Quan hệ cổ đông
      </a>
        <ul class="dropdown-menu">
          <li><a class="dropdown-item" href="#">Menu item</a></li>
          <li><a class="dropdown-item" href="#">Menu item</a></li>
        </ul>  
      <a  class="p-2 link-warning text-white fw-semibold link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover" href="#">Tin Tức</a>
      <a  class="p-2 link-warning text-white fw-semibold link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover" href="#">Tuyển dụng</a>
      <RouterLink class="py-1 me-1 px-2 link-warning btn btn-outline-danger link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover" to="./gio-hang"><i class="bi bi-cart-plus"></i></RouterLink>
      <RouterLink v-if="!isAuthenticated" class="py-1  px-2 link-warning btn btn-outline-danger link-warning link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover" to="/dang-nhap"><i class="bi bi-person-circle"></i></RouterLink>
      <RouterLink v-if="isAuthenticated" class="py-1  px-2 link-warning btn btn-outline-danger link-warning link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover" to="/thong-tin"><i class="bi bi-info-circle"></i></RouterLink>
      <!-- <a  class="py-1  px-2 link-warning btn btn-outline-danger link-warning link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover" href="./login.html"><i class="bi bi-person-circle"></i></a> -->
      <a  class="p-2 link-warning link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover" href="#"><img src="https://benthanhtourist.com/img/Home/uk.jpg" alt="" class="img-fluid"></a>
    </div>
   </div>
  <!-- top header end-->

    <!-- nav bar -->
    <nav class="navbar navbar-expand-lg  d-flex justify-content-center" style="background-color: rgb(0% 24% 44%);">
        <div class="container-fluid col-10">
          <a class="navbar-brand col-md-5 " href="./index.html">
            <img src="https://benthanhtourist.com/img/Home/logo-35-year.png" alt="" class="img-fluid" style="width: 180px;">
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse col-md-6" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
              <li class="nav-item ">
               <RouterLink class="nav-link text-white fw-semibold link-warning active" aria-current="page" to="/">TRANG CHỦ</RouterLink>
              </li>
              <li class="nav-item  ">
                <RouterLink class="nav-link text-white fw-semibold link-warning active" aria-current="page" to="/trips">DU LỊCH</RouterLink>
              </li>
              <li class="nav-item ">
                <RouterLink class="nav-link text-white fw-semibold link-warning active" aria-current="page" to="/">INBOUND</RouterLink>
              </li>
              <li class="nav-item ">
                <RouterLink class="nav-link text-white fw-semibold link-warning active" aria-current="page" to="/tips">TRAVEL TIPS</RouterLink>
              </li>
              <li class="nav-item ">
                <RouterLink class="nav-link text-white fw-semibold link-warning active" aria-current="page" to="/">KHÁCH SẠN</RouterLink>
              </li>
              <li class="nav-item ">
                <RouterLink class="nav-link text-white fw-semibold link-warning active" aria-current="page" to="/">GIỚI THIỆU</RouterLink>
              </li>
              <li class="nav-item ">
                <RouterLink class="nav-link text-white fw-semibold link-warning active" aria-current="page" to="/">LIÊN HỆ</RouterLink>
              </li>
            </ul>
           
          </div>
        </div>
      </nav>

      
    <!-- nav bar end -->

     <!-- background- -->
     
     <div id="carouselExampleAutoplaying" class="carousel slide  " style="position: relative;" data-bs-ride="carousel ">
        <div class="carousel-inner ">
          <div class="carousel-item active">
            <img src="https://benthanhtourist.com/uploads/images/banner/2024/tour-han-quoc-mua-thu.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="https://benthanhtourist.com/uploads/images/banner/2024/tour-dai-loan-1.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="https://benthanhtourist.com/uploads/images/banner/2024/tour-uc.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="https://benthanhtourist.com/uploads/images/banner/2024/banner-hong-kong.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="https://benthanhtourist.com/uploads/images/banner/2024/nuoc-anh-mua-thu.jpg" class="d-block w-100" alt="...">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>

        
        <!-- search -->
         
    <div id="sconn1" class="container-fluid  w-100 d-flex justify-content-center" style="z-index: 3;position: absolute; top: 82%;" >
        <div class="row d-flex justify-content-center w-100  ">
            <div class="col-8 p-3 rounded" style="background-color: rgba(0% 24% 44% / 0.8);">
                <div class="d-flex">
                    <select v-model="selected" @change="handleSeach" name="" id="" class="form-select  ">
                        <option value="" >Tìm theo giá</option>
                        <option >Dưới 10 triệu</option>
                        <option >Từ 10 - 20 triệu</option>
                        <option >Trên 20 triệu</option>
                        <option >Tăng dần</option>
                        <option >Giảm dần</option>
                    </select>
                    <select v-model="selected2" @change="handleSeach" name="" id="" class="form-select  ms-3">
                        <option value="" >Theo địa điểm</option>
                        <option >Hà Nội</option>
                        <option >Châu Âu</option>
                        <option >Miền Bắc</option>
                        <option >Ninh Bình</option>
                        <option >Tuyệt Tình Cốc</option>
                        <option >Đông Bắc</option>
                        <option >Điện Biên</option>
                        <option >Sapa</option>
                        <option >Vin Wonders</option>
                        <option >Phan Thiết</option>
                        <option >Hội An</option>
                        <option >Miền Tây</option>
                        <option >Dubai</option>
                        <option >Hong Kong</option>
                        <option >Angkor Wat Huyền Bí</option>
                        <option >Hàn Quốc</option>
                        <option >Bắc Âu</option>
                        <option >Pháp</option>
                        <option >Mùa</option>
                        <option >Tây Nguyên</option>
                        <option >Tết</option>
                    </select>
                    <input v-model="keyword" @key.enter="handleSeach" class="form-control me-2 ms-3" type="text" placeholder="Tìm kiếm" >
                    <button  @click="handleSeach" class="btn btn-danger ms-3" >Search</button>
                  </div>
                
            </div>
        </div>
      </div>

      <!-- mobile -->

      <div id="sconn" class= "shadow container-fluid  mb-1 mt-1 w-100 d-none justify-content-center align-items-center  " style="background-color: rgba(0% 24% 44% / 0.8);" >
        <div class="row d-flex justify-content-center align-items-center w-100  ">
           
                <div class="row g-2 d-flex  p-2 rounded w-100 " >
                  <div class="col-md-3 col-lg-2 d-flex justify-content-center">
                  <select v-model="selected" @change="handleSeach" name="" id="" class="form-select w-100  ">
                        <option value="" >Tìm theo giá</option>
                        <option value="Dưới 10 triệu">Dưới 10 triệu</option>
                        <option value="từ 10 - 20 triệu">Từ 10 - 20 triệu</option>
                        <option value="Trên 20 triệu">Trên 20 triệu</option>
                    </select>
                    </div>
                    <div class="col-md-3 col-lg-2 d-flex justify-content-center">
                    <select v-model="selected2" @change="handleSeach" name="" id="" class="form-select w-100  ">
                        <option value="" >Theo địa điểm</option>
                        <option value="Hà Nội" >Hà Nội</option>
                        <option value="Châu Âu">Châu Âu</option>
                        <option value="Miền Bắc">Miền Bắc</option>
                        <option >Ninh Bình</option>
                        <option >Tuyệt Tình Cốc</option>
                        <option >Đông Bắc</option>
                        <option >Điện Biên</option>
                        <option >Sapa</option>
                        <option >Vin Wonders</option>
                        <option >Phan Thiết</option>
                        <option >Hội An</option>
                        <option >Miền Tây</option>
                        <option >Dubai</option>
                        <option >Hong Kong</option>
                        <option >Angkor Wat Huyền Bí</option>
                        <option >Hàn Quốc</option>
                        <option >Bắc Âu</option>
                        <option >Pháp</option>
                        <option >Mùa</option>
                        <option >Tây Nguyên</option>
                        <option >Tết</option>
                    </select>
                    </div>
                    <div class="col-md-3 col-lg-3 d-flex justify-content-center">
                      <input type="text" placeholder="Tìm kiếm" class="form-control  w-100" v-model="keyword" @key.enter="handleSeach">
                    </div>
                    <div class="col-md-3 col-lg-1 d-flex justify-content-center">
                      <button @click="handleSeach" class="btn btn-danger  w-100" >Search</button>
                    </div>
                  </div>

                
               
               
        </div>
      </div>
      <!-- search end -->
    </div>
    
      
      
    <!-- background end -->
    
    <!-- search tour -->
     
      <div class="container-fluid navbar navbar-expand-lg  d-flex justify-content-center" style="background-color:rgb(0% 24% 44% / 0.8);">
        <ul class="container-fluid me-auto mb-2 mb-lg-0 d-flex flex-nowrap justify-content-center w-100 ">
          <li class="nav-link col db ">
            <a class="nav-link w-100 d-flex flex-column align-items-center " href="">
              <span class="d-flex flex-column align-items-center"  ><img class="img-fluid w-50" src="https://benthanhtourist.com/uploads/images/icons/toty2024_white.png" alt=""></span>
              <span class="text-white fw-semibold text-uppercase text-center " >Tour Of The Year 2024</span>
            </a>
          </li>
          <li class="nav-link col db ">
            <a class="nav-link w-100 d-flex flex-column align-items-center " href="">
              <span class="d-flex flex-column align-items-center"  ><img class="img-fluid w-50" src="https://benthanhtourist.com/uploads/images/icons/5c0e6f24f0ea9.png" alt=""></span>
              <span class="text-white fw-semibold text-uppercase text-center " >Tour Nhật siêu tiết kiệm</span>
            </a>
          </li>
          <li class="nav-link col db ">
            <a class="nav-link w-100 d-flex flex-column align-items-center " href="">
              <span class="d-flex flex-column align-items-center"  ><img class="img-fluid w-50" src="https://benthanhtourist.com/uploads/images/icons/5d54f971964d9.PNG" alt=""></span>
              <span class="text-white fw-semibold text-uppercase text-center " >Tour Mùa Thu - Đông 2024</span>
            </a>
          </li>
          <li class="nav-link col db ">
            <a class="nav-link w-100 d-flex flex-column align-items-center " href="">
              <span class="d-flex flex-column align-items-center"  ><img class="img-fluid w-50" src="https://benthanhtourist.com/uploads/images/icons/5c0e702bb4138.png" alt=""></span>
              <span class="text-white fw-semibold text-uppercase text-center " >Tour Tết 2025</span>
            </a>
          </li>
          <li class="nav-link col db ">
            <a class="nav-link w-100 d-flex flex-column align-items-center " href="">
              <span class="d-flex flex-column align-items-center"  ><img class="img-fluid w-50" src="https://benthanhtourist.com/uploads/images/icons/5d54f9719bc5f.PNG" alt=""></span>
              <span class="text-white fw-semibold text-uppercase text-center " >Tour cao cấp </span>
            </a>
          </li>
        </ul>
      </div>
    <!-- search tour  end-->

    
    
    

  

  <!-- than trang ==> thay doi khi chuyen trang  -->
  <!-- <div class="container mt-3"> -->
    <RouterView />
    
    
  <!-- chan trang -->
  <footer >
  <!-- footer -->
 <!-- footer -->
 <div class="container-fluid d-flex justify-content-center mt-1  bg-opacity-25" style="background-color: rgb(0% 24% 44%);">
 <div class="col-md-10">
  <div class="row">
    <div class="row d-flex flext-start">
      <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAAA8FBMVEVHcEziGVfoJifoJinoJinoJxz2lSD1kyH1kyH1kyHoJin6rRv1kyH1kyHoJinrGEv1lCH1kSHoJiToJinoDI6pi1TrDIrqDYroDYzoDYzpDYr5phz/xBT/wRToDoroDorpDI3oJyXnHinLxyr/wBT/wBX/wRT/wBUTSqfmECr/wBVnMI5nL45qLY1iMI5pL41nMI5uKowkem5oL44AV6JBqkUAVqEAVqEAVqEAVqGKwkCMwkAAVqGMwkAAVqGNw0BnMI4AVaI4lkeHwkGPxD83lUc7l0c1lUeOxD87l0Y4lkeNw0AAWKI7l0Y5lkcAU6SLW7ttAAAAUHRSTlMAHNbto09fttfz/yf/4rc1nH+JW10Pg8bapf9DZodW7Udy/yD/n8PbHmWz/4RUarvwMDzldCH/tIhX0ebU/7Ga1+1tXj2w/1KEvJG6sezcoIsCKrMAAAIGSURBVHgBZJBVgsNADEPVMDNny8x4/7OtXIb3E5BGHhkPOoqqaDqIYVq2iR+cK2rH9a7433pA8WoJI8q258WfeocSkIij4xuQGHygOY4GojiOAmJ5nvFhCNMkBJDldMhL7HnRW35RVlWdASib3HESAK3nmX/dXFT5e6eHfjMYcsZwNGZCdzKZyvHmRdH02VcJnJHLGrPJZDIHKgr1oLPohIVYboWXhue57Uoc6PMUWa83QNEMpGsKmLIp5HRIAsh2vZYybKB3qDAAgCsJteSSjUQ8MG9b4IwuBk1TYrc/rNfr40M3uGzbbF1OGANNcVqT82b7NLRGZHt+Tn0GshOZ4ifteELy2/XW+8UFX/yXRdYIDsNAFP391moCTZhZE5LZlhXj/W+zozA8s//wtK3elQCsviGi/eH4EFvtgZUH4nS+BcDmoBTR6Bme2xu0/+A4ThfL6XQBxqXje/w2GM9xPPjXCWFHAYBwA0QxgF6vCUA4zhmr6cp2QLQDEp0CxjHXEgHEnMOmmPrzHVdw0VpnQM5/80jK2JztG7Bli1lBJLVOtQack3Ge5LctTOeKDUqJUqeGf8YPPcKNxfreJGcRtgTExss9lp8ounbJOapu17aTZCneOfAkwZRsIW7PTwNBRGLkBlIzmdjwHZ/UdKW20pUQXwRkUZDVVb/gBxWowwiMzMo3/R8F3lsJ4KC+dQAAAABJRU5ErkJggg==" style="width: 7%;" alt="" class="img-fluid">
    </div>
    <div class="row d-flex mt-3  flex-start text-white">
      <div class="col-md-6 col-lg-3 justify-content-center">
        <p class="fw-bold h-3">CÔNG TY CỔ PHẦN DỊCH VỤ DU LỊCH BẾN THÀNH</p>
        <p>Số 09 Bùi Cẩm Hổ, P. Tân Thới Hòa, Q. Tân Phú, TP. Hồ Chí Minh</p>
        <p>Tel: (+84.28) 7300 8666</p>
        <p>Fax: (+84.28) 3 7960 806</p>
        <p>Giấy CNĐKDN: 0301435068</p>Giấy CNĐKDN: 0301435068
        <p>Ngày cấp: 08/02/1995 - Sở KH&ĐT TP.HCM</p>
      </div>
      <div class="col-md-6 col-lg-3 justify-content-center">
        <p class="fw-bold h-3">ĐIỂM ĐẾN</p>
        <p>Du lịch Buôn Mê Thuột</p>
        <p>Du lịch Miền Bắc</p>
        <p>Du lịch Quy Nhơn</p>
        <p>Du lịch Indonesia</p>
        <p>Du lịch biển đảo</p>
      </div>
      <div class="col-md-6 col-lg-3 justify-content-center">
        <p class="fw-bold h-3">HOTLINE</p>
        <p>Tour đoàn trong nước: 0909.819.920</p>
        <p>Tour đoàn nước ngoài: 0919.696.894</p>
        <p>Vé máy bay: 0823.26.0110</p>
        <p>Khách lẻ: 0832.666.000</p>
        <img src="./TaiNguyenLab1/logoSaleNoti.png" style="width: 250px;" class="img-fluid" alt="">
      </div>
      <div class="col-md-6 col-lg-3 justify-content-center">
       <div class="row">
      <div class="col w-20">
        <img src="./TaiNguyenLab1/icon-phone-big.svg" style="width: 60px;" alt="" class="img-fluid" >
      </div>
      <div class="col w-75 d-flex flext-start">
        <h5 class="text-start flext-start">CALL CENTRR <br>  <span class="fs-5 fw-bold text-danger ">1800 - 6500</span></h5>
      </div>
      </div>
      <hr >
      <div class="row">
        <span class="col fs-4 "><i class="bi bi-facebook"></i></span>
        <span class="col fs-4"><i class="bi bi-google"></i> </span>
       <span class="col fs-4"> <i class="bi bi-instagram"></i></span>
      </div>
      <hr>
      <div class="row">
        <h6 class="text-start flext-start">DOI TAC<br>  </h6>
        <div class="row">
          <span class="col fs-4 "><img src="./TaiNguyenLab1/icon-visa.svg" alt=""> </span>
          <span class="col fs-4 "><img src="./TaiNguyenLab1/icon-master-card.svg" alt=""> </span>
          <span class="col fs-4 "><img src="./TaiNguyenLab1/icon-vtp.svg" alt=""> </span>
        </div>
      </div>
      </div>
     
    </div>
    
  </div>
 </div>
</div>
 <!-- footer end -->
  </footer>
</template>

<style scoped>
@media screen and (max-width: 850px) { 
    #sconn {
        display: flex !important;
        box-shadow: 0px 0px 10px rgb(58, 207, 17); /* Thêm các giá trị offset-x, offset-y, blur-radius */
    }
    #sconn1 {
        display: none !important;
    }
    .db > a > span {
        font-size: 0.5rem !important;
    }
}
</style>
