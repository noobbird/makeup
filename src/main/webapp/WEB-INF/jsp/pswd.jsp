<%--
  Created by IntelliJ IDEA.
  User: 杨梦赢
  Date: 2018/11/5
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false"%>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <div class="daui_col">
        <div class="top">
            <div class="title">
                <span class="daui_icon1"></span>
                <span>修改密码</span>
            </div>
            <div class="parme">
                <span class="daui_red"></span>
            </div>
            <div class="btns">
                <div>
                    <a href="https://www.gxmyvips.com/info" class="daui_btn medium blue">返回</a>
                </div>
            </div>
        </div>

        <div class="wrap">
            <form class="daui_form" id="mForm">
                <div class="line">
                    <p class="title">原登陆密码</p>
                    <div class="inputs">
                        <input type="text" onfocus="this.type='password'" name="pswd1" value="" maxlength="32" class="daui_input">
                    </div>
                </div>
                <div class="line">
                    <p class="title">原二级密码</p>
                    <div class="inputs">
                        <input type="text" onfocus="this.type='password'" name="pswd2" value="" maxlength="32" class="daui_input">
                    </div>
                </div>
                <div class="line">
                    <p class="title">新登陆密码</p>
                    <div class="inputs">
                        <input type="text" onfocus="this.type='password'" name="new1" value="" maxlength="32" class="daui_input">
                    </div>
                    <p class="tips">
                        留空则为不修改
                    </p>
                </div>
                <div class="line">
                    <p class="title">新二级密码</p>
                    <div class="inputs">
                        <input type="text" onfocus="this.type='password'" name="new2" value="" maxlength="32" class="daui_input">
                    </div>
                    <p class="tips">
                        留空则为不修改
                    </p>
                </div>
                <div class="line">
                    <p class="title">短信验证码</p>
                    <div class="inputs" style="position: relative">
                        <input type="text" name="smscode" value="" maxlength="32" class="daui_input">
                        <input type="hidden" id="Ipt_mobile">
                        <a href="javascript:M_smscode.send(this);" id="Btn_Smscode" class="dwui_smsbtn daui_btn blue small">获 取</a>
                    </div>
                    <p class="tips">
                        15867883071				</p>
                </div>

                <div class="submit">
                    <a href="javascript:Ajax_();" class="daui_btn big blue">提交</a>
                </div>
            </form>

        </div>
    </div>

    <script>
        function Ajax_()
        {
            $('.daui_loading').show();
            $.ajax({
                url:'',
                type:'POST',
                dataType:"json",
                data:$('#mForm').serialize(),
                success: function(data){
                    $('.daui_loading').hide();
                    if(data.code == 1)
                    {
                        alert('修改成功');
                        //window.location.reload();
                    }
                    else if(data.code == -101)
                    {
                        window.location.href="https://www.gxmyvips.com/login";
                    }
                    else
                    {
                        alert(data.msg);
                    }
                },
                error:function(){
                    $('.daui_loading').hide();
                    alert('网络连接失败');
                }
            });
        }
        var M_smscode = new Daui_smscode({
            sec	:	60,
            url	:	'https://www.gxmyvips.com/info/smscode',
            btn	:	$('#Btn_Smscode'),
            ipt	:	$('#Ipt_mobile')
        });
    </script>
</body>
</html>
