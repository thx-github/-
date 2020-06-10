//banner路由模块
var express = require('express')
var bannerDao= require('../models/bannerDao.js')//载入banner模块

var router = express.Router()


router.get('/bannerAll', (req, res)=>{
    bannerDao.getAll(function(data){
        res.json(data)
    })
})

module.exports = router;