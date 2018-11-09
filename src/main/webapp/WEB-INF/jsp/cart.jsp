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
    <link rel="stylesheet" type="text/css" href="/css/common.css" />
    <link rel="stylesheet" type="text/css" href="/css/dwui.css?20180831" />
    <script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
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
            <form id="cartForm">
                <table class="daui_table">
                    <thead><tr>
                        <th width="20">选择</th>
                        <th width="80">商品</th>
                        <th width="80">价格</th>
                        <th width="80">销量</th>
                        <th width="80">人气</th>
                        <th width="130">购买</th>
                    </tr>
                    </thead>
                    <tbody></tbody>
                </table>
                <input type="hidden" name="type" value="1">
            </form>
            <p style="text-align: right; padding-top: 5px;">
                <input type="button" class="daui_btn blue big" onclick="purchase()" value="购买"/>
            </p>
        </div>

    </div>

    <script>
        $(() =>{
            searchAllCart()
        });

        function purchase() {
            var $eleCheckBox=$('#cartForm').find('input[name="checkbox"]:checked');
            if ($eleCheckBox.length<1){
                alert("请选择购买的商品")
                return;
            }
            var cartId='';
            for(var i=0; i<$eleCheckBox.length; i++){
                if (i==0){
                    cartId=$eleCheckBox.eq(i).val();
                }else{
                    cartId +=','+$eleCheckBox.eq(i).val();
                }
                // console.log(cartId);
                let data={};
                data.oId=cartId;
                $.post('/cart/purchase',data,(results) =>{
                    // console.log(results)
                    if (results=='1'){
                        alert("购买成功")
                    } else if (results=='0') {
                        alert("发生异常，购买失败")
                    }else {
                        alert('余额不足')
                    }
                },'text');
            }

        }
        function searchAllCart() {
            $.get('/cart/findCartByWhere','',function (results) {
                var str="";
                for(cart of results){
                    str +=`
                     <tr>
                        <td hidden="true">${ cart.oId}</td>
                        <td> <input type="checkbox" value="${ cart.oId}" name="checkbox"> </td>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/32');" style="vertical-align: top">
                                <img src="../images/1.jpg">
                                &nbsp;牵雅（花蜜柔肤水)</a>
                        </td>
                        <td class="c">${ cart.vipId}</td>
                        <td class="c">${ cart.productCount}</td>
                        <td class="c"></td>
                        <td class="c">
                            <div class="daui_numbtns" name="Numbtns_32" style="margin: 0 auto">
                                <i class="disabled" onclick="decrease(this)">-</i>
                                <input type="number" max="99" min="1" value="${ cart.productCount}" name="productCount">
                                <i class="" onclick="increase(this)" >+</i>
                            </div>
                        </td>
                    </tr>
                    `;
                }
                $('#cartForm tbody').html(str);

            },'json');
        }

        /**
         * 减少数量
         * @param x
         */
        function decrease(x){
            var $eleInputNumber= $(x).parent().children('input');
            if ($eleInputNumber.val()>0){
                $eleInputNumber.val(parseInt($eleInputNumber.val())-1);
            }
        }

        /**
         * 增加数量
         * @param x
         */
        function increase(x){
            var $eleInputNumber= $(x).parent().children('input');
            $eleInputNumber.val(parseInt($eleInputNumber.val())+1);
        }
    </script>
</body>
</html>
