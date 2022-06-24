var time = 500
$.fakeLoader({timeToHide:time});
var fake = document.getElementById("fakeLoader");
var fake_js = document.getElementById("fakeLoader_js");
setTimeout(function(){
    fake.style.animation = "fakeLoader_out 0.5s ease-in-out";
},time-200)
setTimeout(function(){
    fake.style.display = "none";
    fake.parentNode.removeChild(fake);
    fake_js.parentNode.removeChild(fake_js);
},time+300)
