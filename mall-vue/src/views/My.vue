<template>
  <div class="container">
      <mt-header fixed title="会员中心" class="shouye"></mt-header>
 <!-- 会员信息 -->
     <div class="member-info">
        <div class="member-txt">
          <p>现金账户</p>
          <p class="member-num">1314.00</p>
          <button type="button" class="member-btn">充值</button>
        </div>
        <div class="headshot-box">
          <img src="../assets/images/touxiang.jpg" class="headshot"/>
          <div class="name">admin</div>
          <div class="level">黄金会员</div>
        </div>
        <div class="member-txt">
          <p>积分</p>
          <p class="member-txt">9420</p>
          <button type="button" class="member-btn">兑换</button>
        </div>
      </div>
      <!--
      <div class="member-info" >
        <mt-button type="default" class="action-btn">登录</mt-button>
        <mt-button type="danger" class="action-btn" >注册</mt-button>
      </div>-->
      <!-- 订单信息 -->
      <div class="order">
        <span class="my-order">我的订单</span>
        <span class="all-order">全部订单</span>
      </div>
      <div class="shortcut">
        <div class="shortcut-item" @click="$router.push('/orderList')">
          <p class="icon iconfont icon-icon-test8 shortcut-icon" ></p>
          待付款
        </div>
        <div class="shortcut-item">
          <p class="icon iconfont icon-icon-test9 shortcut-icon" ></p>
          待发货
        </div>
        <div class="shortcut-item">
          <p class="icon iconfont icon-icon-test13 shortcut-icon" ></p>
          待收货
        </div>
        <div class="shortcut-item">
          <p class="icon iconfont icon-icon-test12 shortcut-icon" ></p>
          待评价
        </div>
      </div>
  
      <!-- 菜单列表 -->
      <div class="menu">
        <div class="menu-item">
          <div>
            <span class="icon iconfont icon-icon-test6 menu-icon" ></span>
            收货地址
          </div>
          <span>&gt;</span>
        </div>
        <div class="menu-item">
          <div>
            <span class="icon iconfont icon-icon-test3 menu-icon" style="color:orange;"></span>
            购物车
          </div>
          <span>&gt;</span>
        </div>
        <div class="menu-item">
          <div>
            <span class="icon iconfont icon-icon-test5 menu-icon" style="color:#FF0066;"></span>
            账户设置
          </div>
          <span>&gt;</span>
        </div>
        <div class="menu-item">
          <div>
            <span class="icon iconfont icon-icon-test13 menu-icon" style="color:#66CC66;"></span>
            地区设置
          </div>
          <span>&gt;</span>
        </div>
        <div class="menu-item">
          <div>
            <span class="icon iconfont icon-icon-test7 menu-icon" style="color:#9933CC;"></span>
            关于
          </div>
          <span>&gt;</span>
        </div>
      </div>
  </div>
</template>

<script>
  import Vue from 'vue';
  import { Header, Button} from 'mint-ui';
  import 'mint-ui/lib/style.css'

  const axios = require('axios');

  Vue.component(Header.name, Header);
  Vue.component(Button.name, Button);
export default {
    name:'',
    data(){
      return{
       
      }
    }
  }
  


</script>

<style scoped>
  .container{
    padding-top:40px;
  }
  .shouye{
  background-color: #FFD2D2;
}

  /* 会员信息 */
  .member-info{
    display: flex;
    flex-direction: row;
    background-color: #FFD2D2;
    align-items: center;
    height: 150px;
    
    justify-content:center;
  }
  .member-txt{
    flex:1;
  }
  .headshot-box{
    flex: 1;
  }
  .headshot{
    width:70px;
    height: 70px;
    border-radius: 50%;
    border:2px solid #FFFFFF;
  }
  .member-btn{
    border:1px solid #FFFFFF;
    background-color: #FFD2D2;
    border-radius: 10px;
    padding:2px 10px;
  }
  .name{
    font-size: 20px;
  }
  .level{
    font-size: 13px;
  }
  /* 订单信息 */
  .order{
    padding:10px;
    color:#999999;
    display: flex;
    justify-content: space-between;
    border-bottom: 1px solid #CCCCCC;
    background-color: #FFFFFF;
  }
  .my-order{
    font-weight: bold;
  }
  .all-order{
    font-size:14px;
  }
  .shortcut{
    padding-top: 20px;
    display: flex;
    flex-direction: row;
    justify-content: space-around;
    background-color: #FFFFFF;
  }
  .shortcut-item{
    flex:1;
    font-size: 13px;
  }
  .shortcut-icon{
    font-size: 35px;
    margin:5px 0;
  }
  /* 菜单列表 */
  .menu{
    background-color: #FFFFFF;
    margin-top:20px;
  }
  .menu-item{
    height: 40px;
    line-height: 40px;
    border-bottom: 5px solid #EFEFEF;
    display: flex;
    flex-direction: row;
    justify-content: space-between;
  }
  .menu-icon{
    font-size: 24px;
    color:#000088;
  }
  .action-btn{
    width: 80px;
    margin-right:10px;
  }
</style>