<template>
  <div class="contairner">
      <mt-header fixed title="购物车" class="shangpinfenlei"></mt-header>
      <!--购物车列表-->
      <div class="cart-list">
        <div class="cart-item" v-for="(cart,index) in carts" :key="index">
          <input type="checkbox" :value="cart.id" class="cart-cb"/>
          <img :src="cart.src" class="cart-img"/>
          <div class="cart-info">
            <div class="name">{{cart.name}}</div>
            <div class="price">￥{{cart.price}}</div>
          </div>
          <div class="cart-quantity">
            <button type="button" @click="decrement(cart.id)">-</button>
            <input type="text" class="quantity" :value="cart.quantity"/>
            <button type="button" @click="increment(cart.id)">+</button>
        </div>
        </div> 
      </div>
      <!--购物车列表-->
      <div class="settlement">
        <input type="checkbox" class="cart-cb" id="allSelect"/><label for="allSelect">全选</label>
        <div class="total"> 
          合计:<span> ￥{{total}}</span>
        </div>
        <button type="button" class="settlement-btn ">结算</button>
      </div>
  </div>

        
</template>

<script>

    import Vue from 'vue';
    import { Header,Checklist} from 'mint-ui';
    import 'mint-ui/lib/style.css'

    const axios = require ('axios');
    Vue.component(Header.name, Header);
    Vue.component(Checklist.name, Checklist);
export default {
    name:'',
    data(){
      return{
        carts:[
          {id:1,src:require('../assets/thumb1.jpg'),name:'NY经典大标帽',price:'100.00',quantity:2},
          {id:2,src:require('../assets/thumb2.jpg'),name:'纽亦华帽子',price:'300.00',quantity:3},
          {id:3,src:require('../assets/thumb3.jpg'),name:'弯檐调节帽',price:'199.00',quantity:6}
        ]
      }
    },
    computed:{
      total(){
        var totalPrice=0;
        this.carts.forEach(cart=>{
          totalPrice += cart.price*cart.quantity;
        });
        return totalPrice;
      }
    },
    methods:{
      decrement(id){
          //查找当前要操作的对应id的购物车项的索引
        var currIndex = this.carts.findIndex((cart)=>{
          return cart.id===id;
        })
        if(this.carts[currIndex].quantity>1)
        this.carts[currIndex].quantity--;
      },
      increment(id){
          //查找当前要操作的对应id的购物车项的索引
        var currIndex = this.carts.findIndex((cart)=>{
          return cart.id===id;
        })
        this.carts[currIndex].quantity++;
      }
    }

}
</script>

<style scoped>
 .shangpinfenlei{
  background-color: #FFD2D2;
}
.category{
  padding-top: 40px;
}
/*购物车 */
.name{
  font-size: 15px;
}
.price{
  color: orange;
}
.cart-item{
  padding-top: 35px;
  display: flex;
  align-items: center;
  margin-bottom: 10px;
  border-bottom: 1px solid #cccccc;
}
.cart-cb{
  flex: 1;
}
.cart-img{
  width: 100px;
  height: 120px;
  flex: 2;
}
.cart-info{
  flex: 8;

  text-align: left;
  padding-left: 12px;
}
.cart-quantity-box{
  flex: 5;
}
.quantity{
  width: 50px;
}
/*结算 */
.settlement{
  display:flex;
  position: fixed;
  height: 50px;
  left: 0;
  right:0;
  bottom: 61px;
  align-items: center;
}
.total{
  flex: 9;
}
.total span{
  color: orange;
  font-weight: bold;
}
.settlement-btn{
 flex: 4;
 background-color: #F75000;
 color: white;
 border: none;
 height: 50px;
}
</style>