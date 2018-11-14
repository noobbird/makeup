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
    <div class="line" >
        <p class="title">会员ID</p>
        <div class="inputs" style="border: 1px solid #e3e3e3;height: 33px;width: 300px">
            <input type="text"  id="charge_vid" maxlength="32" value="MY103821" name="vid" class="daui_input" style="width: 160px;border:0;
            border-bottom: 1px solid #d8d8d8">
            <span class="input-tip" id="vname-tip" style="display: none; height: 26px;margin-left: 5px;color: #999999;"></span>
            <span class="input-tip" id="banlance-tip" style="display: none; height: 26px;color: #999999;"></span>
        </div>

    </div>
    <div class="line">
        <p class="title">金额</p>
        <div class="inputs" style="border: 1px solid #e3e3e3;height: 33px;width: 300px">
            <input type="text"  maxlength="32" value="100" name="amount" class="daui_input"  style="width: 299px;" >
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
    $("#charge_vid").keyup(function () {
            if($('#charge_vid').val().length == 8){
                $.ajax("/api/charge",{
                    type:'POST',
                    dataType: 'json',
                    data:{
                        'vid':$('#charge_vid').val(),
                        'amount':0,
                    },
                    success:function (resp) {
                        $('#vname-tip').text(resp.vname);
                        $('#banlance-tip').text("|余额: "+resp.banlance);
                    }
                })

                $('#vname-tip').show();
                $('#banlance-tip').show();
            }
            else{
                $('#vname-tip').hide();
                $('#banlance-tip').hide();
            }

        }
        );
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
                    $('#fail').hide();
                    $('#success').hide();
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
