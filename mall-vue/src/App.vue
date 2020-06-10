<template>
  <div id="app">
    <!-- <router-view/> -->
    <mt-tab-container v-model="selected">
      <mt-tab-container-item :id="idList[index]" v-for="(tab,index) in tabList" :key="index">
        <router-view/>
      </mt-tab-container-item>
    </mt-tab-container>
    <mt-tabbar v-model="selected" fixed>
      <mt-tab-item :id="idList[index]" v-for="(tab,index) in tabList" :key="index">
        <span class="icon iconfont" :class="tab.icon"></span>
        <p class="tab-name">{{tab.name}}</p>
      </mt-tab-item>
    </mt-tabbar>
  </div>
</template>

<script>
  import Vue from 'vue';
  import { Tabbar, TabItem, TabContainer, TabContainerItem, Cell } from 'mint-ui';
  import 'mint-ui/lib/style.css'

  Vue.component(Tabbar.name, Tabbar);
  Vue.component(TabItem.name, TabItem);
  Vue.component(TabContainer.name, TabContainer);
  Vue.component(TabContainerItem.name, TabContainerItem);
  Vue.component(Cell.name, Cell);

  export default {
    components: {
      
    },
    data() { 
      return {
        idList:['index','category','cart','my'],
        tabList:[
          {name:'首页',icon:'icon-icon-test13'},
          {name:'分类',icon:'icon-icon-test1'},
          {name:'购物车',icon:'icon-icon-test3'},
          {name:'我的',icon:'icon-icon-test1'}
        ],
        selected:'index'
      }
    },
    methods:{
    },
    watch:{
      //侦听selected属性的值变化来得到当前tabbar的选项
      selected:function(val, oldVal){
        console.log("改变后的"+val)
        // console.log("改变前的"+oldVal)
        switch(val){
          case "index":
            this.$router.push('/')//切换到首页
            break;
          case "category":
            this.$router.push('/category')//切换到分类页
            break;
          case "cart":
            this.$router.push('/cart')//切换到购物车页
            break;
          case "my":
            this.$router.push('/my')//切换会员中心页
            break;
        }
      }
    }
  }
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #2c3e50;
}

#nav a.router-link-exact-active {
  color: #42b983;
}

.mint-tab-item .iconfont{
  font-size: 30px;
}
.mint-tab-item .tab-name{
  font-size: 12px;
  margin:5px 0 0 0;
}
.details img{
  width: 100%
}
*{
  font-size:12px;
}
</style>
