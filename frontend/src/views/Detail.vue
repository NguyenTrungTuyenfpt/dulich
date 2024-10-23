<script setup lang="ts">
import { ref, onMounted } from "vue";
import type { Product } from "../stores/Product.js";
//tao mang sp
const products = ref<Product[]>([]);

onMounted(async () =>{
  const response = await fetch('http://localhost:3000/tour');
                          // .then(response=>response.json());
  products.value = await response.json();
  console.log(products.value);  // Inspect the fetched data in the console for debugging.
});
</script>

<template>
  <div class="about">
    <h1></h1>
  </div>
  <div>
    <div class="row">
      <div class="col-md-3" v-for="product in products" :key="product.id">
        <div class="card mb-4">
          <!-- <img :src="'/img/'+product.image" class="card-img-top" alt=""> -->
          <img :src="product.image" class="card-img-top" alt="">
          <div class="card-body">
            <h5 class="card-title">{{ product.name }}</h5>
            <p class="card-text">{{ product.price }}</p>
          </div>
          <button class="btn btn-primary">Book now</button>
        </div>
      </div>
    </div>
  </div>
  <!-- ♡( ◡‿◡ ) -->


</template>

<style>

</style>
