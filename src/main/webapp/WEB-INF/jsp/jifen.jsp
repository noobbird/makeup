<%--
  Created by IntelliJ IDEA.
  User: 杨梦赢
  Date: 2018/11/5
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="true"%>
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

<div class="daui_col" id="personalPocketRecord">
    <div class="top">
        <div class="title">
            <span class="daui_icon1"></span>
            <span>积分记录</span>
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
    var SHOPPINGMETHOD="3"//3：商品消费，4：退款
    var POINTORCASH='2'//1:现金购买，2：积分购买
    var TOTAL_PAGE;
    /**
     * 进入网页后自动加载
     */
    $(() =>{
        setPages();
        $('#firstPage').click(() =>{
            $('#currentPage').text(1)
            let data = {};
            data.firstIndex=0;
            data.pageSize=$('#pageSize_select').val();
            data.pointOrCash=POINTORCASH;
            searchAllPocketRecord(data);
        });
        $('#finalPage').click(() =>{
            $('#currentPage').text(TOTAL_PAGE);
            var size=parseInt($('#pageSize_select').val());
            let data = {};
            data.firstIndex=(TOTAL_PAGE-1)*size;
            data.pageSize=size;
            data.pointOrCash=POINTORCASH;
            searchAllPocketRecord(data);
        });
        $('#lastPage').click(() =>{
            let data = {};
            var current=parseInt($('#currentPage').text());
            var size=parseInt($('#pageSize_select').val());
            if (current>1){
                $('#currentPage').text(current-1)
                data.firstIndex=(current-2)*size;
                data.pageSize=size;
                data.pointOrCash=POINTORCASH;
                searchAllPocketRecord(data);
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
                data.pointOrCash=POINTORCASH;
                searchAllPocketRecord(data);
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
            data.pointOrCash=POINTORCASH;
            searchAllPocketRecord(data);
        });
    });
    function setPages() {
        let data={};
        data.pointOrCash=POINTORCASH;
        $.post('../pocketRecord/getTotalRowPocketRecordByWhere',data,(results) =>{
            $('#totalRow').text(results.totalRow);
            $('#currentPage').text(results.currentPage);
            $('#totalPage').text(results.totalPage);
            TOTAL_PAGE=results.totalPage;

        },'json');
        let params = {};
        params.firstIndex=0;
        params.pageSize="10";
        params.pointOrCash=POINTORCASH;
        searchAllPocketRecord(params);
    }

    function searchAllPocketRecord(params) {
        $.get('../pocketRecord/findPocketRecordByWhere',params,function (results) {
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
