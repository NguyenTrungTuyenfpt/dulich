<script setup lang="ts">
    import { onMounted, ref } from 'vue';
    import { useRouter } from 'vue-router';
    import { userLogout } from '../stores/user';
    import { email } from '../stores/user';
     
    const user = ref<any>({});

    onMounted(async () => {
        const response = await fetch(`http://localhost:3000/users?email=${email.value}`);
        const users = await response.json();
        if (users.length === 0) {
            alert('Người dùng không tồn tại');
            return;
        }
        user.value = users[0];
    });

    const router = useRouter();
    const handleLogout = () => {
        userLogout();
        router.push('/dang-nhap');
    }
</script>

<template>
    <div v-if="user.email">
        
        <div class="container-fluid">
            <div class="row customer-card text-center bg-light">
                <h3 class="link-success link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">Thông tin tài khoản  {{ user.name }}</h3>
                
                
                <div class="mt-4 col-md-5">
                    <img src="https://ampet.vn/wp-content/uploads/2022/09/Meo-tai-cup-Scottish-Fold-2.jpg" alt="Customer Photo">
                <h2 class="mt-3">{{ user.name }}</h2>
                <p class="text-muted">Mê cỏ</p>
                <p><strong>Email:</strong> {{ user.email }}</p>
                <p><strong>Phone:</strong> +84912345678</p>
                <p><strong>Address:</strong> {{ user.address }}</p>
                </div>
    
               <div class="col-md-6">
                <div class="mt-4 col-md-12">
                    <h3>Booking History</h3>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Tour to Bali - January 2024</li>
                        <li class="list-group-item">Tour to Phu Quoc - June 2023</li>
                        <li class="list-group-item">Tour to Ha Long Bay - December 2022</li>
                    </ul>
                </div>
    
                <div class="mt-4 col-md-12">
                    <h3>Reviews</h3>
                    <div class="list-group">
                        <div class="list-group-item">
                            <h5>Tour to Bali</h5>
                            <p>“Awesome experience, well organized!”</p>
                        </div>
                        <div class="list-group-item">
                            <h5>Tour to Phu Quoc</h5>
                            <p>“Great value for money. Highly recommend!”</p>
                        </div>
                        <div class="list-group-item">
                            <h5>Tour to Ha Long Bay</h5>
                            <p>“Stunning views, excellent service!”</p>
                        </div>
                    </div>
                </div>
               </div>
                
               <div class="mt-4 ">
                <button class="mx-2 btn btn-outline-primary">Cập nhật</button>
                <button class="mx-2 btn btn-outline-danger">Xóa tài khoản</button>
                <button class="mx-2 btn btn-outline-danger" @click="handleLogout">Đăng xuất</button>
            </div>
            </div>
        </div>
        
    </div>
    <div v-else>
        <p>Vui lòng đăng nhập để xem thông tin người dùng</p>
    </div>

    

    
    
</template>

<style scoped>
        
       .customer-card {
            margin: 50px auto;
            padding: 20px;
            max-width: 800px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .customer-card img {
            border-radius: 50%;
            width: 150px;
            height: 150px;
            object-fit: cover;
        }
</style>