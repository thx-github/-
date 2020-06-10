//分类列表组件

<template>
  <!--商品列表-->
    <div class="goods-list">
      <div class="goods-item" v-for="(goods,index) in goodsList" :key="index" @click="goDetail(goods.id)">
        <img class="goods-item-img" :src="goods.thumbnail"/>
        <p class="goods-item-title">{{goods.title}}</p>
        <p class="goods-item-price">￥{{goods.price}}</p>
      </div>
    </div>
</template>

<script>
export default {
    name:'',
    props:{
    goodsList:[]
 },
    data(){
    

    },
    methods:{
      goDetail(id){
        this.$router.push(`/goodsDetail/${id}`)
      }
    }

}
</script>

<style>
  /*商品列表 */
.goods-list{
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
  margin-top: 10px;
}
.goods-item{
  width: 49%;
  margin-top: 5px;
}
.goods-item-img{
  height: 200px;
  width: 100%;
} 
.goods-item-title{
  font-size: 14px;
  text-align: left;
}
.goods-item-price{
  font-size: 20px;
  font-weight: bold;
  color: orange;
  margin: 5px 0;
}
</style>