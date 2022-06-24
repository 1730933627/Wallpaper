// 获取当前时间！
var date = new Date();
var year = date.getFullYear();
var month = date.getMonth() + 1;
var day = date.getDate();
var hour = date.getHours();
var minute = date.getMinutes();
var second = date.getSeconds();
if (month < 10) {
    var newMonth = '0' + month
}
var dates = year + '年 ' + newMonth + '月 ' + day + '日 ' + hour + ' ：' + minute + '分';
var timeNum = year + '' + newMonth + '' + day + '' + hour + '' + minute + second;
exports.times = function() {
    // 获取当前时间
    var date = new Date();
    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var day = date.getDate();
    var hour = date.getHours();
    var minute = date.getMinutes();
    var second = date.getSeconds();
    if (month < 10) {
        var newMonth = '0' + month
    }
    var dates = year + '年 ' + newMonth + '月 ' + day + '日 ' + hour + ' ：' + minute + '分';
    return dates;
}
exports.timeNum = function() {
    // 获取当前时间！
    var date = new Date();
    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var day = date.getDate();
    var hour = date.getHours();
    var minute = date.getMinutes();
    var second = date.getSeconds();
    if (month < 10) {
        var newMonth = '0' + month
    }
    var timeNum = year + '/' + newMonth + '/' + day + ' ' + hour + ':' + minute + ':' + second;
    return timeNum;
}