var top1 = (document.documentElement.clientHeight - document.getElementById("LoginForm").offsetHeight) / 3;
var left = (document.documentElement.clientWidth - document.getElementById("LoginForm").offsetWidth) / 2;
document.getElementById('LoginForm').style.top = top1 + 'px';
document.getElementById('LoginForm').style.left = left + 'px';