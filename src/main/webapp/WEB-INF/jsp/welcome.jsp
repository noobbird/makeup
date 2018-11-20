<%--
  Created by IntelliJ IDEA.
  User: 杨梦赢
  Date: 2018/11/5
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="css/style.css?20180831" />
    <link rel="stylesheet" type="text/css" href="css/dwui.css?20180831" />
    <script type="text/javascript" src="js/jquery-3.3.1.js"></script>
    <script src="js/script.js?20180831"></script>
</head>
<body >
<div class="daui_col">
    <div class="top">
        <div class="title">
            <span class="daui_icon1"></span>
            <span>欢迎您，${ sessionScope.userName}<c:set var="user" value="${sessionScope.loginUser}"/>  </span>
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
</body>
</html>
