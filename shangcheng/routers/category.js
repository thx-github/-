
//分类路由模块
var express = require('express')
var categoryDao = require('../models/categoryDao.js')//载入分类模块

var router = express.Router()


//处理所有分类请求
router.get('/categoryAll', (req, res)=>{
    categoryDao.getAll(function(data){
        res.json(data)
    })
})

module.exports = router;