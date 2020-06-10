//分类数据操作模块

const pool = require('../conf/pool').pool //载入数据库连接池模块


//获取所有分类
exports.getAll = (callback)=>{
  //使用连接池获取数据库连接并进行操作
  pool.getConnection((err,connection) => {
    if(err){
      callback(err);
    }else{
      //执行sql语句 
      connection.query('SELECT * FROM apm_category', function (err, rows, fields) {
      if (err) throw err
      connection.release();//释放连接
      callback(rows)//执行回调函数
    })
      }
  })
}
