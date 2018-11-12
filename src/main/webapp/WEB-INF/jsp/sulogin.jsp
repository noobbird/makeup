<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <meta http-equiv="X-UA-Compatible" content="chrome=1;IE=edge">
    <meta name="renderer" content="webkit">
    <title>DS共享美业</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css" />
    <link rel="stylesheet" type="text/css" href="/css/dwui.css" />
    <link rel="stylesheet" type="text/css" href="/icon/iconfont.css">
    <link rel="stylesheet" type="text/css" href="/zicon/iconfont.css">
    <script src="/js/jquery.min.js"></script>

</head>
<body class="dwui_login">
<div class="wrap">
    <div class="top">
        <div class="img">
            <img src="/tupian/login.jpg" />
        </div>
        <div class="txt">
            <span>DS共享美业后台管理</span>
        </div>
    </div>

    <div class="form">
        <form id="mForm" action="/login" method="post">
            <div class="line">
                <p class="zicon zicon-user"></p>
                <input type="text" name="username" placeholder="admin" />
            </div>
            <div class="line">
                <p class="zicon zicon-lock"></p>
                <input type="text" onFocus="this.type='password'" name="userpswd" placeholder="admin123"/>
            </div>
            <div class="submit">
                <a href="javascript:Login()">登 录</a>
                <%--<input type="submit" >--%>
            </div>
        </form>
    </div>
</div>

<div class="daui_loading">
    <div class="wrap">
        <span class="daicon daicon-loading"></span>
    </div>
</div>
</body>
<script>
    $(function(){
        $('.daui_loading').hide();
    });
    function Login()
    {
        // $('.daui_loading').show();
        $.ajax({
            url:'/sulogin',
            type:'POST',
            dataType:"json",
            data:$("#mForm").serialize(),
            success: function(data){
                // $('.daui_loading').hide();
                if(data.code == 0)
                {
                    window.location.href="/sumain";
                }
                else
                {
                    alert("账号或密码错误");
                }
            },
            error:function(){
                $('.daui_loading').hide();
                alert('网络连接失败');
            }
        });
    }
</script>
</html>