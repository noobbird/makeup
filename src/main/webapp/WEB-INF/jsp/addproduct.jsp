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
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css?" />
    <script src="../js/jquery.min.js?20180831"></script>
    <script src="../js/script.js?20180831"></script>
    <script src="../js/bootstrap.js"></script>
</head>
<body>
<div class="daui_col"><div class="top">
    <div class="title">
        <span class="daui_icon1"></span>
        <span>添加商品</span>
    </div>
    <div class="parme">
        <span class="daui_red"></span>
    </div>
    <div class="btns">
        <div>
            <a href="#" class="daui_btn medium blue" onclick="jump('productmanage');">返回</a>
        </div>
    </div>
</div>
    <form class="daui_form"  action="../api/addproducts" id="mForm" method="post" style="max-width: 600px; margin: auto" enctype="multipart/form-data">
        <div class="line">
            <p class="title">商品名称</p>
            <div class="inputs">
                <input type="text"  maxlength="32" value="自然堂" name="productName" class="daui_input" >
            </div>
        </div>

        <div class="line">
            <p class="title">现金价格</p>
            <div class="inputs">
                <input type="text" id="cashPrice" value="100" name="cashPrice"  maxlength="32" class="daui_input">
            </div>
            <p class="tips"></p>
        </div>
        <div class="line">
            <p class="title">积分价格</p>
            <div class="inputs">
                <input type="text" maxlength="32" value="200" name="pointPrice" class="daui_input" >
            </div>
        </div>
        <div class="line">
            <p class="title">图片</p>
            <input type='file' style="width: 200px;" name='pictureFile'id='pic' />
        </div>
        <div class="line">
            <p class="title">商品类型</p>
            <div class="inputs">
                    <span class="daui_select">
                        <select name="prodcutType">
                            <option value="1">积分商品</option>
                            <option value="2">现金商品</option>
                            <option value="3">不限方式</option>
                        </select>
                    </span>
            </div>
        </div>
        <div class="line">
            <p class="title">商品描述</p>
            <div class="inputs">
                <textarea name="description" form="mForm" id="dsp" cols="30" rows="10" style="width: 400px"></textarea>"
            </div>
        </div>

        <div class="submit" style="width: 200px; margin: auto">
            <a href="javascript:submitVip();" class="daui_btn big blue">添加商品</a>
        </div>
        <div id="success" class="alert alert-success" style="display: none">
            <a href="#" class="close">&times;</a>
            <strong>添加成功！</strong>
        </div>
        <div id="fail" class="alert alert-warning" style="display: none" >
            <a href="#" class="close">&times;</a>
            <strong>添加失败！</strong>
        </div>
    </form>
</div>
<script>
    $(function(){
        $(".close").click(function(){
            $("#success").hide();
            $("#fail").hide();
        });
        $('#input-recvid').keyup(function () {
            if($('#input-recvid').val().length == 8){
                $.ajax("../api/charge",{
                    type:'POST',
                    dataType: 'json',
                    data:{
                        'vid':$('#input-recvid').val(),
                        'amount':0,
                    },
                    success:function (resp) {
                        if(resp.code = 1){
                            $('#recname-tip').text(resp.vname);
                            $('#input-recvname').val(resp.vname);
                        }

                    }
                })
            }
            else{
                $('#recname-tip').text("");
            }
        })
    });
    function submitVip(){
        if($('#pic').val()!=""){
            $("#fail").hide();
            $('#mForm').submit();
        }
        else{
            $("#fail").val("请添加图片！");
            $("#fail").show();
        }




    }
</script>
</body>
</html>
