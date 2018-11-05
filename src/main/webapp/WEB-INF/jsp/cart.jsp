<%--
  Created by IntelliJ IDEA.
  User: 杨梦赢
  Date: 2018/11/5
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script type="text/javascript" src="/static/daui/js/numbtns.js?20180831"></script>

    <div class="daui_col">
        <div class="top">
            <div class="title">
                <span class="daui_icon1"></span>
                <span>积分购物区</span>
            </div>
            <div class="parme">
                <span>您的积分:205.00</span>
            </div>
            <div class="btns">
                <div>
                    <a href="https://www.gxmyvips.com/cart/orders" class="daui_btn white medium">订单记录</a>
                </div>
            </div>
        </div>



        <div class="wrap">
            <form id="mform1">
                <table class="daui_table">
                    <tbody><tr>
                        <th width="70">ID</th>
                        <th>商品</th>
                        <th width="140">价格</th>
                        <th width="80">销量</th>
                        <th width="80">人气</th>
                        <th width="130">购买</th>
                    </tr>
                    <tr>
                        <th>32</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/32');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201809/1536930655_845627.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;牵雅（花蜜柔肤水）						</a>
                        </td>
                        <td class="c">176.00积分</td>
                        <td class="c">28990</td>
                        <td class="c">5445</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_32" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[32]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_32")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>3</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/3');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201808/1535688214_409815.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;牵雅（花蜜氨基酸洁面膏）						</a>
                        </td>
                        <td class="c">187.00积分</td>
                        <td class="c">644</td>
                        <td class="c">2344</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_3" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[3]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_3")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>2</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/2');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201808/1535688315_143826.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;牵雅（花蜜晶润保湿乳）						</a>
                        </td>
                        <td class="c">209.00积分</td>
                        <td class="c">1311</td>
                        <td class="c">2784</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_2" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[2]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_2")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>4</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/4');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201808/1535688026_026937.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;牵雅（花蜜晶润保湿霜）						</a>
                        </td>
                        <td class="c">187.00积分</td>
                        <td class="c">3432</td>
                        <td class="c">4321</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_4" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[4]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_4")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>5</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/5');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201808/1535687866_864237.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;卡夫卡（透明质酸原液）						</a>
                        </td>
                        <td class="c">88.00积分</td>
                        <td class="c">4321</td>
                        <td class="c">5121</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_5" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[5]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_5")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>6</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/6');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201808/1535687723_504697.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;卡夫卡（焕颜活肤精华液）						</a>
                        </td>
                        <td class="c">88.00积分</td>
                        <td class="c">675</td>
                        <td class="c">976</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_6" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[6]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_6")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>7</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/7');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201808/1535688423_830264.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;卡肤卡（玻尿酸修复面膜贴）						</a>
                        </td>
                        <td class="c">132.00积分</td>
                        <td class="c">2131</td>
                        <td class="c">3123</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_7" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[7]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_7")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    </tbody></table>
                <input type="hidden" name="type" value="1">
            </form>
            <p style="text-align: right; padding-top: 5px;">
                <a href="javascript:Submit(1);" class="daui_btn blue big">购买</a>
            </p>
        </div>
    </div>

    <div class="daui_col">
        <div class="top">
            <div class="title">
                <span class="daui_icon1"></span>
                <span>现金购物区</span>
            </div>
            <div class="parme">
                <span>您的钱包:-200.00</span>
            </div>
            <div class="btns">
                <div>
                </div>
            </div>
        </div>



        <div class="wrap">

            <form id="mform2">
                <table class="daui_table">
                    <tbody><tr>
                        <th width="70">ID</th>
                        <th>商品</th>
                        <th width="140">价格</th>
                        <th width="80">销量</th>
                        <th width="80">人气</th>
                        <th width="130">购买</th>
                    </tr>
                    <tr>
                        <th>20</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/20');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201809/1536301781_081973.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;纳米齿雕牙齿美白(技术)						</a>
                        </td>
                        <td class="c">￥1000.00</td>
                        <td class="c">877</td>
                        <td class="c">899</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_20" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[20]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_20")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>23</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/23');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201809/1536306161_158076.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;三秒Ⅴ脸						</a>
                        </td>
                        <td class="c">￥390.00</td>
                        <td class="c">987</td>
                        <td class="c">996</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_23" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[23]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_23")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>28</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/28');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201809/1536397589_691478.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;童颜醉媄(祛皱)						</a>
                        </td>
                        <td class="c">￥400.00</td>
                        <td class="c">998</td>
                        <td class="c">875</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_28" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[28]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_28")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>17</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/17');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201809/1536299092_981650.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;魔幻精雕笔						</a>
                        </td>
                        <td class="c">￥200.00</td>
                        <td class="c">756</td>
                        <td class="c">899</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_17" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[17]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_17")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>9</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/9');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201809/1536292385_061328.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;腹博士_妊娠纹修复专家						</a>
                        </td>
                        <td class="c">￥1380.00</td>
                        <td class="c">435</td>
                        <td class="c">897</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_9" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[9]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_9")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>36</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/36');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201810/1540888329_108456.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;曙光新-决明籽修护眼贴膜       						</a>
                        </td>
                        <td class="c">￥100.00</td>
                        <td class="c">4532</td>
                        <td class="c">4233</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_36" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[36]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_36")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>27</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/27');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201809/1536397473_186370.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;童颜醉媄(填充)						</a>
                        </td>
                        <td class="c">￥360.00</td>
                        <td class="c">897</td>
                        <td class="c">887</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_27" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[27]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_27")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>34</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/34');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201809/1537515030_571032.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;增高专利磁疗足部穴位垫与足道粉套组						</a>
                        </td>
                        <td class="c">￥1198.00</td>
                        <td class="c">556</td>
                        <td class="c">667</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_34" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[34]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_34")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>16</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/16');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201809/1536299063_509376.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;魔幻精雕笔（产品）						</a>
                        </td>
                        <td class="c">￥340.00</td>
                        <td class="c">567</td>
                        <td class="c">878</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_16" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[16]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_16")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>21</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/21');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201809/1536304985_219480.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;修正_氧趣臭氧油						</a>
                        </td>
                        <td class="c">￥88.00</td>
                        <td class="c">675</td>
                        <td class="c">776</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_21" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[21]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_21")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>26</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/26');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201809/1536397024_930687.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;黄金体雕(仪器)						</a>
                        </td>
                        <td class="c">￥600.00</td>
                        <td class="c">546</td>
                        <td class="c">667</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_26" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[26]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_26")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>24</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/24');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201809/1536395315_247319.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;婵一瘦身						</a>
                        </td>
                        <td class="c">￥320.00</td>
                        <td class="c">656</td>
                        <td class="c">776</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_24" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[24]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_24")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>30</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/30');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201809/1536486331_825710.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;孕纹美妊娠纹仪器						</a>
                        </td>
                        <td class="c">￥340.00</td>
                        <td class="c">443</td>
                        <td class="c">445</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_30" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[30]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_30")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>29</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/29');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201809/1536485972_287043.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;孕纹美妊娠纹套盒						</a>
                        </td>
                        <td class="c">￥420.00</td>
                        <td class="c">655</td>
                        <td class="c">778</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_29" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[29]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_29")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>31</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/31');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201809/1536762846_602871.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;绿婵通经活络液						</a>
                        </td>
                        <td class="c">￥120.00</td>
                        <td class="c">332</td>
                        <td class="c">556</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_31" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[31]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_31")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>10</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/10');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201809/1536294765_702964.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;纤丽媛_身材管理器						</a>
                        </td>
                        <td class="c">￥2980.00</td>
                        <td class="c">512</td>
                        <td class="c">0</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_10" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[10]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_10")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>19</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/19');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201809/1536300335_854369.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;子午脉疼痛管理(产品)						</a>
                        </td>
                        <td class="c">￥980.00</td>
                        <td class="c">342</td>
                        <td class="c">543</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_19" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[19]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_19")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>15</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/15');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201809/1536298528_530627.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;黄金体雕（产品）						</a>
                        </td>
                        <td class="c">￥290.00</td>
                        <td class="c">323</td>
                        <td class="c">545</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_15" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[15]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_15")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>22</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/22');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201809/1536305443_756840.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;玫瑰活痒抑菌凝露						</a>
                        </td>
                        <td class="c">￥120.00</td>
                        <td class="c">546</td>
                        <td class="c">443</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_22" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[22]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_22")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>11</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/11');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201809/1536296625_965018.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;植绿美祛痘美颜霜						</a>
                        </td>
                        <td class="c">￥138.00</td>
                        <td class="c">134</td>
                        <td class="c">0</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_11" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[11]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_11")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>35</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/35');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201810/1539913741_834126.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;益媛减肥						</a>
                        </td>
                        <td class="c">￥400.00</td>
                        <td class="c">554</td>
                        <td class="c">443</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_35" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[35]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_35")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>18</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/18');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201809/1536299646_235709.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;子午脉疼痛管理(仪器)						</a>
                        </td>
                        <td class="c">￥980.00</td>
                        <td class="c">453</td>
                        <td class="c">546</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_18" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[18]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_18")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>33</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/33');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201809/1537514863_145679.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;启美韩亚增高						</a>
                        </td>
                        <td class="c">￥980.00</td>
                        <td class="c">523</td>
                        <td class="c">354</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_33" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[33]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_33")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>25</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/25');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201809/1536396670_814290.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;埋线避孕						</a>
                        </td>
                        <td class="c">￥150.00</td>
                        <td class="c">321</td>
                        <td class="c">334</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_25" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[25]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_25")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>12</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/12');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201809/1536297301_753084.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;植绿美美颜多效霜						</a>
                        </td>
                        <td class="c">￥158.00</td>
                        <td class="c">322</td>
                        <td class="c">0</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_12" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[12]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_12")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>13</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/13');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201809/1536297718_534971.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;绿植美焕颜修复多效霜						</a>
                        </td>
                        <td class="c">￥148.00</td>
                        <td class="c">213</td>
                        <td class="c">332</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_13" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[13]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_13")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    <tr>
                        <th>8</th>
                        <td>
                            <a href="javascript:Daui_iframe('https://www.gxmyvips.com/cart/view/8');" style="vertical-align: top">
                                <img src="/upload/items/imgs/201809/1536485816_736951.jpg_240" style="width: 60px; vertical-align: top">
                                &nbsp;瞩光新·视力修复						</a>
                        </td>
                        <td class="c">￥600.00</td>
                        <td class="c">431</td>
                        <td class="c">3212</td>
                        <td class="c">
                            <div class="daui_numbtns" id="Numbtns_8" style="margin: 0 auto">
                                <i class="disabled">-</i>
                                <input type="number" max="99" min="0" value="0" name="i[8]">
                                <i class="">+</i>
                            </div>
                        </td>
                    </tr>
                    <script>
                        new duiNumbtns({
                            element:document.getElementById("Numbtns_8")
                        },function(ret){
                            //console.log(ret);
                        });
                    </script>
                    </tbody></table>
                <input type="hidden" name="type" value="2">
            </form>
            <p style="text-align: right; padding-top: 5px;">
                <a href="javascript:Submit(2);" class="daui_btn blue big">购买</a>
            </p>
        </div>
    </div>
    <script>
        function Submit(type){
            var C = confirm('确认下单?系统将即时扣款');
            if(!C){
                return false;
            }
            $('.daui_loading').show();
            $.ajax({
                url:'',
                type:'POST',
                dataType:"json",
                data:$('#mform'+type).serialize(),
                success: function(data){
                    $('.daui_loading').hide();
                    if(data.code == 1)
                    {
                        window.location.href="https://www.gxmyvips.com/cart/order/"+data.oid;
                    }
                    else if(data.code == -101)
                    {
                        window.location.href="https://www.gxmyvips.com/login";
                    }
                    else
                    {
                        alert(data.msg);
                    }
                },
                error:function(){
                    $('.daui_loading').hide();
                    alert('网络连接失败');
                }
            });
        }
    </script>
</body>
</html>
