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
        <div id="success" class="alert alert-success" style="height: 30px;padding-top: 3px; display: none">
            <a href="#" class="close" >&times;</a>
            <strong>修改成功！</strong>
        </div>
        <div id="fail" class="alert alert-warning" style="height: 30px;padding-top: 3px; display: none" >
            <a href="#" class="close" >&times;</a>
            <strong>修改失败！</strong>您的网络连接可能有问题。
        </div>
        <div class="modal" id="myModal">
            <div class="modal-form" style="margin-top: 100px">
                <div class="modal-content" style="margin: auto;max-width: 600px" >
                    <div class="modal-header">
                        会员信息修改
                    </div>
                    <div class="modal-body">
                        <form class="daui_form" id="mForm" style="max-width: 600px; margin: auto">
                            <div class="line">
                                <p class="title">会员ID</p>
                                <div class="inputs">
                                    <input type="text"  maxlength="32" value="杨梦赢" name="vid" class="daui_input" readonly>
                                </div>
                            </div>
                            <div class="line">
                                <p class="title">姓名</p>
                                <div class="inputs">
                                    <input type="text"  maxlength="32" value="杨梦赢" name="vName" class="daui_input" >
                                </div>
                            </div>

                            <div class="line">
                                <p class="title">手机号码</p>
                                <div class="inputs">
                                    <input type="text" id="Ipt_mobile" value="18628909429" name="phone"  maxlength="32" class="daui_input">
                                </div>
                                <p class="tips"></p>
                            </div>
                            <div class="line">
                                <p class="title">代理等级</p>
                                <div class="inputs">
                                    <input type="text" maxlength="32" value="二级" name="vClass" class="daui_input" >
                                </div>
                            </div>
                            <div class="line">
                                <p class="title">推荐人</p>
                                <div class="inputs">
                                    <input type="text" maxlength="32"  value="马走日" name="recommendVid" class="daui_input" >
                                </div>
                            </div>
                            <div class="line">
                                <p class="title">推荐人姓名</p>
                                <div class="inputs">
                                    <input type="text" maxlength="32"  value="马走日" name="recommendPerson" class="daui_input" >
                                </div>
                            </div>
                            <div class="line">
                                <p class="title">地址</p>
                                <div class="inputs">
                                    <input type="text"  maxlength="32" value="黄金海岸二号" name="address" class="daui_input" >
                                </div>
                            </div>
                            <div class="line">
                                <p class="title">收款银行</p>
                                <div class="inputs">
                    <span class="daui_select bank_select">
                        <select name="bankName">
                            <option value="中国工商银行">中国工商银行</option>
                            <option value="中国建设银行">中国建设银行</option>
                            <option value="中国银行">中国银行</option>
                            <option value="中国农业银行">中国农业银行</option>
                            <option value="default" selected>默认</option>
                        </select>
                    </span>
                                </div>
                            </div>
                            <div class="line">
                                <p class="title">收款卡号</p>
                                <div class="inputs">
                                    <input type="text" name="bankNumber" value="6217003810026780299" class="daui_input">
                                </div>
                                <p class="tips">
                                </p>
                            </div>
                        </form>

                    </div>
                    <div class="modal-footer"><button class="btn btn-info modify-dimiss" data-dismiss="modal" style="margin-right: 250px">取消</button>
                        <button class="btn btn-info modify-certain" data-dismiss="modal" style="margin-right: 100px">确认</button>
                    </div>

                </div>
            </div>
        </div>
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
                <th>操作</th>
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
                <td class="ci">   <button class="btn btn-primary form-control modify-vip" data-toggle="modal" data-target="#myModal">
                    修改
                </button></td>

            </tr>
            <%
                }
            %>
            </tbody></table>
                </div>
<script src="/js/vipmanage.js"></script>
    </div>
</div>

</body>
</html>
