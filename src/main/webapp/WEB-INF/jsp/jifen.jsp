<%--
  Created by IntelliJ IDEA.
  User: 杨梦赢
  Date: 2018/11/5
  Time: 19:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

    <div class="daui_col" id="personalPocketRecord">
        <div class="top">
            <div class="title">
                <span class="daui_icon1"></span>
                <span>积分钱包</span>
            </div>
            <div class="parme">
                <span>205.00</span>
            </div>
            <div class="btns">
                <div>
                    <a href="https://www.gxmyvips.com/jifen/tran" class="daui_btn medium blue">积分转账</a>
                </div>
            </div>
        </div>

        <div class="wrap">
            <table class="daui_table">
                <thead><tr>
                    <th width="150">时间</th>
                    <th>类型</th>
                    <th>金额</th>
                    <th>关联会员</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                <td colspan="4" align="center">无购买记录</td>
                </tr>
                </tbody>
            </table>

            <div class="daui_pages">
                <div class="l">总 4 条，共 1 页</div>
                <div class="r">
                    <a class="now">1</a>            </div>
            </div>
        </div>
    </div>

</body>
<script>
    var SHOPPINGMETHOD="3"//3：商品消费，4：退款
    var POINTORCASH='2'//1:现金购买，2：积分购买
    /**
     * 进入网页后自动加载
     */
    $(() =>{
        searchAllPocketRecord()
    });
    function searchAllPocketRecord() {
        let data={};
        data.pointOrCash=POINTORCASH;
        $.get('/pocketRecord/findPocketRecordByWhere',data,function (results) {
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
