const express = require('express');
const bodyParser = require('body-parser');
const getWallpaper = require('./routers/getWallpaper');
const getUser = require('./routers/getUser');
const setUserLove = require('./routers/setUserLove');
const getUserLove = require('./routers/getUserLove');

const app = express();
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.all('*', function(req, res, next) {
    res.setHeader("Access-Control-Allow-Origin","*");
    res.setHeader("Access-Control-Allow-Headers","*");
    res.setHeader("Access-Control-Allow-Method","*");
    next();
});

app.all('/', (req, res)=> {
    const data = {
        msg:"Hello World"
    }
    let str = JSON.stringify(data);
    res.send(str);
});

app.post('/getWallpaper', (req, res)=>{
    getWallpaper.getter(req, res);
});
app.post('/getImage', (req, res)=>{
    getWallpaper.getImage(req, res);
});
app.post('/getUser', (req, res)=>{
    getUser.getter(req, res);
});
app.post('/getUserLove', (req, res)=>{
    getUserLove.getter(req, res);
});
app.post('/setUserLove', (req, res)=>{
    setUserLove.addLove(req, res);
});

app.listen(3000,()=>{
    console.log("服务已启动,3000 端口监听中...");
});