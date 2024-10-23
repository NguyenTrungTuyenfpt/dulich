<script setup lang="ts">
import type { Product } from '../stores/Product';
import { RouterLink } from 'vue-router';

defineProps<{

    tours: Product[],


}>();
</script>


<template>
  



        <div class=" row g-0 mb-3  m-2 w-100 rounded-2 shadow " v-for="product in tours.slice(0, 30)" :key="product.id">
            <div class="col-md-6 position-relative">
                <img :src="product.image" alt="" class="img-fluid h-100 rounded-2">
                <div class="position-absolute text-white rounded p-1"
                    style="right: 0%; top:0%; background-color: rgb(0% 0% 0% / 0.5);"> <span><i
                            class="bi bi-geo-alt"></i></span> KH Từ: {{ product.time }} </div>
            </div>
            <div class="col-md-6"
                style=" background-position: 0% 100% ; background-repeat: no-repeat;background-image: url(https://benthanhtourist.com/assets/img/bg-small.png);">
                <h3 style="color: rgb(0% 24% 44%);" class="h4 m-2">{{ product.name }}</h3>
                <span class="m-2 py-1"><strong class="me-2"><i class="bi bi-qr-code"></i></strong>Mã tour: {{
                    product.code }}</span>
                <p class="m-2 py-1"><span class="me-2"><i class="bi bi-clock"></i> {{ product.time }}</span><span
                        class="ms-3 me-1"><i class="bi bi-people-fill"></i></span>Số chỗ còn nhận: {{ product.slot }}
                </p>
                <span class="m-2 py-1"><strong class="me-1"><i class="bi bi-calendar2-minus"></i></strong><a
                        class="ms-2 link-primary link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">Xem
                        ngày khác</a></span>
                <div class="d-flex justify-content-between align-items-center mt-3 rounded-3"
                    style="background-color: rgb(224, 222, 222);">
                    <span class=" m-2 h5 d-block align-items-center"><i class="bi bi-cash"></i><strong
                            class="ms-2 text-danger">{{ product.price.toLocaleString('de-DE') }} VNĐ</strong></span>
                    <!-- <a href="#" class="py-2 px-4 bg-warning text-white rounded-1-bold link-underline-opacity-0 link-light ">ĐẶT NGAY</a> -->
                    <RouterLink :to="'/chi-tiet-tour/' + product.id"
                        class="py-2 px-4 bg-warning text-white rounded-1-bold link-underline-opacity-0 link-light">Xem
                        chi tiết</RouterLink>
                </div>


            </div>
        </div>









</template>

<style scoped>
@media screen and (max-width: 850px) {
    #sconn {
        display: flex !important;
        box-shadow: 0px 0px 10px rgb(58, 207, 17);
        /* Thêm các giá trị offset-x, offset-y, blur-radius */
    }

    #sconn1 {
        display: none !important;
    }

    .db>a>span {
        font-size: 0.5rem !important;
    }
}
</style>