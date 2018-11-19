<%--
  Created by IntelliJ IDEA.
  User: 杨梦赢
  Date: 2018/11/14
  Time: 18:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css?20180831" />
    <link rel="stylesheet" type="text/css" href="../css/dwui.css?20180831" />
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css?" />
    <script src="../js/jquery.min.js?20180831"></script>
    <script src="../js/script.js?20180831"></script>
    <script src="../js/bootstrap.js"></script>
    <style>
        .product_pic{
            width: auto;
            height: 100px;
        }
    </style>
</head>
<body>
<div class="daui_col">
<div class="top">
    <div class="title">
        <span class="daui_icon1"></span>
        <span>商品列表</span>
    </div>
    <div id="success" class="alert alert-success" style="height: 30px;padding-top: 3px; display: none">
        <a href="#" class="close" >&times;</a>
        <strong>下架成功！</strong>
    </div>
    <div id="fail" class="alert alert-warning" style="height: 30px;padding-top: 3px; display: none" >
        <a href="#" class="close" >&times;</a>
        <strong>下架失败！</strong>
    </div>
    <div class="btns">
        <div>
            <a href="#" onclick="jump('addproduct')" >新增 </a>
        </div>
    </div>
</div>
</div>
<div class="daui_col">
<div class="wrap">

    <table class="daui_table">
        <thead>
        <tr>
            <th width="80">产品序号</th>
            <th>图片</th>
            <th>产品名字</th>
            <th>现金价格</th>
            <th>积分价格</th>
            <th>产品类型</th>
            <th>产品描述</th>
            <th>销量</th>
            <th>热度</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
</div>
</div>
<div class="page-index">
    <div class="all"></div>
    <div class="current"></div>
    <div  class="indiv"></div>
</div>
<script>
    $(function () {
        var alldata ='';
        var pagesize = 14;
        function putdata(page, json) {
            $('tbody').empty();
            var start = (page - 1) * pagesize;
            var end = start + pagesize >= json.length ? json.length : start + pagesize;
            var index = 1;
            for (var i = start; i < end; i++) {
                var tr = '<tr>'
                var product = json[i];
                var tr = '<tr>';
                tr += '<td>' + product.productId +'</td>';
                tr += '<td style="max-width: 200px"><img src= ' + product.picUrl + ' class="product_pic"></td>';
                tr += '<td>' + product.productName + '</td>';
                tr += '<td>' + product.cashPrice + '</td>';
                tr += '<td>' + product.pointPrice + '</td>';
                tr += '<td>' + product.prodcutType + '</td>';
                tr += '<td>' + product.description + '</td>';
                tr += '<td>' + product.saleCount + '</td>';
                tr += '<td>' + product.productHot + '</td>';
                tr += "<td class='ci'><button class='btn btn-primary form-control dump-product' data-toggle='modal' data-target='#myModal'> 下架</button></td>"
                tr += '</tr>';
                $('tbody').append(tr);
                index += 1;
            }
            $('.current').text("当前第" + page + "页")
            $('.ci').click(function () {
                $("#success").hide();
                $("#fail").hide();
                var partr = $(this).closest('tr').find('td');
                var vid = partr.eq(0).text();
                $.ajax("../api/removeprodcut",{
                    method: "POST",
                    dataType: "json",
                    data:{id:vid},
                    success:function (data) {
                        if(data.code == 1){
                            $("#success").show();
                        }
                        else{
                            $("$fail").show();
                        }
                    }
                })
                $(this).parent().remove();
            })
        }
        function pageindex(viplen){
            var count = Math.ceil(viplen/pagesize);
            $('.all').text("共"+count+"页");
            for(var i = 1; i <= count; i ++){
                $('.indiv').append("<a href='#' class='page' page="+i+
                    ">第"+i+"页&nbsp;</a>")
            }
            $('.page').click(function () {
                var page = $(this).attr('page');
                putdata(page, alldata);
            })


        }
        $.ajax("../api/getproducts",{
            method:"POST",
            dataType:"json",
            success:function (products) {
                pageindex(products.length);
                alldata = products;
                putdata(1, products);


            }
        })
    })
</script>
</body>
</html>
