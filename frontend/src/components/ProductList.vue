<script setup lang="ts">
import type { Product } from '../stores/Product';
import { RouterLink} from 'vue-router';

defineProps<{
    title : string,
    title2: string,
    tours : Product[],
    css1: string,
    css2: string,
    cl1: string,
    cl2: string,
    image: string,
    // hot : string,

}>();
</script>


<template>
  


  
        <div class="col-12 d-flex justify-content-center flex-column align-items-center ">
            <span :class="css1" :style=" cl1 ">{{ title }}</span>
        <h2 :class="css2" :style="cl2">{{ title2 }}</h2>
    </div>
        <div class="row d-flex gx-2 gy-5 justify-content-evenly pb-5  w-100">
          <div class="col-md-10">
            <div class="row g-3">

        <div class="col-md-6 col-lg-4 d-flex justify-content-center " v-for="product in tours.slice(0,3)" :key="product.id">
                <div class="card position-relative" style="width: 25rem;">
                    <img :src="product.image" class="card-img-top" alt="...">
                    <div class="card-body" style="background-position: 0% 100% ; background-repeat: no-repeat; background-image: url(https://benthanhtourist.com/assets/img/bg-small.png);">
                      <h5 class="fw-semibold  card-title" style="color: rgb(0% 24% 44%);">{{  product.name }}</h5>
                      <p class="fw-medium"><span class="me-2"><i class="bi bi-flag-fill"></i></span>Hồ Chí Minh</p>  
                       <div class=" d-flex justify-content-between">
                       <p><span class="me-2 fw-bold"><i class="bi bi-clock"></i></span>{{  product.time }}</p>  
                        <a href="" class="link-offset-2 link-underline link-underline-opacity-0">Ngày khác</a>
                       </div>  
                              <img :src="image" class="position-absolute" style="left: -3%; top:35%" alt="">           
                      
                    </div>
                    <div class="card-body bg-secondary-subtle d-flex justify-content-between">
                      <span class="text-danger h5 fw-bold"><span class="text-dark h4 me-1 text-align-center"><i class="bi bi-cash"></i></span>{{  product.price.toLocaleString('de-DE') }}</span>
                      <!-- <a href="#" class="btn btn-warning h-100 ">Xem chi tiết</a> -->
                      <RouterLink  :to="'/chi-tiet-tour/'+product.id" class="btn btn-warning">Xem chi tiết</RouterLink>
                    </div>
                  </div>
               </div>

    </div>
    </div>
    </div>
    

    
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