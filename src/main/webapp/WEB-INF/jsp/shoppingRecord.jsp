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

        <div class="wrap">
            <table class="daui_table">
                <thead><tr>
                    <th width="150">订单号</th>
                    <th>时间</th>
                    <th>数量</th>
                    <th>单价</th>
                    <th>总价</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                <td colspan="4" align="center">无购买记录</td>
                </tr>
                </tbody>
            </table>

            <div class="daui_pages">

                <div class="l">
                    共 <span id="totalRow">20</span>条
                    <button id="firstPage">首页</button>
                    <button id="lastPage">上一页</button>
                    <span id="currentPage"></span>/
                    <span id="totalPage"></span>
                    <select>
                        <option value="10" selected="selected">10</option>
                        <option value="15">15</option>
                    </select>
                    <button id="nextPage">下一页</button>
                    <button id="finalPage">尾页</button>
                </div>
            </div>
        </div>
    </div>

</body>
<script>
    /**
     * 进入网页后自动加载
     */
    $(() =>{
        searchShoppingRecord()
        setPages()
    });
    
    function setPages() {
        $.get('/shoppingRecord/getTotalRowCountByWhere','',(results) =>{
            $('#totalRow').text(results.totalRow);
            $('#currentPage').text(results.currentPage);
            $('#totalPage').text(results.totalPage);

        },'json');
    }
    function searchShoppingRecord() {
        let data = {};
        data.firstIndex='1';
        data.pageSize="10";
        $.get('/shoppingRecord/selectShoppingRecordByWhere',data,function (results) {
            var str="";
            for(shoppingRecord of results){
                str +=`
                    <tr>
                    <td class="c" hidden="true">${ shoppingRecord.oId}</td>

                    <td class="c" hidden="true">${ shoppingRecord.productId}</td>
                    <td class="c" width="150">${ shoppingRecord.oId}</td>
                    <td class="c">${ shoppingRecord.addTime}</td>
                    <td class="c">${ shoppingRecord.productCount}</td>
                    <td class="c">${ shoppingRecord.productPrice}</td>
                    <td class="c">${ shoppingRecord.totalPrice}</td>
                        </tr>`;
            }
            if (str!=''){

                $('#personalPocketRecord tbody').html(str);
            }

        },'json');
    }
</script>
</html>