<template>
  <!--搜索框-->
    <div class="search-box">
      <input type="text" :placeholder="ph"/>
    </div>
</template>

<script>
export default {
        name:'',
        props:{
             ph:String 
           
        },
    data(){
        return{

        }
    },

    methods:{

    },
}
</script>

<style scoped>
 /*搜索框*/
.search-box{
 
  padding: 20px ;
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