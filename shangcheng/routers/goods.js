//商品路由模块
var express = require('express')
var goodsDao = require('../models/goodsDao.js')

var router = express.Router()

//查询所有商品
router.get('/goodsAll', (req, res)=>{
    goodsDao.getAll(function(data){
        res.json(data)
    })
})
//按id查询商品
router.get('/goodsDetails/:id', (req, res)=>{
    console.log("获取从前端传过来的id: "+req.params.id)
    goodsDao.getById(req.params.id, function(data){
        res.json(data);
    })
}) 
//按id查询商品图片
router.get('/goodsImage/:id', (req, res)=>{
    goodsDao.getImageById(req.params.id, function(data){
        res.json(data);
    })
}) 
module.exports = router;