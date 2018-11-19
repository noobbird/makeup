<%--
  Created by IntelliJ IDEA.
  User: 杨梦赢
  Date: 2018/11/5
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css?20180831" />
    <link rel="stylesheet" type="text/css" href="../css/common.css" />
    <link rel="stylesheet" type="text/css" href="../css/dwui.css?20180831" />
    <script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
    <script src="../js/script.js?20180831"></script>
</head>
<body>

    <div class="daui_col" id="personalWallet">
        <div class="top">
            <div class="title">
                <span class="daui_icon1"></span>
                <span>MY103821</span>
            </div>
            <div class="parme">
                <span>杨贵芳</span>
            </div>
            <div class="btns">
                <div>
                    <a href="https://www.gxmyvips.com/wallet/tran" class="daui_btn medium blue">转账</a>
                    <a href="https://www.gxmyvips.com/wallet/pick" class="daui_btn medium blue">提现</a>
                    <a href="https://www.gxmyvips.com/wallet/change" class="daui_btn medium blue">转积分</a>
                </div>
            </div>
        </div>

        <div class="wrap" >
            <table class="daui_table">
                <tbody><tr>
                    <th>资金钱包</th>
                    <th>购物积分</th>
                    <th>回本奖金</th>
                    <th>累计奖金</th>
                </tr>
                <tr>
                    <td class="c">-200.00</td>
                    <td class="c">205.00</td>
                    <td class="c">0.00</td>
                    <td class="c">0.00</td>
                </tr>
                </tbody></table>
        </div>

    </div>


    <div class="daui_col" id="personalPocketRecord">
        <div class="top">
            <div class="title">
                <span class="daui_icon1"></span>
                <span>资金记录</span>
            </div>
            <div class="parme">
                <span>不包含奖金数据</span>
            </div>
            <div class="btns">
                <div>
                </div>
            </div>
        </div>

        <div class="wrap">
            <table class="daui_table">
                <thead><tr>
                    <th width="20%">时间</th>
                    <th width="20%">类型</th>
                    <th width="20%">购买方式</th>
                    <th width="20%">金额</th>
                    <th width="20%">关联会员</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td colspan="4" align="center">无购买记录</td>
                </tr>
                </tbody>
            </table>

            <div class="daui_pages">
                <div class="l">总 0 条，共 0 页</div>
                <div class="r">
                    <a>没有相关记录</a>            </div>
            </div>
        </div>
    </div>


</body>
<script>
var SHOPPINGMETHOD="3"//3：商品消费，4：退款
var POINTORCASH='1'//1:现金购买，2：积分购买
    /**
     * 进入网页后自动加载
     */
    $(() =>{
        searchAllPocketRecord()
    });
    function searchAllPocketRecord() {
        let data={};
        data.pointOrCash=POINTORCASH;
        $.get('../pocketRecord/findPocketRecordByWhere','',function (results) {
            var str="";
            for(pocketRecord of results){
                var pocketStatus=pocketRecord.type;
                str +=`
                    <tr>
                    <td class="c" hidden="true">${ pocketRecord.id}</td>
                    <td class="c" width="150">${ pocketRecord.stringTime}</td>
                    <td class="c">${ pocketRecord.typeName}</td>
                    <td class="c">${ pocketRecord.pointOrCashName}</td>`;

                    if (pocketStatus==SHOPPINGMETHOD){
                        str +=`
                            <td class="c">-${ pocketRecord.amount}</td>
                            <td class="c">${ pocketRecord.relatedVipid}</td>
                        </tr>`;
                    }else {
                        str +=`
                            <td class="c">+${ pocketRecord.amount}</td>
                            <td class="c">${ pocketRecord.relatedVipid}</td>
                        </tr>`;
                    }
            }
            if (str!=''){

                $('#personalPocketRecord tbody').html(str);
            }

        },'json');
    }
</script>
</html>
