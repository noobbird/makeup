<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="format-detection" content="telephone=no,email=no,date=no,address=no">

    <title>DS共享美业管理后台</title>

    <link rel="stylesheet" type="text/css" href="/css/style.css?20180831" />
    <link rel="stylesheet" type="text/css" href="/css/dwui.css?20180831" />
    <script src="/js/jquery.min.js?20180831"></script>
    <script src="/js/script.js?20180831"></script>
    <script src="/js/datetimepicker/jquery.datetimepicker.full.js?20180831"></script>
    <script src="/js/webuploader/webuploader.js?20180831"></script>
    <script src="/js/webuploader/dauiuploader.js?20180831"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
<div class="dwui_body">
    <div class="dwui_navs">
        <div class="logo">
            <img src="/static/self/logo.png?20180831" />
        </div>
        <div class="dwui_menu zicon zicon-menu" onClick="$('.dwui_navs').hide();$('.dwui_menu.menu2').show();">

        </div>
        <div class="navs">
            <a id="vipmanage" href="#" class="" onclick="jump('vipmanage');">
                <em class="zicon zicon-home"></em>
                <span>会员管理</span>
                <em class="zicon zicon-arrowright"></em>
            </a>
            <a id="charge" href="#" class="" onclick="jump('charge');">
                <em class="zicon zicon-user"></em>
                <span>充值</span>
                <em class="zicon zicon-arrowright"></em>
            </a>
            <a id="productmanage" href="#" class="" onclick="jump('productmanage');">
                <em class="zicon zicon-users"></em>
                <span>商品管理</span>
                <em class="zicon zicon-arrowright"></em>
            </a>
            <a id="recommendhis" href="#" class="" onclick="jump('recommendhis');">
                <em class="zicon zicon-cart"></em>
                <span>推荐记录</span>
                <em class="zicon zicon-arrowright"></em>
            </a>
            <a id="wallethis" href="#" class="" onclick="jump('wallethis');">
                <em class="zicon zicon-bonus"></em>
                <span>奖金纪录</span>
                <em class="zicon zicon-arrowright"></em>
            </a>
            <a id="wallet" href="#" class="" onclick="jump('wallet');">
                <em class="zicon zicon-wallet"></em>
                <span>资金账户</span>
                <em class="zicon zicon-arrowright"></em>
            </a>
            <a id="jifen" href="#" class="" onclick="jump('jifen');">
                <em class="zicon zicon-wallet"></em>
                <span>积分账户</span>
                <em class="zicon zicon-arrowright"></em>
            </a>
            <a id="pswd" href="#" class="" onclick="jump('pswd');">
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

        <div class="dwui_main">

            <div class="daui_col">
                <div class="top">
                    <div class="title">
                        <span class="daui_icon1"></span>
                        <span>欢迎您</span>
                    </div>
                    <div class="btns">
                        <div>
                        </div>
                    </div>
                </div>



            </div>

        </div>
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
    window.onload = function(){
        jump("vipmanage");
    };
    function jump(path){
        // alert(path);
        $(".dwui_main").load("/" + path,function(){ $(".dwui_main").fadeIn(100);})};

</script>

</body>
</html>