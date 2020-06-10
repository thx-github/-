<template>
  <div class="container">
      <mt-header fixed title="商品详情" class="shouye"></mt-header>
        <!-- 商品轮播图 -->
        <div style="height:400px;">
            <mt-swipe :auto="4000">
                <mt-swipe-item v-for="(img,index) in imgs" :key="index">
                <img :src="img.src" class="swipe-img"/>
                </mt-swipe-item>
            </mt-swipe>
        </div>
        <!-- 商品标题 -->
        <div class="title">{{goodsDetail.title}}</div>
        <div class="describe">{{goodsDetail.describe}}</div>
        <div class="price">￥{{goodsDetail.price}}</div>
        <div class="stock">库存：{{goodsDetail.stock}}</div>
        <!-- 加入购物车 -->
        <div class="cart">
           
            <button type="button" class="add-cart">加入购物车</button>
        </div>
        <!-- 商品详情 -->
        <div class="details" v-html="goodsDetail.details"></div>

  </div>
</template>

<script>
    import Vue from 'vue';
    import { Swipe, SwipeItem,Header,Button} from 'mint-ui';
    import 'mint-ui/lib/style.css'

    const axios = require('axios');
    Vue.component(Swipe.name, Swipe);
    Vue.component(SwipeItem.name, SwipeItem);
    Vue.component(Header.name, Header);
    Vue.component(Header.name, Header);
    Vue.component(Button.name, Button);

    export default {
        name:'',
        data(){
            return{
                goodsDetail:{
                    title:'',
                    describe:'',
                    price:0,
                    stock:0,
                    details:'' 
                
                },
                 imgs:[]
            }
        },
        methods:{
            getGoodsDetail(id){
                console.log("请求商品详情数据...")
                axios.get(`http://localhost:3000/goodsDetails/${id}`) 
                        .then((response)=>{
                        //当请求成功才会触发 
                        console.log(response.data)
                        this.goodsDetail = response.data[0]
                    })
            },
            getGoodsImage(id){
                console.log("请求商品图片...")
                axios.get(`http://localhost:3000/goodsImage/${id}`) 
                        .then((response)=>{
                        //当请求成功才会触发
                        this.imgs = response.data
                       
                    })
            }
        },
        mounted(){
            console.log("元素挂载完成...")
            console.log("参数id:"+this.$route.params.id)
            this.getGoodsDetail(2)
            this.getGoodsImage(2)
            
     },

    }
</script>

<style scoped>
 .shouye{
  background-color: #FFD2D2;
}
.swipe-img{
    width: 100%;
    height: 100%;  
}
.details img{
    width: 100%;
    height: 100%;
}
.title{
    font-size: 16px;
    color: #333;
    max-height: 40px;
    overflow: hidden;
    line-height: 20px;
    margin-top: 8px;
    margin-bottom: 8px;
    font-weight: 700;
    text-align: left;
}
.describe{
    font-size: 13px;
    color: #999;
    text-align: left;
}
.price{
    color: orangered;
    font-size: 16px;
    text-align: left;
}
.stock{
    color: #666;
    font-size: 13px;
    text-align: left;
}
 .add-cart{
        flex:1;
        background-color: orangered;
        color:#fff;
        height: 40px;
        border:none;
    }

    .cart{
        display: flex;
        flex-direction: row;
        height: 40px;
        align-items: center;
    }

</style>>
