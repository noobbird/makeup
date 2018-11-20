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
    <link rel="stylesheet" type="text/css" href="css/style.css?20180831" />
    <link rel="stylesheet" type="text/css" href="css/dwui.css?20180831" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css?" />
    <script src="js/jquery.min.js?20180831"></script>
    <script src="js/script.js?20180831"></script>
    <script src="js/bootstrap.js"></script>
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
                                    <input type="text"  maxlength="32" value="" name="vid" class="daui_input" readonly>
                                </div>
                            </div>
                            <div class="line">
                                <p class="title">姓名</p>
                                <div class="inputs">
                                    <input type="text"  maxlength="32" value="" name="vName" class="daui_input" >
                                </div>
                            </div>

                            <div class="line">
                                <p class="title">手机号码</p>
                                <div class="inputs">
                                    <input type="text" id="Ipt_mobile" value="" name="phone"  maxlength="32" class="daui_input">
                                </div>
                                <p class="tips"></p>
                            </div>
                            <div class="line">
                                <p class="title">代理等级</p>
                                <div class="inputs">
                                    <input type="text" maxlength="32" value="" name="vClass" class="daui_input" >
                                </div>
                            </div>
                            <div class="line">
                                <p class="title">推荐人</p>
                                <div class="inputs">
                                    <input type="text" maxlength="32"  value="" name="recommendVid" class="daui_input" >
                                </div>
                            </div>
                            <div class="line">
                                <p class="title">推荐人姓名</p>
                                <div class="inputs">
                                    <input type="text" maxlength="32"  value="" name="recommendPerson" class="daui_input" >
                                </div>
                            </div>
                            <div class="line">
                                <p class="title">地址</p>
                                <div class="inputs">
                                    <input type="text"  maxlength="32" value="" name="address" class="daui_input" >
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
                                    <input type="text" name="bankNumber" value="" class="daui_input">
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
            <thead>
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
            </thead>
            <tbody>

            </tbody></table>
                </div>
<div class="page-index">
    <div class="all"></div>
    <div class="current"></div>
    <div  class="indiv"></div>
</div>
<%--<script src="js/vipmanage.js"></script>--%>
    </div>
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
    $(function(){
        var allvip ='';
        var pagesize = 8;
        function putdata(page, json) {
            $('tbody').empty();
            var start = (page - 1) * pagesize;
            var end = start + pagesize>=json.length?json.length:start + pagesize;
            var index = 1;
            for (var i = start; i < end; i++) {
                var tr = '<tr>'
                var value = json[i];
                tr += "<td class='c'>" + index + "</td>";
                tr += "<td class='c'>" + value.vid + "</td>";
                tr += "<td class='c'>" + value.vName + "</td>";
                tr += "<td class='c'>" + value.phone + "</td>";
                tr += "<td class='c'>" + value.vClass + "</td>";
                tr += "<td class='c'>" + value.address + "</td>";
                tr += "<td class='c'>" + formatDate(value.registeTime) + "</td>";
                tr += "<td class='c'>" + value.recommendVid + "</td>";
                tr += "<td class='c'>" + value.recommendPerson+ "</td>";
                tr += "<td class='c'>" + value.banlance + "</td>";
                tr += "<td class='c'>" + value.points + "</td>";
                tr += "<td class='c'>" + value.bankName + "</td>";
                tr += "<td class='c'>" + value.bankNumber + "</td>";
                tr += "<td class='ci'><button class='btn btn-primary form-control modify-vip' data-toggle='modal' data-target='#myModal'> 修改</button></td>";
                tr += '</tr>'
                $('tbody').append(tr);
                index += 1;
            }
            $('.current').text("当前第"+page+"页");
            $(".ci").click(function (){
                $("#success").hide();
                $("#fail").hide();
                tds = $(this).closest('tr').find('td');
                var vid = tds.eq(1).text();
                var vname = tds.eq(2).text();
                var phone = tds.eq(3).text();
                var vclass = tds.eq(4).text();
                var address = tds.eq(5).text();
                var recommendVid = tds.eq(7).text();
                var recommendPerson = tds.eq(8).text();
                var bankName = tds.eq(11).text();
                var bankNumber = tds.eq(12).text();
                $("input[name='vid']").val(vid);
                $("input[name='vName']").val(vname);
                $("input[name='phone']").val(phone);
                $("input[name='vClass']").val(vclass);
                $("input[name='recommendVid']").val(recommendVid);
                $("input[name='recommendPerson']").val(recommendPerson);
                $("input[name='address']").val(address);
                $("select").find("option:selected").text(bankName);
                $("input[name='bankNumber']").val(bankNumber);
            });

            $(".modify-certain").click(function(){
                var vid = $("input[name='vid']").val();
                var vname = $("input[name='vName']").val();
                var phone = $("input[name='phone']").val();
                var vclass = $("input[name='vClass']").val();0
                var recommendVid = $("input[name='recommendVid']").val();
                var recommendPerson = $("input[name='recommendPerson']").val();
                var address = $("input[name='address']").val();
                var bankName = $("select").find("option:selected").text();
                // alert(bankName);
                var bankNumber = $("input[name='bankNumber']").val();


                $.ajax({
                    url:'modifyVip',
                    type:'POST',
                    dataType:"json",
                    data:$("#mForm").serialize(),
                    success: function(data){
                        if(data.code == 1){
                            $('#success').show();
                        }
                        tds.eq(2).text(vname);
                        tds.eq(3).text(phone);
                        tds.eq(4).text(vclass);
                        tds.eq(5).text(address);
                        tds.eq(7).text(recommendVid);
                        tds.eq(8).text(recommendPerson);
                        tds.eq(11).text(bankName);
                        tds.eq(12).text(bankNumber);

                    },
                    error:function(){
                        $('#fail').show();
                    }
                });
            })




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
                putdata(page, allvip);
            })


        }

        // $('.page').onclick(){
        //     $('tbody').empty();
        //     var start = (page-1)*pagesize;
        //     var end = start + pagesize;
        //     for(var i = start ; i < end; i++){
        //         var tr = '<tr> </tr>';
        //
        //     }
        //
        //
        // }

        $.ajax("api/getvips",{
            method:"GET",
            dataType:"json",
            success:function (vips) {
                allvip = vips;
                pageindex(vips.length);
                putdata(1, vips);
                // $.each(vips,function (index, value) {
                //     for(var key in value){
                //         alert(value[key]);
                //         putdata(0);
                //     }
                // })
            }

        })

    }
    )
</script>

</body>
</html>
