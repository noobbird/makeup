<%--
  Created by IntelliJ IDEA.
  User: 杨梦赢
  Date: 2018/11/8
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css?" />
    <script src="/js/jquery.min.js?20180831"></script>
    <script src="/js/script.js?20180831"></script>
    <script src="/js/bootstrap.js"></script>
</head>
<body>
<div class="daui_col"><div class="top">
    <div class="title">
        <span class="daui_icon1"></span>
        <span>添加会员</span>
    </div>
    <div class="parme">
        <span class="daui_red"></span>
    </div>
    <div class="btns">
        <div>
            <a href="#" class="daui_btn medium blue" onclick="jump('vipmanage');">返回</a>
        </div>
    </div>
</div>
    <form class="daui_form" id="mForm" style="max-width: 600px; margin: auto">
        <div class="line">
            <p class="title">姓名</p>
            <div class="inputs">
                <input type="text"  maxlength="32" value="杨梦赢" name="vName" class="daui_input" >
            </div>
        </div>

        <div class="line">
            <p class="title">手机号码</p>
            <div class="inputs">
                <input type="text" id="Ipt_mobile" value="18628909429" name="phone"  maxlength="32" class="daui_input">
            </div>
            <p class="tips"></p>
        </div>
        <div class="line">
            <p class="title">代理等级</p>
            <div class="inputs">
                <input type="text" maxlength="32" value="二级" name="vClass" class="daui_input" >
            </div>
        </div>
        <div class="line">
            <p class="title">推荐人</p>
            <div class="inputs">
                <input type="text" maxlength="32"  value="马走日" name="recommendVid" class="daui_input" >
            </div>
        </div>
        <div class="line">
            <p class="title">地址</p>
            <div class="inputs">
                <input type="text"  maxlength="32" value="黄金海岸二号" name="address" class="daui_input" >
            </div>
        </div>
        <div class="line">
            <p class="title">登录密码</p>
            <div class="inputs">
                <input type="password"  maxlength="32" value="jijio" name="vPassword" class="daui_input" >
            </div>
        </div>
        <div class="line">
            <p class="title">支付密码</p>
            <div class="inputs">
                <input type="password"  maxlength="32" value="yatui" name="payPassword" class="daui_input" >
            </div>
        </div>
        <div class="line">
            <p class="title">收款银行</p>
            <div class="inputs">
                    <span class="daui_select">
                        <select name="bankName">
                            <option value="中国农业银行">请选择..</option>
                            <option value="中国工商银行">中国工商银行</option>
                            <option value="中国建设银行">中国建设银行</option>
                            <option value="中国银行">中国银行</option>
                            <option value="中国农业银行">中国农业银行</option>
                        </select>
                    </span>
            </div>
        </div>
        <div class="line">
            <p class="title">收款卡号</p>
            <div class="inputs">
                <input type="text" name="bankNumber" value="6217003810026780299" class="daui_input">
            </div>
            <p class="tips">
            </p>
        </div>

        <div class="submit" style="width: 200px; margin: auto">
            <a href="javascript:submitVip();" class="daui_btn big blue">添加会员</a>
        </div>
        <div id="success" class="alert alert-success" style="display: none">
            <a href="#" class="close" data-dismiss="alert">&times;</a>
            <strong>添加成功！</strong>
        </div>
        <div id="fail" class="alert alert-warning" style="display: none" >
            <a href="#" class="close" data-dismiss="alert">&times;</a>
            <strong>添加失败！</strong>您的网络连接可能有问题。
        </div>
    </form>
</div>
<script>
    $(function(){
        $(".close").click(function(){
            $("#success").alert();
            $("#fail").alert();
        });
    });
    function submitVip(){
        $.ajax({
            url:'/insertVip',
            type:'POST',
            dataType:"json",
            data:$("#mForm").serialize(),
            success: function(vip){
                // $('.daui_loading').hide();
                // alert(vip.vid+vip.vPassword+vip.payPassword);
                $('#success strong').append("<br/> 登录名: " +
                    vip.vid+"<br/>登录密码: "+vip.vPassword+ "<br/> 支付密码: "+vip.payPassword);
                $('#success').show();
            },
            error:function(){
                $('.daui_loading').hide();
                $('#fail').show();
            }
        });
    }
</script>
</body>
</html>
