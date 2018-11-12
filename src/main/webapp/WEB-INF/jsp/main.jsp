<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="format-detection" content="telephone=no,email=no,date=no,address=no">

    <title>DS共享美业</title>


    <link rel="stylesheet" type="text/css" href="/css/style.css?20180831" />
    <link rel="stylesheet" type="text/css" href="/css/dwui.css?20180831" />
    <script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
    <script src="/js/script.js?20180831"></script>
</head>
<body>
<div class="dwui_body">
    <div class="dwui_navs">
        <div class="logo">


            <img src="/images/cart.jpg" />
        </div>
        <div class="dwui_menu zicon zicon-menu" onClick="$('.dwui_navs').hide();$('.dwui_menu.menu2').show();">

        </div>


        <div class="navs">
            <a href="/main" class="" name="welcome" onclick="jump(this,'welcome')" id="welcome">
                <em class="zicon zicon-home"></em>
                <span>首页</span>
                <em class="zicon zicon-arrowright"></em>

            </a>
            <a id="profile" href="#" class="" onclick="jump(this,'profile');" id="profile">
                <em class="zicon zicon-user"></em>
                <span>个人信息</span>
                <em class="zicon zicon-arrowright"></em>
            </a>
            <a id="team" href="#" class="" onclick="jump(this,'team');" id="team">
                <em class="zicon zicon-users"></em>
                <span>团队信息</span>
                <em class="zicon zicon-arrowright"></em>
            </a>
            <a id="product" href="#" class="" onclick="jump(this,'product');" id="product">
                <em class="zicon zicon-cart"></em>
                <span>在线购物</span>
                <em class="zicon zicon-arrowright"></em>
            </a>
            <a id="cart" href="#" class="" onclick="jump(this,'cart');" id="cart">
                <em class="zicon zicon-cart"></em>
                <span>购物车</span>
                <em class="zicon zicon-arrowright"></em>
            </a>
            <a id="wallethis" href="#" class="" onclick="jump(this,'wallethis');" id="wallethis">
                <em class="zicon zicon-bonus"></em>
                <span>奖金纪录</span>
                <em class="zicon zicon-arrowright"></em>
            </a>
            <a id="wallet" href="#" class="" onclick="jump(this,'wallet');" id="wallet">
                <em class="zicon zicon-wallet"></em>
                <span>资金账户</span>
                <em class="zicon zicon-arrowright"></em>
            </a>
            <a id="jifen" href="#" class="" onclick="jump(this,'jifen');" id="jifen">
                <em class="zicon zicon-wallet"></em>
                <span>积分账户</span>
                <em class="zicon zicon-arrowright"></em>
            </a>
            <a id="pswd" href="#" class="" onclick="jump(this,'pswd');" id="pawd">
                <em class="zicon zicon-gear"></em>
                <span>修改密码</span>
                <em class="zicon zicon-arrowright"></em>
            </a>
        </div>
    </div>
    <div class="dwui_menu menu2 zicon zicon-menu" onClick="$('.dwui_navs').show();$('.dwui_menu.menu2').hide();">
    </div>
    <div class="dwui_wrap">
        <div class="dwui_header">
            <div class="title">
                <p>DS共享美业会员服务中心</p>
            </div>
            <div class="btns">
                <a href="https://www.gxmyvips.com/info/pswd" class="zicon zicon-lock"></a>
                <a href="https://www.gxmyvips.com/login/out" class="zicon zicon-logout"></a>
            </div>
        </div>

        <div class="dwui_main"> </div>
    </div>
</div>


<div class="daui_loading">
    <div class="wrap">
        <span class="daicon daicon-loading"></span>
    </div>
</div>


<div class="daui_iframe" id="Daui_iframe">
    <div class="flex"></div>
    <div class="wrap">
        <div class="btns">
            <a href="javascript:Daui_frame_hide();">X</a>
        </div>
        <div class="iframe">
        </div>
    </div>
    <div class="flex"></div>
</div>
<script language="javascript" type="text/javascript">
    //记录当前点击的连接
    var linkName='welcome';
    $(() =>{
        $('#welcome').click()
    });

    function jump(x,path){
        $('#'+linkName).css("background","");
        $('#'+path).css("background","#0d97ff");
        linkName=path;
        $(".dwui_main").load("home/"+path,function(){ $(".dwui_main").fadeIn(100);})};

</script>

</body>
</html>