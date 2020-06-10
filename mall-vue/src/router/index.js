import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'

Vue.use(VueRouter)

const routes = [
  //首页
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  //分类页
  {
    path: '/category',
    name: 'category',
    component: () => import('../views/Category.vue')
  },
  //购物车
  {
    path: '/cart',
    name: 'cart',
    component: () => import('../views/Cart.vue')
  },
  //我的
  {
    path: '/my',
    name: 'my',
    component: () => import('../views/My.vue')
  },
  //商品列表页
  {
    path: '/goodsList',
    name: 'goodsList',
    component: () => import('../views/GoodsList.vue')
  },
  //商品详情页
  {
    path: '/goodsDetail',
    name: 'goodsDetail',
    component: () => import('../views/GoodsDetail.vue')
  }

]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
