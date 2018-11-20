<%--
  Created by IntelliJ IDEA.
  User: 杨梦赢
  Date: 2018/11/5
  Time: 19:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="true" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="css/style.css?20180831" />
    <link rel="stylesheet" type="text/css" href="css/common.css" />
    <link rel="stylesheet" type="text/css" href="css/dwui.css?20180831" />
    <script type="text/javascript" src="js/jquery-3.3.1.js"></script>
    <script src="js/script.js?20180831"></script>
    <script src="js/common.js"></script>
</head>
<body>
    <div class="daui_col" id="personalPocketRecord">

        <div class="wrap">
            <table class="daui_table">
                <thead><tr>
                    <th width="150">订单号</th>
                    <th width="20%">产品名</th>
                    <th width="20%">时间</th>
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
                    <select id="pageSize_select">
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

    var TOTAL_PAGE;
    /**
     * 进入网页后自动加载
     */
    $(() =>{
        setPages()
        $('#firstPage').click(() =>{
            $('#currentPage').text(1)
            let data = {};
            data.firstIndex=0;
            data.pageSize=$('#pageSize_select').val();

            searchShoppingRecord(data);
        });
        $('#finalPage').click(() =>{
            $('#currentPage').text(TOTAL_PAGE);
            var size=parseInt($('#pageSize_select').val());
            let data = {};
            data.firstIndex=(TOTAL_PAGE-1)*size;
            data.pageSize=size;
            searchShoppingRecord(data);
        });
        $('#lastPage').click(() =>{
            let data = {};
            var current=parseInt($('#currentPage').text());
            var size=parseInt($('#pageSize_select').val());
            if (current>1){
                $('#currentPage').text(current-1)
                data.firstIndex=(current-2)*size;
                data.pageSize=size;
                searchShoppingRecord(data);
            }
        });
        $('#nextPage').click(() =>{
            let data = {};
            var current=parseInt($('#currentPage').text());
            var size=parseInt($('#pageSize_select').val());
            if (current<TOTAL_PAGE){
                $('#currentPage').text(current+1)
                data.firstIndex=current*size;
                data.pageSize=size;
                searchShoppingRecord(data);
            }
        });
        $('#pageSize_select').click(() =>{
            var current=parseInt($('#currentPage').text());
            var size=parseInt($('#pageSize_select').val());
            var row = parseInt($('#totalRow').text());
            if (row%size>0){
                TOTAL_PAGE=parseInt(row/size+1)
            } else{
                TOTAL_PAGE=parseInt(row/size);
            }
            $('#totalPage').text(TOTAL_PAGE);
            let data = {};
            data.firstIndex=(current-1)*size;
            data.pageSize=size;
            searchShoppingRecord(data);
        });
    });
    
    function setPages() {
        $.post('shoppingRecord/getTotalRowCountByWhere','',(results) =>{
            $('#totalRow').text(results.totalRow);
            $('#currentPage').text(results.currentPage);
            $('#totalPage').text(results.totalPage);
            TOTAL_PAGE=results.totalPage;

        },'json');
        let data = {};
        data.firstIndex=0;
        data.pageSize="10";
        searchShoppingRecord(data);
    }
    function searchShoppingRecord(data) {

        $.post('shoppingRecord/selectShoppingRecordByWhere',data,function (results) {
            var str="";
            for(shoppingRecord of results){
                var time=formatDate(shoppingRecord.addTime);
                str +=`
                    <tr>
                    <td class="c" hidden="true">${ shoppingRecord.oId}</td>

                    <td class="c" hidden="true">${ shoppingRecord.productId}</td>
                    <td class="c" width="150">${ shoppingRecord.oId}</td>
                    <td class="c" width="150">${ shoppingRecord.productName}</td>
                    <td class="c">${ time}</td>
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
