const mypool = require('./sql');
const mysql = require('mysql');

const pool = mysql.createPool({
    host: mypool.gethostAddress(),
    user: mypool.getusername(),
    password: mypool.getpassword(),
    port: mypool.getport(),
    database: mypool.getdatabase()
});

exports.getter = (req, res) => {
    let sql = "select * from images";
    pool.getConnection(function(err, conn) {
        if (err) {
            console.log("数据库连接出错")
            console.log(err)
            res.json({ status: 200, err: 3, msg: '数据库连接出错' })
            return;
        }
        conn.query(sql, function(err, result) {
            if (err) {
                console.log("数据库内部出错")
                res.json({ status: 200, err: 3, msg: '数据库内部出错' })
                return;
            }
            res.json({ status: 200, err: 0, msg: 'success', data: result })
            pool.releaseConnection(conn);
        });
    })
}
exports.getImage = (req, res) => {
    let sql = `select * from images where id="${req.body.id}"`;
    pool.getConnection(function(err, conn) {
        if (err) {
            console.log("数据库连接出错")
            console.log(err)
            res.json({ status: 200, err: 3, msg: '数据库连接出错' })
            return;
        }
        conn.query(sql, function(err, result) {
            if (err) {
                console.log("数据库内部出错")
                res.json({ status: 200, err: 3, msg: '数据库内部出错' })
                return;
            }
            res.json({ status: 200, err: 0, msg: 'success', data: result})
            pool.releaseConnection(conn);
        });
    })
}