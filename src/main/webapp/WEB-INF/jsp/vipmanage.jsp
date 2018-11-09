<%@ page import="java.util.List" %>
<%@ page import="com.yang.domain.Vip" %><%--
  Created by IntelliJ IDEA.
  User: 杨梦赢
  Date: 2018/11/8
  Time: 10:52
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
            <span>会员列表</span>
        </div>
        <div class="parme">
            <span></span>
        </div>
        <%--<button class="btn btn-primary form-control" data-toggle="modal" data-target="#myModal">弹出模态框</button>--%>
        <%--<div class="modal " id="myModal">--%>
            <%--<div class="modal-form">--%>
                <%--<div class="modal-content">--%>
                    <%--<div class="modal-header">--%>
                        <%--<button class="close" data-dismiss="modal" aria-hidden="true">&times;</button>--%>
                        <%--标题--%>
                    <%--</div>--%>
                    <%--<div class="modal-body">--%>

                    <%--</div>--%>
                    <%--<div class="modal-footer"><button class="btn btn-info" data-dismiss="modal">确认</button></div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <div class="btns">
            <div>
                <a href="#" onclick="jump('addvip')" >新增 </a>
            </div>
        </div>
        </div>
    </div>
    <div class="wrap">

        <table class="daui_table">
            <tbody><tr>
                <th width="80">序号</th>
                <th>会员ID</th>
                <th>会员名字</th>
                <th>电话</th>
                <th>代理级别</th>
                <th>地址</th>
                <th>注册时间</th>
                <th>推荐人ID</th>
                <th>推荐人姓名</th>
                <th>现金余额</th>
                <th>积分余额</th>
                <th>银行</th>
                <th>银行卡号</th>
            </tr>

                    <%
            List list = (List)request.getAttribute("vipList");
            for(int i=0;i<list.size();i++)
            {
                Vip vip = (Vip)list.get(i);
        %>
            <tr>
                <td class="c"><%=i+1%></td>
                <td class="c"><%=vip.getVid()%></td>
                <td class="c"><%=vip.getvName()%></td>
                <td class="c"><%=vip.getPhone()%></td>
                <td class="c"><%=vip.getvClass()%></td>
                <td class="c"><%=vip.getAddress()%></td>
                <td class="c"><%=vip.getRegisteTime()%></td>
                <td class="c"><%=vip.getRecommendVid()%></td>
                <td class="c"><%=vip.getRecommendPerson()%></td>
                <td class="c"><%=vip.getBanlance()%></td>
                <td class="c"><%=vip.getPoints()%></td>
                <td class="c"><%=vip.getBankName()%></td>
                <td class="c"><%=vip.getBankNumber()%></td>

            </tr>
            <%
                }
            %>
            </tbody></table>
                </div>
    </div>
</div>
</body>
</html>
