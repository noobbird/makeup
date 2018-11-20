<%--
  Created by IntelliJ IDEA.
  User: 杨梦赢
  Date: 2018/11/5
  Time: 19:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <div class="daui_col">
        <div class="top">
            <div class="title">
                <span class="daui_icon1"></span>
                <span>团队业绩</span>
            </div>
            <div class="parme">
                <span></span>
            </div>
            <div class="btns">
                <div>
                </div>
            </div>
        </div>



        <div class="wrap">

            <table class="daui_table">
                <tbody><tr>
                    <th width="80">项目</th>
                    <th>总业绩</th>
                    <th>左区业绩</th>
                    <th>右区业绩</th>
                    <th>左区量碰剩余</th>
                    <th>右区量碰剩余</th>
                </tr>
                <tr>
                    <th>业绩</th>
                    <td class="c">0.00</td>
                    <td class="c">0.00</td>
                    <td class="c">0.00</td>
                    <td class="c">0.00</td>
                    <td class="c">0.00</td>
                </tr>
                </tbody></table>
        </div>
    </div>

    <div class="daui_col">
        <div class="top">
            <div class="title">
                <span class="daui_icon1"></span>
                <span>团队名录</span>
            </div>
            <div class="parme">
                <span></span>
            </div>
            <div class="btns">
                <div>
                </div>
            </div>
        </div>



        <div class="wrap">

            <table class="daui_table">
                <tbody><tr>
                    <th width="80">点位</th>
                    <th>左侧</th>
                    <th>右侧</th>
                    <th>左侧最远</th>
                    <th>右侧最远</th>
                    <th>上级</th>
                </tr>
                <tr>
                    <th>编号</th>
                    <td class="c"></td>
                    <td class="c"></td>
                    <td class="c"></td>
                    <td class="c"></td>
                    <td class="c">MY915161</td>
                </tr>
                </tbody></table>
        </div>
    </div>

    <div class="daui_col">
        <div class="top">
            <div class="title">
                <span class="daui_icon1"></span>
                <span>我的推荐</span>
            </div>
            <div class="parme">
                <span></span>
            </div>
            <div class="btns">
                <div>
                </div>
            </div>
        </div>



        <div class="wrap">

            <table class="daui_table recmd">
                <thead>
                <tr>
                    <th width="120">ID</th>
                    <th>姓名</th>
                    <th>级别</th>
                    <th>日期</th>
                </tr>
                </thead>
                <tbody>
                </tbody></table>

            <div class="daui_pages">
                <div class="l">总 0 条，共 0 页</div>
                <div class="r">
                    <a>没有相关记录</a>            </div>
            </div>
        </div>
    </div>
    <div class="page-index">
        <div class="all"></div>
        <div class="current"></div>
        <div  class="indiv"></div>
    </div>
<script>
    $(function(){
        var alldata ='';
        var pagesize = 6;
        function putdata(page, json) {
            $('tbody').empty();
            var start = (page - 1) * pagesize;
            var end = start + pagesize >= json.length ? json.length : start + pagesize;
            var index = 1;
            for (var i = start; i < end; i++) {
                var tr = '<tr>'
                var product = json[i];
                var tr = '<tr>';
                tr += '<td>' + product.vid +'</td>';
                tr += '<td>' + product.relatedVip + '</td>';
                tr += '<td>' + product.awardTime + '</td>';

                tr += '</tr>';
                $('.recmd').append(tr);
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
        $.ajax("home/recmdhis",{
            method:"GET",
            dataType:"json",
            success:function(data){
                alldata = data;
                pageindex(data.length);
                putdata(1, data);
            }
        })
    })
</script>
</body>
</html>
