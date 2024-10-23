<!-- JS -->
<script setup lang="ts">
import { ref } from 'vue';
import { useRouter } from 'vue-router';
import bcrypt from 'bcryptjs';
import { userLogin } from '../stores/user';

const email = ref('');
const password = ref('');

const router = useRouter();

const login = async () => {
  const response = await fetch(`http://localhost:3000/users?email=${email.value}`);
  const users = await response.json();

  if (users.length === 0 ){
    alert('Tài khoản không tồn tại!');
    return;
  }

  const user = users[0];

  const isPasswordValid = await bcrypt.compare(password.value, user.password);

  if (isPasswordValid){
    alert('Đăng nhập thành công');
    userLogin(user.email);
    router.push('/');
  }else {
    alert('Đăng nhập thất bại');
  }
};
</script>

<!-- Main -->
<template>
<div class="container mt-1">
        <div class="row p-3 rounded ">
            <div class="col-md-6 pt-5 bg-secondary-subtle rounded-3 bg-opacity-25 mb-3">
                <h1 class="text-success">Đăng nhập</h1>
                <form @submit.prevent="login"  action="" class="w-60">
                    <div class="mb-3">
                        <label for="email" class="form-label">Email </label>
                        <input v-model="email" type="email" id="email"  class="form-control" required>
                        <!-- <div class="form-text">Email khong được để trống!</div> -->
                    </div>
                    <div class="mb-3">
                        <label for="matkhau" class="form-label">Mật khau</label>
                        <input v-model="password" type="password" id="matkhau" class="form-control" required>
                    </div>
                    <div class="mb-3 form-check">
                        <input type="checkbox" id="check" class="form-check-input" >
                        <label for="check" class="form-check-label">Lưu đăng nhập</label>
                    </div>
                    <button type="submit"  class="btn btn-success ">Đăng nhập</button>
                     <!-- ====== -->
                     <!-- <button type="button" class="btn btn-success ms-5" data-bs-toggle="modal" data-bs-target="#exampleModal">
                      Đăng ký tài khoản mới
                    </button> -->
                    <!-- <RouterLink class="btn btn-success ms-5" data-bs-toggle="modal" data-bs-target="#exampleModal" to="/dang-ky">  Đăng ký tài khoản mới</RouterLink> -->
                    <p class="mt-2">Chưa có tài khoản? <span><RouterLink class="text-info ms-1" to="/dang-ky">Đăng ký</RouterLink></span></p>
                    
                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">Tạo Tài Khoản</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                          </div>
                          <div class="modal-body">
                            Tạo tài khỏan mới ngay 
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-outline-success "><a class=" link-danger link-offset-2 link-underline-opacity-0 " href="./register.html">Đăng ký</a></button>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- ========= -->
                </form>
            </div>
            <div class="col-md-6 h-100">
                <div class="card mb-3" style="max-width: 540px;">
                    <div class="row g-0">
                      <div class="col-md-4">
                        <img src="https://benthanhtourist.com/uploads/images/ha-giang/5c2dbfb7a922f.jpg" class="img-fluid rounded-start h-100" alt="...">
                      </div>
                      <div class="col-md-8">
                        <div class="card-body">
                          <h5 class="card-title">Du lịch Hà Giang</h5>
                          <p class="card-text">Hà Giang là một điểm đến vô cùng hấp dẫn với những khung cảnh 
                            thiên nhiên hùng vĩ và văn hóa độc đáo. Để giúp bạn hình dung rõ hơn về chuyến đi, 
                            mình sẽ mô tả chi tiết một hành trình khám phá Hà Giang nhé:
                          </p>
                          <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="card mb-3" style="max-width: 540px;">
                    <div class="row g-0">
                      <div class="col-md-4">
                        <img src="https://benthanhtourist.com/images/destination/tay-nguyen.jpg" class="img-fluid rounded-start h-100" alt="...">
                      </div>
                      <div class="col-md-8">
                        <div class="card-body">
                          <h5 class="card-title">Du lịch Sapa 2024</h5>
                          <p class="card-text">Sapa là một huyện vùng cao ở phía Tây Bắc Việt Nam 
                            với độ cao trung bình 1500 - 1800 mét so với mặt nước biển. Đây là nơi
                             duy nhất ở Việt Nam có tuyết rơi vào mùa đông nên đã trở thành một địa
                              điểm du lịch nổi bật nhất thu hút hàng triệu khách du lịch hàng năm.
                          </p>
                          <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
                        </div>
                      </div>
                    </div>
                  </div>

                  
            </div>
        </div>
    </div>
</template>

<!-- CSS -->
<style scoped>

</style>