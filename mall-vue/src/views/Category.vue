<template>
  <div class="category"> 
   <mt-header fixed title="商品分类" class="shangpinfenlei"></mt-header>
   <!--搜索框-->
    <Search ph="🔍 请输入想搜的商品类别"/>
    <!--分类列表-->
    <CategoryList :categories='categories' @category-Click="viewGoodsByCategory"/>
  </div>
</template>

<script>
    import Vue from 'vue';
    import CategoryList from '../components/CategoryList'
    import Search from '../components/Search'
    import { Header} from 'mint-ui';
    import 'mint-ui/lib/style.css'

    const axios = require ('axios');

    Vue.component(Header.name, Header);

  export default {
    components:{
      CategoryList,Search
    },
   
   data() {
     return{
      categories:[]
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
    viewGoodsByCategory(){
      console.log("viewGoodsByCategorysssssssss.")
      this.$router.push('goodsList');//切换到商品列表页
      }
   },
     //元素挂载完毕后触发
     mounted(){
       console.log('mounted')
       this.getCategoryList()
     },
 }
</script>

<style scoped>
.shangpinfenlei{
  background-color: #FFD2D2;
}
.category{
  padding-top: 20px;
}
</style>>

