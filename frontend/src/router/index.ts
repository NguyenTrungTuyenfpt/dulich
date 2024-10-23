import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import {  userLogin, checkLogin } from '../stores/user'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'Trang chu',
      component: HomeView
    },

    /*

    <RouterLink class="nav-link text-white" to="/">Trang chủ</RouterLink>
        <RouterLink class="nav-link text-white" to="/gio-hang">Gio hang</RouterLink>
        <RouterLink class="nav-link text-white" to="/dang-nhap">Dang nhap</RouterLink>
        <RouterLink class="nav-link text-white" to="/dang-ky">Dang ky</RouterLink>
        <RouterLink class="nav-link text-white" to="/tips">Tips</RouterLink>
        <RouterLink class="nav-link text-white" to="/trips">Trips</RouterLink>
        <RouterLink class="nav-link text-white" to="/chi-tiet-tour">Chi tiet tour</RouterLink>
        <RouterLink class="nav-link text-white" to="/san-pham">San pham</RouterLink>

    */
    {
      path: '/gio-hang',
      name: 'gio-hang',
      // route level code-splitting
      // this generates a separate chunk (About.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import('../views/Giohang.vue')
    },
    {
      path: '/dang-nhap',
      name: 'dang-nhap',
      // route level code-splitting
      // this generates a separate chunk (About.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import('../views/Dangnhap.vue')
    },
    {
      path: '/dang-ky',
      name: 'dang-ky',
      // route level code-splitting
      // this generates a separate chunk (About.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import('../views/Dangky.vue')
    },
    {
      path: '/tips',
      name: 'tips',
      // route level code-splitting
      // this generates a separate chunk (About.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import('../views/Tips.vue')
    },
    {
      path: '/Trips',
      name: 'Trips',
      // route level code-splitting
      // this generates a separate chunk (About.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import('../views/Trips.vue')
    },
    {
      path: '/chi-tiet-tour/:id',
      name: 'chi-tiet-tour',
      // route level code-splitting
      // this generates a separate chunk (About.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import('../views/ChitietTour.vue')
    },
    {
      path: '/timkiem',
      name: 'tim-kiem-tour',
      // route level code-splitting
      // this generates a separate chunk (About.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import('../views/SearchTour.vue')
    },
    {
      path: '/thong-tin',
      name: 'Thông tin tài khoản',
      // route level code-splitting
      // this generates a separate chunk (About.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import('../views/Info.vue'),
      meta: { requiresAuth: true}
    },
    
    
    
  ]
});
// Middleware để kiểm tra xem người dùng đã đăng nhập hay chưa
// router.beforeEach((to, from, next) => {
//   if (to.matched.some(record => record.meta.requiresAuth)) {
//     if (!checkLogin()) {
//       next({
//         path: '/dang-nhap',
//       });
//     } else {
//       next();
//     }
//   } else {
//     next();
//   }
// });

router.beforeEach((to, from, next) => {
  if (to.matched.some(record => record.meta.requiresAuth)) {
      if (!checkLogin()) {
          next({ path: '/dang-nhap' });
      } else {
          next();
      }
  } else {
      next();
  }
});

export default router
