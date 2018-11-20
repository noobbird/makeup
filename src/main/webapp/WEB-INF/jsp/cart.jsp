<%--
  Created by IntelliJ IDEA.
  User: 杨梦赢
  Date: 2018/11/5
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"   %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="css/style.css?20180831" />
    <link rel="stylesheet" type="text/css" href="css/common.css" />
    <link rel="stylesheet" type="text/css" href="css/dwui.css?20180831" />
    <script type="text/javascript" src="js/jquery-3.3.1.js"></script>
    <script src="js/script.js?20180831"></script>
</head>
<body>
<div class="novBar">
    <button name="cashShopping" onclick="shoppingMethod(1)">现金购物</button>
    <button name="pointShopping" onclick="shoppingMethod(2)">积分购物</button>
</div>

<div class="daui_col" id="cashShoppingDiv">
    <div class="top">
        <div class="title">
            <span class="daui_icon1"></span>
            <span>现金购物区</span>
        </div>
        <div class="parme">
            您的钱包:<span id="banlance_span"></span>
        </div>
        <div class="btns">
            <div>
                <a href="https://www.gxmyvips.com/cart/orders" class="daui_btn white medium">订单记录</a>
            </div>
        </div>
    </div>
    <div class="wrap">
        <form id="cartCashForm">
            <table class="daui_table">
                <thead><tr>
                    <th width="5%">选择</th>
                    <th width="20%">商品名</th>
                    <th width="20%">价格/RMB</th>
                    <th width="20%">积分价格</th>
                    <th width="10%">购买数量</th>
                </tr>
                </thead>
                <tbody></tbody>
            </table>
            <input type="hidden" name="type" value="1">
        </form>
        <p style="text-align: right; padding-top: 5px;">
            <input type="button" class="daui_btn red big" onclick="deleteCart()" value="删除"/>
            <input type="button" class="daui_btn blue big" onclick="purchase()" value="购买"/>
        </p>
    </div>

</div>

    <div class="daui_col" id="pointShoppingDiv">
        <div class="top">
            <div class="title">
                <span class="daui_icon1"></span>
                <span>积分购物区</span>
            </div>
            <div class="parme">
               您的积分: <span id="point_span"></span>
            </div>
            <div class="btns">
                <div>
                    <a href="https://www.gxmyvips.com/cart/orders" class="daui_btn white medium">订单记录</a>
                </div>
            </div>
        </div>
        <div class="wrap">
            <form id="cartPointForm">
                <table class="daui_table">
                    <thead><tr>
                        <th width="5%">选择</th>
                        <th width="20%">商品名</th>
                        <th width="20%">价格/RMB</th>
                        <th width="20%">积分价格</th>
                        <th width="10%">购买数量</th>
                    </tr>
                    </thead>
                    <tbody></tbody>
                </table>
                <input type="hidden" name="type" value="1">
            </form>
            <p style="text-align: right; padding-top: 5px;">
                <input type="button" class="daui_btn" onclick="deleteCart()" value="删除"/>
                <input type="button" class="daui_btn blue big" onclick="purchase()" value="购买"/>
            </p>
        </div>

    </div>

    <script>
        $(() =>{
            searchAllCart()
            shoppingMethod(1)
            getLoginVip()
        });

        function getLoginVip() {
            $.get('vip/getLoginVip','',(results) =>{
                $("#banlance_span").text(results.banlance);
                $('#point_span').text(results.points);
            },'json');
        }

        /**
         * 菜单切换
         * */
        function shoppingMethod(x) {
            //现金购物
            if (x==1){
                $('.novBar button[name="pointShopping"]').css("background","#1eb9ff");
                $('.novBar button[name="cashShopping"]').css("background","#0d97ff");
                $('#pointShoppingDiv').css("display","none");
                $('#cashShoppingDiv').css("display","inline");
            }else{     //积分购物
                $('.novBar button[name="cashShopping"]').css("background","#1eb9ff");
                $('.novBar button[name="pointShopping"]').css("background","#0d97ff");
                $('#cashShoppingDiv').css("display","none");
                $('#pointShoppingDiv').css("display","inline");
            }
        }

        function purchase() {
            var $eleCheckBox=$('#cartCashForm').find('input[name="checkbox"]:checked');
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
                data.shoppingMethod="1"
                $.post('cart/purchase',data,(results) =>{
                    // console.log(results)
                    if (results=='1'){
                        alert("购买成功")
                        getLoginVip()
                    } else if (results=='0') {
                        alert("发生异常，购买失败")
                    }else {
                        alert('余额不足')
                    }
                },'text');
            }

        }
        function searchAllCart() {
            $.get('cart/findCartByWhere','',function (results) {
                var str="";
                for(cart of results){
                    str +=`
                     <tr>
                        <td hidden="true" name="oId">${ cart.oId}</td>
                        <td> <input type="checkbox" value="${ cart.oId}" name="checkbox"> </td>
                        <td hidden="true"> <input type="hidden" value="${ cart.vipId}" name="checkbox"> </td>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/32');" style="vertical-align: top">
                                <img src="images/1.jpg">
                                &nbsp;${cart.productName}</a>
                        </td>
                        <td class="c">${ cart.cashPrice}</td>
                         <td class="c">${ cart.pointPrice}</td>
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
                $('#cartCashForm tbody').html(str);
                $('#cartPointForm tbody').html(str);

            },'json');
        }

        /**
         * 减少数量
         * @param x
         */
        function decrease(x){
            var $eleInputNumber= $(x).parent().children('input');
            var num =parseInt($eleInputNumber.val());
            if (num>1){
                num=parseInt(num-1);
                $eleInputNumber.val(num);
                let data={};
                data.oId=$(x).parents('tr').find('td[name="oId"]').text();
                data.productCount=num;
                updateCart(data);
            }
        }

        /**
         * 增加数量
         * @param x
         */
        function increase(x){
            var $eleInputNumber= $(x).parent().children('input');
            var num =parseInt($eleInputNumber.val());
            $eleInputNumber.val(parseInt(num+1));
            let data={};
            data.oId=$(x).parents('tr').find('td[name="oId"]').text();
            data.productCount=parseInt(num+1);
            updateCart(data);
        }

        function updateCart(data) {
            $.get('cart/updateCartCount',data,(results) =>{
                console.log(results);
            },'text');
        }
    </script>
</body>
</html>
