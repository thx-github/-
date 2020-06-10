<template>
  <div class="container"> 
      <!--搜索框-->
   <div class="search-box">
      <input type="text" placeholder=" 🔍 请输入商品名称关键字">
    </div>
   <!--商品列表-->
    <GoodsList :goodsList='goodsList'/>
  </div>
</template>

<script>
    import Vue from 'vue';
    import CategoryList from '../components/CategoryList'
    import GoodsList from '../components/GoodsList'
    import { Header} from 'mint-ui';
    import 'mint-ui/lib/style.css'

    const axios = require ('axios');

    Vue.component(Header.name, Header);


export default {
    name:'',
    components:{
        GoodsList
    },
    data(){
        return{
            goodsList:[]
        }
    },
    methods:{
        getGoodsList(){
                console.log("请求商品列表数据...")
                axios.get('http://localhost:3000/goodsAll') 
                    .then((response)=>{
                     //当请求成功才会触发
                    this.goodsList = response.data
                })
        }   
    }, 
     mounted(){
       this.getGoodsList()
     },

}
</script>

<style>
    .container{
    padding-top: 10px;
    }

    /*搜索框*/
    .search-box{
  
    padding: 5px ;
    text-align: left;
    display: flex;
    }
    .search-box input{
    border-radius: 30px;
    border: none;
    padding: 10px 10px 10px 30px;
    flex: 1;
    background-color:  #DDD;
    }
</style>