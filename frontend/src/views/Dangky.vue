<!-- JS -->
<script setup lang="ts">
import { ref} from 'vue';
import { useRouter} from 'vue-router';
import {useForm, useField} from 'vee-validate';
import * as yup from 'yup';
import bcrypt from 'bcryptjs';

const router = useRouter();

const schema = yup.object({
  name: yup.string().required('Tên là bắt buộc'),
  email: yup.string().email('Email không hộp lệ').required('Email là bắt buộc'),
  password: yup.string()
  .min(6, "Mật khẩu phải có it nhất 6 ký tự")
  .matches(/[A-Z]/, 'Mật khẩu phải có ít nhât một chữ cái viết hoa')
  .matches(/[a-z]/, 'Mật khẩu phải có ít nhât một chữ cái viết thường')
  .matches(/[0-9]/, 'Mật khẩu phỉ có ít nhất một số')
  .matches(/[^A-Za-z0-9]/, 'Mật khẩu phải chứa ít nhất một ký tự đặc biệt')
  .required('Mật khẩu là bắt buộc'),
  confirmPassword: yup.string()
  .oneOf([yup.ref('password')], 'Mật khẩu khôn khớp')
  .required('Xác nhận mật khẩu là bắt buộc')
});

//Sử dụng useForm để quanr lý form và errors
const {handleSubmit, errors} =  useForm({
  validationSchema: schema
});

//Sử dụng useField để quản lý các truơng input
const { value: uname} = useField('name');
const { value: email} = useField('email');
const { value: password} = useField('password');
const { value: confirmPassword} = useField('confirmPassword');
const address = ref("");
const bod = ref("");
const gender = ref("");
     

//Ham dang ky nguoi dung
const register = handleSubmit(async (values: any) => {

  //kiem tra email da ton tai hay chua
  const existingUsers = await  fetch(`http://localhost:3000/users?email=${values.email}`)
                              .then(response => response.json());
  if (existingUsers.length > 0) {
    alert('Email đã tồn tại');
    return;
  }

  //ma hoa mat khau
  const hashedPassword = await bcrypt.hash(values.password, 10);

  //luu du lieu vao database
  const response = await fetch('http://localhost:3000/users', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({
      name: uname.value,
      email: values.email,
      password: hashedPassword,
      address: address.value,
      role : "0",
      bod: bod.value,
      gender: gender.value,
      // dateCreated: new Date()
    }),
  });

  // xu ly phan hoi tu server
  if (response.ok){
    alert('Đăng ký thành công');
    router.push('/dang-nhap/');
  }else {
    alert('Đăng ký thất bại');
  }
});




// const onSubmit = handleSubmit( (values) => {
//   alert(`Name: ${values.name} and Email: ${values.email}`);
// })
</script>

<!-- Main -->
<template>

<div class="container mt-1  px-10  " >

  
      <form @submit="register" action="" class="w-80 ">
          <div class="row">
              <h1 class="mt-2 text-center">Đăng Ký Tài Khoản</h1>
              <div class="col-md-6">
                <div class="mb-3">
                    <label   for="hoten" class="form-label">Ho ten</label>
                    <input v-model="uname" type="text" required class="form-control" id="hoten">
                    <div class="text-danger">{{ errors.name }}</div>
                </div>
                  <div class="mb-3">
                      <label for="email" class="form-label">Email</label>
                      <div class="input-group">
                          <input v-model="email" type="email" required class="form-control" id="email">
                          <span class="input-group-text">@gmail.com</span>
                        </div>
                        <div class="text-danger">{{ errors.email }}</div>
                  </div>
                  <div class="mb-3">
                      <label for="matkhau" class="pass form-label">Mat khau</label>
                      <input type="password" v-model="password"  required class="form-control" id="matkhau">
                      <div class="text-danger">{{ errors.password }}</div>
                  </div>
                  <div class="mb-3">
                      <label for="matkhau2"  class="pass form-label">Nhap lai mat khau</label>
                      <input type="password" v-model="confirmPassword" required class="form-control" id="matkhau2">
                      <div class="text-danger">{{ errors.confirmPassword }}</div>
                  </div>
                  <div class="mb-3 form-check">
                      <input type="checkbox" required class="form-check-input" id="check">
                      <label for="check" class="form-check-label">Dong y voi cac dieu khoan</label>
                  </div>
              </div>
              <div class="col-md-6">
                  <div class="mb-3">
                      <label for="diachi" class="form-label">Dia chi</label>
                      <input type="text" v-model="address" required class="form-control" id="diachi">
                  </div>
                  <div class="mb-3">
                      <label for="ngaysinh" class="form-label">Ngay sinh</label>
                      <input type="date" v-model="bod" required class="form-control" id="ngaysinh">
                  </div>
                  <div class="mb-3">
                      <label for="gioitinh" class="form-label">Gioi tinh</label>
                      <select name="" v-model="gender" required id="gioitinh" class="form-select">
                          <option value="">Chon gioi tinh</option>
                          <option value="nam">Nam</option>
                          <option value="nu">Nu</option>
                          <option value="khac">Khac</option>
                      </select>
                  </div>
                  <div class="mb-3">
                      <label for="img" class="form-label">Chon anh</label>
                      <input type="file" required class="form-control" id="img">
                    </div>
                    <div class="mb-3">
                    <button type="submit" class="btn btn-danger">Đăng Ký</button>
                    <p class="mt-2">Đã có tài khoản? <span><RouterLink class="text-info ms-1" to="/dang-nhap">Đăng nhập</RouterLink></span></p>
                  
                    
                  
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">Bạn đã có tài khoản?</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                          </div>
                          <div class="modal-body">
                            Đăng nhập ngay để trải nghiệm dịch vụ 
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary "><a class="text-white link-danger link-offset-2 link-underline-opacity-0 " href="./login.html">Đăng nhập</a></button>
                          </div>
                        </div>
                      </div>
                    </div>
             
                    </div>
                    
              </div>
          </div>
      </form>
  </div>
</template>

<!-- CSS -->
<style scoped>

</style>