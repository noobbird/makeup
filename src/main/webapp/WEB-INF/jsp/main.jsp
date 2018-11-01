<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="format-detection" content="telephone=no,email=no,date=no,address=no">

    <title>DS共享美业</title>

    <link rel="stylesheet" type="text/css" href="/css/style.css?20180831" />
    <link rel="stylesheet" type="text/css" href="/css/dwui.css?20180831" />
    <script src="/js/jquery.min.js?20180831"></script>
    <script src="/js/script.js?20180831"></script>
    <script src="/js/datetimepicker/jquery.datetimepicker.full.js?20180831"></script>
    <script src="/js/webuploader/webuploader.js?20180831"></script>
    <script src="/js/webuploader/dauiuploader.js?20180831"></script>
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
            <a href="https://www.gxmyvips.com/main" class="active">
                <em class="zicon zicon-home"></em>
                <span>首页</span>
                <em class="zicon zicon-arrowright"></em>
            </a>
            <a href="https://www.gxmyvips.com/info" class="">
                <em class="zicon zicon-user"></em>
                <span>个人信息</span>
                <em class="zicon zicon-arrowright"></em>
            </a>
            <a href="https://www.gxmyvips.com/team" class="">
                <em class="zicon zicon-users"></em>
                <span>团队信息</span>
                <em class="zicon zicon-arrowright"></em>
            </a>
            <a href="https://www.gxmyvips.com/cart" class="">
                <em class="zicon zicon-cart"></em>
                <span>在线购物</span>
                <em class="zicon zicon-arrowright"></em>
            </a>
            <a href="https://www.gxmyvips.com/wallet/his" class="">
                <em class="zicon zicon-bonus"></em>
                <span>奖金纪录</span>
                <em class="zicon zicon-arrowright"></em>
            </a>
            <a href="https://www.gxmyvips.com/wallet" class="">
                <em class="zicon zicon-wallet"></em>
                <span>资金账户</span>
                <em class="zicon zicon-arrowright"></em>
            </a>
            <a href="https://www.gxmyvips.com/jifen" class="">
                <em class="zicon zicon-wallet"></em>
                <span>积分账户</span>
                <em class="zicon zicon-arrowright"></em>
            </a>
            <a href="https://www.gxmyvips.com/info/pswd" class="">
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
                        <span>欢迎您，${userName}</span>
                    </div>
                    <div class="parme">
                        <span>MY103821</span>
                    </div>
                    <div class="btns">
                        <div>
                        </div>
                    </div>
                </div>



                <div class="wrap">

                    <div class="dwui_grid">
                        <div class="daui_flex">
                            <div class="flex">
                                <a href="https://www.gxmyvips.com/wallet">
                                    <i class="zicon zicon-wallet"></i>
                                    <span>我的钱包</span>
                                </a>
                            </div>
                            <div class="flex">
                                <a href="https://www.gxmyvips.com/team">
                                    <i class="zicon zicon-users"></i>
                                    <span>我的团队</span>
                                </a>
                            </div>
                            <div class="flex">
                                <a href="https://www.gxmyvips.com/cart">
                                    <i class="zicon zicon-cart"></i>
                                    <span>在线购物</span>
                                </a>
                            </div>
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

</body>
</html>