<%--
  Created by IntelliJ IDEA.
  User: 杨梦赢
  Date: 2018/11/5
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css?20180831" />
    <link rel="stylesheet" type="text/css" href="/css/dwui.css?20180831" />
    <script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
    <link rel="stylesheet" type="text/css" href="/css/common.css" />
    <script src="/js/script.js?20180831"></script>
</head>
<body>


    <div class="daui_col">
        <div class="top">
            <div class="title">
                <span class="daui_icon1"></span>
                <span>积分购物区</span>
            </div>
            <div class="parme">
                <span>您的积分:205.00</span>
            </div>
            <div class="btns">
                <div>
                    <a href="https://www.gxmyvips.com/cart/orders" class="daui_btn white medium">订单记录</a>
                </div>
            </div>
        </div>



        <div class="wrap">
            <form id="mform1">
                <table class="daui_table">
                    <thead><tr>
                        <th width="70">ID</th>
                        <th>商品</th>
                        <th width="140">价格</th>
                        <th width="80">销量</th>
                        <th width="80">人气</th>
                        <th width="130">购买</th>
                        <th width="60">购物车</th>
                    </tr>
                    </thead>
                    <tbody></tbody>
                </table>
                <input type="hidden" name="type" value="1">
            </form>
            <p style="text-align: right; padding-top: 5px;">
                <a href="javascript:Submit(1);" class="daui_btn blue big">购买</a>
            </p>
        </div>
    </div>

    <div class="daui_col">
        <div class="top">
            <div class="title">
                <span class="daui_icon1"></span>
                <span>现金购物区</span>
            </div>
            <div class="parme">
                <span>您的钱包:-200.00</span>
            </div>
            <div class="btns">
                <div>
                </div>
            </div>
        </div>
        <div class="wrap">
            <form id="mform2">
                <table class="daui_table">
                    <thead><tr>
                        <th width="70">ID</th>
                        <th>商品</th>
                        <th width="140">价格</th>
                        <th width="80">销量</th>
                        <th width="80">人气</th>
                        <th width="130">购买</th>
                    </tr>
                    </thead>
                <tbody></tbody>
                </table>
                <input type="hidden" name="type" value="2">
            </form>
            <p style="text-align: right; padding-top: 5px;">
                <a href="javascript:Submit(2);" class="daui_btn blue big">购买</a>
            </p>

        </div>
    </div>
    <script>
        $(() =>{
            searchAllProduct()
        });
        function searchAllProduct() {
            $.get('/product/findProduceByWhere','',function (results) {
                var str="";
                for(productVO of results){
                    str +=`
                     <tr>
                        <td name="productId">${ productVO.productId}</td>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/32');" style="vertical-align: top">
                                <img src="../images/1.jpg" >
                                &nbsp;${ productVO.productName}</a>
                        </td>
                        <td class="c">${ productVO.cashPrice}</td>
                        <td class="c">${ productVO.saleCount}</td>
                        <td class="c">${ productVO.productHot}</td>
                        <td class="c">
                            <div class="daui_numbtns" name="Numbtns_32" style="margin: 0 auto">
                                <i class="disabled" onclick="decrease(this)">-</i>
                                <input type="number" max="99" min="1" value="1" name="productCount">
                                <i class="" onclick="increase(this)" >+</i>
                            </div>
                        </td>
                        <td class="c"> <img src="/images/cart.jpg" onclick="addtProductToCart(this)"></td>
                    </tr>
                    `;
                }
                $('#mform1 tbody').html(str);
                $('#mform2 tbody').html(str);

            },'json');
        }

        function addtProductToCart(x) {
            let data={};
            data.productId= $(x).parent().parent().children('td[name="productId"]').text();
            data.productCount=$(x).parent().parent().find('input[name="productCount"]').val();
            console.log(data)
            $.post('/cart/addProductToCart',data,(results) =>{
                if (results=='1'){
                    alert("添加成功")
                }
            },'text');
        }

        /**
         * 减少数量
         * @param x
         */
        function decrease(x){
            var $eleInputNumber= $(x).parent().children('input');
            if ($eleInputNumber.val()>1){
                $eleInputNumber.val(parseInt($eleInputNumber.val())-1);
            }
        }

        /**
         * 减少数量
         * @param x
         */
        function increase(x){
            var $eleInputNumber= $(x).parent().children('input');
            $eleInputNumber.val(parseInt($eleInputNumber.val())+1);
        }
        function Submit(type){
            var C = confirm('确认下单?系统将即时扣款');
            if(!C){
                return false;
            }
            $('.daui_loading').show();
            $.ajax({
                url:'',
                type:'POST',
                dataType:"json",
                data:$('#mform'+type).serialize(),
                success: function(data){
                    $('.daui_loading').hide();
                    if(data.code == 1)
                    {
                        window.location.href="https://www.gxmyvips.com/cart/order/"+data.oid;
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
    </script>
</body>
</html>
