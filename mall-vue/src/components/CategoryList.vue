  
<template>
    <div class="category-box">
      <div class="category" v-for="(category,index) in categories" :key="index" @click="$emit('category-Click',30)">  
        <div class="category-icon" :style="{'backgroundColor':category.bgcolor}">
          <span class="icon iconfont" :class='category.icon' :style="category.bgcolor"></span></div>
        {{category.name}}
      </div>
    </div>
</template>

<script>
export default {
 name:'',
 //父组件给子组件传值需要定义props属性
 props:{
    categories:[]
 },
 data(){
   return{

   }
 },
 merhods:{
    categoryClick:function(){

    }
 },
}
</script>

<style scoped>
 @import url('../assets/font/iconfont.css');
  .category-box{
    display: flex;
    flex-wrap: wrap;
  }
  .category{
    width: 89px;
    text-align: center;
  }
  .category-icon{
    background-color: red;
    color: white;
    width: 50px;
    line-height: 50px;
    border-radius: 50%;
    margin: 5px auto;
  }
  .category-icon span{
    font-size: 30px;
  }
</style>