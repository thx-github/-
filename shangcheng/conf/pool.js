//数据库连接池
var mysql=require("mysql");//载入mysql模块
//创建连接池
var pool = mysql.createPool({
    host:'localhost',
    user:'root',
    password:'root',
    database:'auto_parts_mall'
});
module.exports ={
    pool : pool
}