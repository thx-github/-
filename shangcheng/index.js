//主入口模块

const express = require('express')//载入express模块
var bodyParser = require('body-parser');//载入body-parser模块（接收post方式的请求的参数）




var path = require('path');//载入path模块
//var session = require("express-session");//载入session模块

const categoryRouter = require('./routers/category')//载入分类的路由
const bannerRouter = require('./routers/banner')//载入banner的路由
const goodsRouter = require('./routers/goods')//载入商品的路由


const app = express()//实例化express，获得app对象
//设置模板引擎
app.engine('html', require('express-art-template'));
//配置模板页面的根目录
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'html');

//设置静态资源目录
app.use(express.static('public'))
//设置上传图片目录为静态资源目录
app.use("/image",express.static('uploads'))

//设置bodyParser
app.use(bodyParser.json()); // for parsing application/json
app.use(bodyParser.urlencoded({ extended: true })); // for parsing application/x-www-form-urlencoded



//跨域设置
app.all('*',function(req,res,next){
 //配置白名单，如果允许所有域的请求就设置为"*" 
    res.header("Access-Control-Allow-Origin","http://localhost:8080");
    res.header("Access-Control-Allow-Headers","X-Requested-With");  
    res.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");  
    res.header("X-Powered-By",'3.2.1')  
    res.header("Content-Type","application/json;charset=utf-8");  
    next();
});


app.use(categoryRouter);//装载分类路由模块
app.use(bannerRouter);//装载banner路由模块
app.use(goodsRouter);//装载商品路由模块


//配置404处理
app.use(function (req, res, next) {
    console.log("__dirname="+__dirname);
    res.status(404).sendFile(__dirname + '/views/404.html');
})

//配置系统错误处理(一定要注意是接收4个参数)
app.use(function (err, req, res, next) {
    console.error(err.stack)
    res.status(500).sendFile(__dirname + '/views/500.html')
})

//启动服务器，并监听端口
app.listen(3000, () => console.log('商城服务器启动成功，端口号为3000。'))