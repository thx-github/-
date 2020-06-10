<template>
  <div class="home">
    <mt-header fixed title="商城首页" class="shouye"></mt-header>
     <Search ph="🔍 请输入商品名称关键字"/>
   <!--banner轮播图-->
        <div style="height:200px;">
          <mt-swipe :auto="4000">
            <mt-swipe-item v-for="(banner,index) in banners" :key="index">
              <img :src="banner.src" class="banner-img"/>
            </mt-swipe-item>
            
          </mt-swipe>
        </div>
        <!--分类列表-->
    <CategoryList :categories='categories'/>
    <!--商品列表-->
    <GoodsList :goodsList='goodsList'/>
  </div>
</template>

<script>
   import Vue from 'vue';
   import CategoryList from '../components/CategoryList'
   import GoodsList from '../components/GoodsList'
   import Search from '../components/Search'
   import { Swipe, SwipeItem,Header} from 'mint-ui';
   import 'mint-ui/lib/style.css'
   
   const axios = require ('axios');

   Vue.component(Swipe.name, Swipe);
   Vue.component(SwipeItem.name, SwipeItem);
   Vue.component(Header.name, Header);
  

    export default {
     name: 'home',
     components: {
       CategoryList,GoodsList,Search
     },
     data(){
       return{
         categories:[],
          banners:[],
          goodsList:[]
       }
     },
  methods:{
       getCategoryList(){
         console.log("开始请求分类数据....")
         //请求
            axios.get('http://localhost:3000/categoryAll') 
                .then((response)=>{
                  //当请求成功才会触发
                  console.log(response);
                  this.categories = response.data
                })
                .catch((error)=>{
                  //当请求发生错误，就触发catch，打印出error
                  console.log(error);
                })
                .then(()=>{
                //这代码段不管请求是否成功都会被执行
                });
              },
       getBanner(){
         console.log("请求执行Banner数据...")
         axios.get('http://localhost:3000/bannerAll') 
                .then((response)=>{
                  //当请求成功才会触发
                  this.banners = response.data
                })
       },
       getGoodsList(){
         console.log("请求商品列表数据...")
         axios.get('http://localhost:3000/goodsAll') 
                .then((response)=>{
                  //当请求成功才会触发
                  this.goodsList = response.data
                })
       }    
   },
     beforeCreate(){
       console.log('beforeCreate')
     },
     created(){
       console.log('created')
     },
     beforeMount(){
       console.log('beforeMount')
     },
     //元素挂载完毕后触发
     mounted(){
       console.log('mounted')
       this.getCategoryList()
       this.getBanner()
       this.getGoodsList()
     },
     beforeUpdate(){
       console.log('beforeUpdate')
     },
     updated(){
       console.log('updated')
     },
     beforeDistroy(){
       console.log('beforeDistroy')
     },
     distroyed(){
       console.log('distroyed')
     }
   }



</script>



<style scoped>
p,ul{
  margin: 0;
  padding: 0;
}
.home{
  padding-top: 20px;
  padding-bottom: 70px;
}
.banner-img{
  width: 100%;
  height: 100%;
}
.shouye{
  background-color: #FFD2D2;
}


</style>
