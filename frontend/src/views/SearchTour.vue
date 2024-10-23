<script setup lang="ts">
    import { ref, onMounted, computed, watch} from 'vue';
    import { useRoute } from 'vue-router';
    import type { Product } from '../stores/Product';

    const products = ref<Product[]>([]);
    const route = useRoute();
    const keyword = ref(String(route.query.tukhoa || ''));

    onMounted( async () => {
        products.value = await fetch('http://localhost:3000/tour')
        .then(response => response.json());
    })

    const filteredProducts = computed ( () => {
        if(keyword.value ==="Dưới 10 triệu"){
            return products.value.filter(product =>
                product.price < 10000000
            );
        }else if(keyword.value ==="Từ 10 - 20 triệu") {
            return products.value.filter(product =>
                product.price >= 10000000 && product.price < 20000000
            );
        }else if(keyword.value ==="Trên 20 triệu") {
            return products.value.filter(product =>
                product.price >= 20000000 
            );
        }else if(keyword.value ==="Giảm dần") {
            return products.value.sort((a, b) => a.price - b.price)
           
        }else if(keyword.value ==="Tăng dần") {
            return products.value.sort((a, b) => a.price - b.price)
            
        }else
            return products.value.filter(product =>
              product.name.toLowerCase().includes(keyword.value.toLowerCase())
        );
    });

    watch( () => route.query.tukhoa, (newQuery) => {
        keyword.value = String(newQuery || '');
    })
</script>

<template>
    
    <div class="container-fluid bg-opacity-25 d-flex align-items-center flex-column" style="background-size: cover; background-image: url(https://benthanhtourist.com/assets/img/bg1.jpg);">
        <div class="col-12 d-flex justify-content-center flex-column align-items-center ">
            <span class="mt-3 fs-5 text-white mt-5">Chúng tôi giới thiệu đến bạn</span>
        <h2 class=" fw-semibold text-white mb-4">Kết quả tìm kiếm cho "{{  keyword }}"</h2>
    </div>
        <div class="row d-flex gx-2 gy-5 justify-content-evenly pb-5  w-100">
          <div class="col-md-10">
            <div class="row g-3">
        <!-- <div class="row">
            <div class="col-md-4" v-for="product in filteredProducts" :key="product.id">
                <div class="card mb-4">
                    <img :src="product.image" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-text">{{  product.name }}</h5>
                        <p class="card-text">{{  product.price }}</p>
                        <button class="btn btn-primary">Xem chi tiết</button>
                    </div>
                </div>
            </div>
        </div> -->

        <div class="col-md-6 col-lg-4 d-flex justify-content-center " v-for="product in filteredProducts" :key="product.id">
                <div class="card position-relative" style="width: 25rem;">
                    <img :src="product.image" class="card-img-top" alt="...">
                    <div class="card-body" style="background-position: 0% 100% ; background-repeat: no-repeat; background-image: url(https://benthanhtourist.com/assets/img/bg-small.png);">
                      <h5 class="fw-semibold  card-title" style="color: rgb(0% 24% 44%);">{{  product.name }}</h5>
                      <p class="fw-medium"><span class="me-2"><i class="bi bi-flag-fill"></i></span>Hồ Chí Minh</p>  
                       <div class=" d-flex justify-content-between">
                       <p><span class="me-2 fw-bold"><i class="bi bi-clock"></i></span>{{  product.time }}</p>  
                        <a href="" class="link-offset-2 link-underline link-underline-opacity-0">Ngày khác</a>
                       </div>  
                              <img src="https://benthanhtourist.com/img/Home/hot.png" class="position-absolute" style="left: -3%; top:35%" alt="">           
                      
                    </div>
                    <div class="card-body bg-secondary-subtle d-flex justify-content-between">
                      <span class="text-danger h5 fw-bold"><span class="text-dark h4 me-1 text-align-center"><i class="bi bi-cash"></i></span>{{  product.price.toLocaleString('de-DE') }}</span>
                      <!-- <a href="#" class="btn btn-warning h-100 ">Xem chi tiết</a> -->
                      <RouterLink :to="'/chi-tiet-tour/' + product.id"
                        class="btn btn-warning h-100 ">Xem
                        chi tiết</RouterLink>
                    </div>
                  </div>
               </div>

    </div>
    </div>
    </div>
    </div>
    
</template>