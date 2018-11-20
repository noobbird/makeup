<%--
  Created by IntelliJ IDEA.
  User: 杨梦赢
  Date: 2018/11/2
  Time: 12:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="daui_col">
    <div class="top">
        <div class="title">
            <span class="daui_icon1"></span>
            <span>我的信息</span>
        </div>
        <div class="parme">
            <span></span>
        </div>
        <div class="btns">
            <div>
                <a href="#" class="daui_btn medium blue">修改</a>
            </div>
        </div>
    </div>



    <div class="wrap">

        <table class="daui_table">
            <tbody><tr>
                <th width="120">ID</th>
                <td>${vip.vid}</td>
            </tr>
            <tr>
                <th>姓名</th>
                <td>${vip.vName}</td>
            </tr>
            <tr>
                <th>手机号</th>
                <td>${vip.phone}</td>
            </tr>
            <tr>
                <th>级别</th>
                <td>${vip.vClass}</td>
            </tr>
            <tr>
                <th>入驻时间</th>
                <td>${vip.registeTime}</td>
            </tr>
            <tr>
                <th>推荐人</th>
                <td>${vip.recommendPerson} ${vip.recommendVid}</td>
            </tr>
            <tr>
                <th>收款银行</th>
                <td>${vip.bankName}</td>
            </tr>
            <tr>
                <th>余额</th>
                <td>${vip.banlance}</td>
            </tr>
            <tr>
                <th>积分</th>
                <td>${vip.points}</td>
            </tr>
            <tr>
                <th>收款卡号</th>
                <td>${vip.bankNumber}</td>
            </tr>
            </tbody></table>
    </div>
</div>
</body>
</html>
