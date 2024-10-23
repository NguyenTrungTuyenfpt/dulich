<!-- JS -->
<script setup lang="ts">
    import { ref, onMounted, computed, watch } from 'vue';
    import { useRoute } from 'vue-router';
    import type { Product } from '../stores/Product';

    
    const product = ref<Product | null>(null);
    const route = useRoute();
   

    onMounted( async () => {
        const response = await fetch(`http://localhost:3000/tour/${route.params.id}`);
        product.value = await response.json();
        console.log(product.value);
    })

    

   

    // const product = computed ( () => {
    //   if (product.value && product.value.id) {
    //     return product.value.id === Number(route.params.id) ? product.value : null;
    // }
    // });
</script>

<!-- Main -->
<template>



      <!-- main -->
       

      <div class="container-fluid d-flex justify-content-center mt-5 mb-5" >
      <div class="col-md-9">
        <div class="row g-5">
          <div class="row mt-4">
            <div class="col-lg-8 col-ms-7 text-white text-center">
              <div class="row py-3" style="background-color: rgb(0% 24% 44%);">
                <div class="col-md-5 ">
                  <span class=" m-2 h5 d-block align-items-center"><i class="bi bi-cash h2"></i><strong class="ms-2 h3">11.000.000 VNĐ</strong></span>
                </div>
                <div class="col-md-5 ">
                  <div class="row">
                    <span class="me-2"><i class="bi bi-clock"></i> <strong>Khởi hành: 22/09/2024</strong></span>
                  </div>
                  <div class="row">
                    <span class="me-2"><i class="bi bi-clock"></i> <strong>Thời gian 11 ngày 10 đêm</strong></span>
                  </div>
                </div>
                <div class="col-md-2 ">
                  <a href="#" class="btn btn-warning mt-2 ">Đặt Ngay</a>
                </div>
              </div>
            </div>
          </div>
          
          <div class="col-lg-8 col-ms-7 " >
            <div class="row  w-100"  style="background-color:rgb(0% 24% 44%);">
             <h4 class="text-white w-100 fw-bold fs-md-2 fs-sm-4 text-start py-1 " > <span class="me-2"><i class="bi bi-card-image"></i></span>Hình Ảnh</h4>
            </div>
            
            
            <div class=" row w-100 rounded-2 shadow " >
              <div class="col-md-12 ">
                <!-- <img src="https://benthanhtourist.com/uploads/images/chau-au/Thuy%20Si/5c1a0ab33c6fd.jpg" alt="" class="img-fluid w-100"> -->
                <div id="carouselExampleIndicators" class="carousel slide">
                  <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
                  </div>
                  <div class="carousel-inner" >
                    <div class="carousel-item active active" v-if="product">
                      <img :src="product.image" class="d-block w-100" alt="...">
                    </div>
                    <div class="position-relative" v-else>
        <p class="z-3 top-50 start-50 position-absolute">Loading</p>
        <img width="500" src="https://i.pinimg.com/originals/c7/e1/b7/c7e1b7b5753737039e1bdbda578132b8.gif" alt="...">
        <div class="carousel-item ">
          <img src="https://benthanhtourist.com/uploads/images/chau-au/Thuy%20Si/5c1a0ab33c6fd.jpg" class="d-block w-100" alt="...">
        </div>
    </div>
                    <div class="carousel-item">
                      <img src="https://benthanhtourist.com/uploads/images/chau-au/Phap/5c175f0e61774.JPG" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                      <img src="https://benthanhtourist.com/uploads/images/chau-au/Phap/5c175f0e61774.JPG" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                      <img src="https://benthanhtourist.com/uploads/images/chau-au/Thuy%20Si/5c1a0ab2d9b6a.jpg" class="d-block w-100" alt="...">
                    </div>
                  </div>
                  
                  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                  </button>
                  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                  </button>
                </div>

                <div class="row gx-1 mt-2 mb-2">
                  <div class="col ">
                    <img class="img-fluid img-thumbnail w-100" src="https://benthanhtourist.com/uploads/images/chau-au/Thuy%20Si/5c1a0ab33c6fd.jpg" alt="">
                  </div>
                  <div class="col ">
                    <img class="img-fluid img-thumbnail w-100" src="https://benthanhtourist.com/uploads/images/chau-au/Thuy%20Si/5c1a0ab2d9b6a.jpg" alt="">
                  </div>
                  <div class="col ">
                    <img class="img-fluid img-thumbnail w-100" src="https://benthanhtourist.com/uploads/images/chau-au/Phap/5c175f0e61774.JPG" alt="">
                  </div>
                  <div class="col ">
                    <img class="img-fluid img-thumbnail w-100" src="https://benthanhtourist.com/uploads/images/chau-au/Thuy%20Si/5c1a0ab38498d.jpg" alt="">
                  </div>
                  <div class="col ">
                    <img class="img-fluid img-thumbnail w-100" src="https://benthanhtourist.com/uploads/images/chau-au/Thuy%20Si/5c1a0ab33c6fd.jpg" alt="">
                  </div>
                </div>
              </div>
              
            </div>
            <div class="row mt-3">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
              <li class="nav-item" role="presentation">
                <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home-tab-pane" type="button" role="tab" aria-controls="home-tab-pane" aria-selected="true">Chương trình</button>
              </li>
              <li class="nav-item" role="presentation">
                <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane" type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false">Bảng giá</button>
              </li>
              <li class="nav-item" role="presentation">
                <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact-tab-pane" type="button" role="tab" aria-controls="contact-tab-pane" aria-selected="false">Hủy tour</button>
              </li>
            </ul>
            <div class="tab-content" id="myTabContent">
              <div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
               <div class="row mt-4">
                <strong> TPHCM - HÀ NỘI - ĐẾN HÙNG - NGHĨA LỘ (• Ăn sáng • Ăn trưa • Ăn tối )</strong> <br>
                <p> Sáng: Hướng dẫn viên đón Quý khách tại sân bay Tân Sơn Nhất, hỗ trợ làm thủ tục cho quý khách đáp chuyển bay đi Hà Nội.</p> 
                 <p>Sau khi hạ cánh, xe và hướng dẫn viên địa phương đón đoàn tại sân bay Nội Bài di chuyển tới nhà hàng dùng điểm tâm sáng (với các chuyến bay khởi hành trước 6h30 sáng) Sau đó đoàn khởi hành đi Nghĩa Lộ theo quốc lộ 32 qua Suối Giàng, Văn Chấn.</p> 
                <p>Đến địa phận Phú Thọ, đoàn viếng Đền Hùng - là quần thể di tích đền chùa, thờ phụng các Vua Hùng và tôn thất, bao quanh là khu rừng cẩm linh thiêng, nơi đây gắn với lưu truyền dân gian: "Dù ai đi ngược về xuôi, nhớ ngày giỗ Tổ nùng mười tháng ba". Trưa: Đoàn ăn trưa tại nhà hàng địa phương. Tiếp tục hành trình đến Nghĩa Lộ. </p> 
                <p>Tối: Dùng bữa tối tại nhà hàng địa phương.</p> 
               </div>

               <div class="accordion" id="accordionExample">
                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                      Hướng dẫn tự đặt tour
                    </button>
                  </h2>
                  <div id="collapseOne" class="accordion-collapse collapse " data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                      <strong>This is the first item's accordion body.</strong> It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                    </div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                      Hướng dẫn thanh toán
                    </button>
                  </h2>
                  <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                      <strong>This is the second item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                    </div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                      Hướng dẫn hủy đổi vé
                    </button>
                  </h2>
                  <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                      <strong>This is the third item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                    </div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseThree">
                      Hướng dẫn vận chuyển hành lý
                    </button>
                  </h2>
                  <div id="collapseFour" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                      <strong>This is the third item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                    </div>
                  </div>
                </div>
              </div>
               
              </div>
              <div class="tab-pane fade" id="profile-tab-pane" role="tabpanel" aria-labelledby="profile-tab" tabindex="0">
                <div class="row mt-4">
                  <table class="table table-bordered table-striped-column table-hover w-100 " >
                    <thead>
                      <tr>
                        <th scope="col" >Dịch vụ</th>
                        <th scope="col" >Loại dịch vụ</th>
                        <th scope="col" >Giá từ</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td rowspan="4">Giá tour</td>
                      </tr>
                      <tr>
                        <td>Người lớn</td>
                        <td>8.900.000đ</td>
                      </tr>
                      <tr>
                        <td>Trẻ em</td>
                        <td>7.900.000đ</td>
                      </tr>
                      <tr>
                        <td>Em bé</td>
                        <td>5.900.000đ</td>
                      </tr>
                      <tr>
                        <td colspan="3" class="text-center">Phụ thu</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="tab-pane fade" id="contact-tab-pane" role="tabpanel" aria-labelledby="contact-tab" tabindex="0">
               <div class="row mt-4">
                <li>Quý khách có thể hủy tour trước 7 ngày</li>
                <li>Quý khách sẽ bị phạt 50% giá nếu hủy tour sau 7 ngày</li>
                <li>Quý khách sẽ bị phạt 100% giá tour nếu hủy sau 3 ngày</li>
                <li>Việc hủy bỏ chuyến đi phải được thông báo trực tiếp với Công ty hoặc qua fax, email, tin nhắn và phải được Công nhận</li>
               </div>
              </div>
            </div>

             
            </div>
            

           <!-- <div class="row">
            <button class="btn btn-danger">Thanh Toán</button>
           </div> -->
          </div>

         

          
          <div class="col-lg-4 col-ms-5 d-flex align-items-center flex-column"  >
            <div class="row mt-2 rounded-1 shadow d-flex align-items-center flex-column w-100 mb-2" v-if="product"  style="background-color: rgb(100% 100% 100%);">
              <div class="row" style="background-color:rgb(11, 83, 142);">
                <h4 class="text-white  fw-bold fs-md-2 fs-sm-4 text-center py-1  " ><span class="me-2"><i class="bi bi-building"></i></span> THÔNG TIN TOUR</h4>
              </div>
              <div class="row w-100 text-white" style="background-color:rgb(0% 24% 44%);">
               <strong><span class="me-2"><i class="bi bi-signpost-2"></i></span>{{  product.name }}</strong>
               <span class="py-1"><strong><span class="me-2"><i class="bi bi-qr-code"></i></span>Mã tour:</strong> {{  product.code }}</span>
               <span class="py-1"><strong><span class="me-2"><i class="bi bi-person-arms-up"></i></span>Số chỗ còn:</strong>{{  product.slot }} chỗ</span>
               <span class="py-1"><strong><span class="me-2"><i class="bi bi-airplane-engines"></i></span>Phương tiện: </strong>Máy bay - Xe ô tô</span>
               <span class="py-1"><strong><span class="me-2"><i class="bi bi-flag"></i></span>Khởi hành tại: </strong>Hồ Chí Minh</span>
              </div>
              <div class="row w-100 text-white bg-warning py-2 " >
                <h5  class="h2 text-center">1900 6668 <span><i class="bi bi-whatsapp"></i></span></h5>
              </div>
             </div>
             <div class="position-relative mb-3" v-else>
        <p class="z-3 top-50 start-50 position-absolute">Loading</p>
        <img width="340" src="https://media0.giphy.com/media/h8cSyaPlnHhMLUIzyo/200.webp?cid=ecf05e47lgp4eosbfdt1d1854havb25501i90vlpkqc03p2c&ep=v1_gifs_search&rid=200.webp&ct=g" alt="...">
    </div>

           <div class="row rounded-1 shadow d-flex align-items-center flex-column w-100"  style="background-color: rgb(100% 100% 100%);">
            <div class="row mb-1   " style="background-color:rgb(0% 24% 44%);">
              <h4 class="text-white  fw-bold fs-md-2 fs-sm-4 text-center py-1  " > Tour Liên Quan</h4>
            </div>
            <div class="row w-100 p-2 d-flex justify-content-center ">
              
                <!-- <div class="col-md-2 col-lg-4 d-flex justify-content-center  "> -->
                 <div class="card position-relative " style="width: 25rem;">
                     <img src="https://benthanhtourist.com/uploads/images/chau-au/Phap/5c175f0f1280f.jpg" class="card-img-top w-100" alt="...">
                     <div class="card-body" style="background-position: 0% 100% ; background-repeat: no-repeat; background-image: url(https://benthanhtourist.com/assets/img/bg-small.png);" >
                       <h5 class="fw-semibold  card-title" style="color: rgb(0% 24% 44%);">Du Lịch Mùa Thu Châu Âu: Pháp - Thuỵ Sỹ - Ý </h5>
                       <p class="fw-medium"><span class="me-2"><i class="bi bi-flag-fill"></i></span>Hồ Chí Minh</p>  
                             <div class=" d-flex justify-content-between">
                             <p><span class="me-2 fw-bold"><i class="bi bi-clock"></i></span>24/09/2024</p>  
                              <a href="" class="link-offset-2 link-underline link-underline-opacity-0">Ngày khác</a>
                             </div>  
                                       
                       
                     </div>
                     <div class="card-body bg-secondary-subtle d-flex justify-content-between">
                       <span class="text-danger h5 fw-bold"><span class="text-dark h4 me-1 text-align-center"><i class="bi bi-cash"></i></span>1.000.000 VND</span>
                       <a href="#" class="btn btn-warning h-100 ">ĐẶT NGAY</a>
                     </div>
                   </div>
                <!-- </div> -->

                 
                
               
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
        

          
         
        </div>

        
      </div>
    </div>
<!-- main end -->
  
</template>

<!-- CSS -->
<style scoped>

</style>