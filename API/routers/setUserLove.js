const mypool = require('./sql');
const mysql = require('mysql');

const pool = mysql.createPool({
    host: mypool.gethostAddress(),
    user: mypool.getusername(),
    password: mypool.getpassword(),
    port: mypool.getport(),
    database: mypool.getdatabase()
})

exports.addLove = function(req, res) {
    const account = req.body.account;
    const love = req.body.love;
    let select = `select * from user where account="${account}"`;
    pool.getConnection((err, conn)=>{
        conn.query(select, function(err, result) {
            if (err) {
                res.json({ status: 200, err: 3, msg: '没有该账户' })
                return;
            }
            let data = "["+result[0].loves.slice(1,-1)+","+love+"]";
            pool.releaseConnection(conn);
            let update = `update user SET loves="${data}" where account="${account}"`;
            pool.getConnection((err, conn) => {
                if (err) {
                    console.log("数据库连接出错")
                    res.json({ status: 200, err: 3, msg: '数据库更新出错' })
                    return;
                }
                conn.query(update, (err, result) => {
                    if (err) {
                        console.log("数据库内部出错", err)
                        res.json({ status: 200, err: 3, msg: '数据库内部出错' })
                        return;
                    };
                    res.json({ status: 200, err: 0, msg: 'success', })
                    pool.releaseConnection(conn);
                });
            });
        });
    });
}