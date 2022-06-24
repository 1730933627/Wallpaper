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
    const account = req.body.account;
    let sql = `select * from user where account="${account}"`;
    pool.getConnection(function(err, conn) {
        if (err) {
            console.log("数据库连接出错");
            res.json({ status: 200, err: 3, msg: '数据库连接出错' });
            return;
        }
        conn.query(sql, function(err, result) {
            if (err) {
                console.log("数据库内部出错");
                res.json({ status: 202, err: 1, msg: '没有该用户'});
                return;
            }
            else{
                res.json({ status: 200, err: 0, msg: 'success', data: result});
                pool.releaseConnection(conn);
            }
        });
    })
}