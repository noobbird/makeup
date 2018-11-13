<%--
  Created by IntelliJ IDEA.
  User: 杨梦赢
  Date: 2018/11/10
  Time: 12:44
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
<form class="daui_form" id="mForm" style="max-width: 600px; margin: auto">
    <div class="line">
        <p class="title">会员ID</p>
        <div class="inputs">
            <input type="text"  maxlength="32" value="MY103821" name="vid" class="daui_input" >
        </div>
        <span class="customerCity" id="address" style="display: none"></span>
    </div>
    <div class="line">
        <p class="title">金额</p>
        <div class="inputs">
            <input type="text"  maxlength="32" value="100" name="amount" class="daui_input" >
        </div>
    </div>

    <div class="submit" style="width: 200px; margin: auto">
        <a href="javascript:submitVip();" class="daui_btn big blue">充值</a>
    </div>
    <div id="success" class="alert alert-success" style="display: none">
        <a href="#" class="close">&times;</a>
        <strong>充值成功！</strong>
    </div>
    <div id="fail" class="alert alert-warning" style="display: none" >
        <a href="#" class="close">&times;</a>
        <strong>充值失败！</strong>
    </div>

</form>
<script>
    $(function(){
        $(".close").click(function(){
            $("#success").hide();
            $("#fail").hide();
        });
        $('.submit').click(function (){
            $.ajax({
                url:'/api/charge',
                type:'POST',
                dataType:"json",
                data:$("#mForm").serialize(),
                success: function(resp){
                    if(resp.code==1){
                        $('#success strong').text("充值成功");
                        $('#success strong').append("<br/> 账号:" +resp.vid+
                            "   姓名: " + resp.vname+
                            "   余额: " + resp.banlance)
                        $('#success').show();
                    }
                    else{
                        $('#fail strong').text("充值失败，请输入正确的账号！");
                        $('#fail').show();
                    }


                },
                error:function(){
                    $('#fail strong').text("充值失败，请检查网络！");
                    $('#fail').show();
                }
            });
        });
    });

</script>
</body>
</html>
