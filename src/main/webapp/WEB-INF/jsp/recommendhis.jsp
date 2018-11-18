<%--
  Created by IntelliJ IDEA.
  User: 杨梦赢
  Date: 2018/11/18
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css?20180831" />
    <link rel="stylesheet" type="text/css" href="/css/dwui.css?20180831" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css?" />
    <script src="/js/jquery.min.js?20180831"></script>
    <script src="/js/script.js?20180831"></script>
    <script src="/js/bootstrap.js"></script>
</head>
<body>
<div class="daui_col">
    <div class="top">
        <div class="title">
            <span class="daui_icon1"></span>
            <span>推荐历史</span>
        </div>
    </div>
</div>
<div class="daui_col">
    <div class="wrap">

        <table class="daui_table">
            <thead>
            <tr>
                <th width="80">序号</th>
                <th>推荐人id</th>
                <th>推荐人名字</th>
                <th>被推荐人id</th>
                <th>被推荐人名字</th>
                <th>推荐时间</th>
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
    function formatDate(time){
        var date = new Date(time);

        var year = date.getFullYear(),
            month = date.getMonth()+1,//月份是从0开始的
            day = date.getDate(),
            hour = date.getHours(),
            min = date.getMinutes(),
            sec = date.getSeconds();
        var newTime = year + '-' +
            (month < 10? '0' + month : month) + '-' +
            (day < 10? '0' + day : day) + ' ' +
            (hour < 10? '0' + hour : hour) + ':' +
            (min < 10? '0' + min : min) + ':' +
            (sec < 10? '0' + sec : sec);

        return newTime;
    }
    var alldata ='';
    var pagesize = 14;
    function putdata(page, json) {
        $('tbody').empty();
        var start = (page - 1) * pagesize;
        var end = start + pagesize >= json.length ? json.length : start + pagesize;
        var index = 1;
        for (var i = start; i < end; i++) {
            var tr = '<tr>'
            var value = json[i];
            tr += "<td class='c'>" + index + "</td>";
            tr += "<td class='c'>" + value.vid + "</td>";
            tr += "<td class='c'>" + value.vName + "</td>";
            tr += "<td class='c'>" + value.relatedVid + "</td>";
            tr += "<td class='c'>" + value.relatedVname + "</td>";
            tr += "<td class='c'>" + formatDate(new Date(value.recommendTime)) + "</td>";
            tr += '</tr>'
            $('tbody').append(tr);
            index += 1;
        }
        $('.current').text("当前第" + page + "页")
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
    $(function(){
        $.ajax("/api/recommndhis",{
            method:"GET",
            dataType:"json",
            success:function (rcmdData) {
                // alert(rcmdData.length);
                alldata = rcmdData;
                pageindex(rcmdData.length);
                putdata(1, rcmdData);
            }
        })
    })
</script>
</body>
</html>
