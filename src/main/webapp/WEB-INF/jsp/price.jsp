<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/10/13
  Time: 9:38
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="com.smart.domain.VehicleInformation" %>
<%@ page import="com.smart.domain.CarRentalPrice" %>
<%@ page import="com.smart.domain.TrainThroughPrice" %>
<%@ page import="com.smart.domain.AirportPickUpPrice" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>

<%
    ArrayList priceTables = (ArrayList) request.getAttribute("priceTable");
    ArrayList a = (ArrayList) priceTables.get(0);
    ArrayList b = (ArrayList) priceTables.get(1);
    ArrayList c = (ArrayList) priceTables.get(2);
    Iterator ita = a.iterator();
    Iterator itb = b.iterator();
    Iterator itc = c.iterator();
%>

<html>
<head>
    <title>车型展示</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <meta name="viewport" content="width=device-width,
                                     initial-scale=1.0,
                                     maximum-scale=1.0,
                                     user-scalable=no">
    <link href="${path}/CSS/style.css" rel="stylesheet">
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js" ></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        .clearfix { *zoom: 1;}
        .clearfix:after{ content: ""; display: block; height: 0; visibility:hidden; clear: both;}
        #header{margin: 0 auto; }
        #body{ width: 1020px; height: 1400px; margin: 0 auto;}
        #aside{ float: left; width: 240px; height: 1400px; }
        #main{ float: left; width: 780px; height: 1400px;}
        #footer{ width: 1020px; height: 90px; margin: 0 auto; }

        .priceTable1{
            border:2px solid #000000;
            font-size: 90%;
            margin-top: 30px;
            margin-left: 50px;
        }
        .priceTable1 td{
            border:1px solid #000000;
        }

    </style>
</head>
<body>
<div id="wrapper">
    <div id="header">
        <div id="firstTitle">
            <div id="time">
                <p id="timer"></p>
            </div>
            <div id="threeUrl">
                <button type="button" class="btn btn-link" onclick='window.location="${path}/about.html"'>关于驭顺</button>
                <button type="button" class="btn btn-link" onclick='window.location="${path}/rental.html"'>租车指南</button>
                <button type="button" class="btn btn-link" onclick='window.location="${path}/merchantsJoin.html"'>联系我们</button>
            </div>
        </div>
        <div id = "secondImage">
            <img src="${path}/Images/image2.jpg" alt=""/>
        </div>

        <div id="thirdTitle">
            <ul class="nav nav-pills">
                <li><a href="${path}/index.html">网站首页</a></li>
                <li><a href="${path}/about.html">关于我们</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        成功案例 <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">合作单位</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="${path}/news.html?pageIndex=1">
                        新闻中心 <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="${path}/news.html?pageIndex=1">焦点关注</a></li>
                        <li><a href="${path}/companyNews.html?pageIndex=1">驭顺新闻</a></li>
                        <li><a href="${path}/industryNews.html?pageIndex=1">行业动态</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="${path}/autoShow.html?pageIndex=1">
                        车型展示 <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="${path}/modelIntroduction.html?pageIndex=1&models=1">轿车系列</a></li>
                        <li><a href="${path}/modelIntroduction.html?pageIndex=1&models=2">婚庆系列</a></li>
                        <li><a href="${path}/modelIntroduction.html?pageIndex=1&models=3">商务系列</a></li>
                        <li><a href="${path}/modelIntroduction.html?pageIndex=1&models=4">旅游客车</a></li>
                        <li><a href="${path}/modelIntroduction.html?pageIndex=1&models=5">港澳直通</a></li>
                        <li><a href="${path}/modelIntroduction.html?pageIndex=1&models=6">礼宾车队</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="${path}/rental.html">
                        租车指南 <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="${path}/rental.html">租车流程</a></li>
                        <li><a href="${path}/price.html">租车价格</a></li>
                        <li><a href="${path}/terms.html">付款方式</a></li>
                    </ul>
                </li>
                <li><a href="${path}/service.html">服务范围</a></li>
                <li><a href="${path}/onlineBooking.html">在线预订</a></li>
                <li><a href="${path}/merchantsJoin.html">联系我们</a></li>
            </ul>
        </div>

        <div id="backImage1">
            <img src="${path}/Images/image111.jpg"/>
        </div>
    </div>
    <div id="body" class="clearfix">
        <div id="aside">
            <div>

                <div class="panel panel-default" id="test_1">
                    <div class="panel-heading" id="cheXingBiaoti"><img src="${path}/Images/image48.jpg"></div>
                    <div class="panel-body" id="cheXingXuanXiang">
                        <ul class="list-group">
                            <li class="list-group-item" id="cheXing1"><img src="${path}/Images/image7.jpg" onclick='window.location="${path}/modelIntroduction.html?pageIndex=1&models=1"'></li>
                            <li class="list-group-item" id="cheXing2"><img src="${path}/Images/image8.jpg" onclick='window.location="${path}/modelIntroduction.html?pageIndex=1&models=3"'></li>
                            <li class="list-group-item" id="cheXing3"><img src="${path}/Images/image9.jpg" onclick='window.location="${path}/modelIntroduction.html?pageIndex=1&models=5"'></li>
                            <li class="list-group-item" id="cheXing4"><img src="${path}/Images/image10.jpg" onclick='window.location="${path}/modelIntroduction.html?pageIndex=1&models=2"'></li>
                            <li class="list-group-item" id="cheXing5"><img src="${path}/Images/image11.jpg" onclick='window.location="${path}/modelIntroduction.html?pageIndex=1&models=1"'></li>
                            <li class="list-group-item" id="cheXing6"><img src="${path}/Images/image12.jpg" onclick='window.location="${path}/modelIntroduction.html?pageIndex=1&models=4"'></li>
                            <li class="list-group-item" id="cheXing7"><img src="${path}/Images/image13.jpg" onclick='window.location="${path}/modelIntroduction.html?pageIndex=1&models=6"'></li>
                        </ul>
                    </div>
                </div>

                <div id="test_2" style="background-image:url('${path}/Images/image34.jpg') ">
                    <p id="companyInformation2">广州驭顺汽车租赁有限公司</p>
                    <p>地   址 : 广州市天河区沙太路银利街10号B5036房</p>
                    <p>管先生 : 18026325163    13533999518</p>
                    <p>巨小姐 : 18922422265</p>
                    <p>电　话 : 020-38987158</p>
                    <p>传   真 : 020-38987158</p>
                    <p>联系人 : 管先生</p>
                    <p>E-mail : 2271965876@qq.com</p>
                    <p>网   站 : www.yszc188.com</p>
                </div>


            </div>
        </div>
        <div id="main">
            <img src="${path}/Images/image113.jpg" style="margin-top: 15px; margin-left: 30px;"/>
            <div>
                <table class="priceTable1">
                    <tr>
                        <td style="width: 70px; height: 100px; text-align: center;" colspan="2">车型</td>
                        <td style="width: 90px; text-align: center;">座位</td>
                        <td style="width: 90px; text-align: center;">日租/随驾</td>
                        <td style="width: 90px; text-align: center;">月租/带驾</td>
                        <td style="width: 90px; text-align: center;">超公里/元</td>
                        <td style="width: 90px; text-align: center;">加班（元/小时）</td>
                        <td style="width: 90px; text-align: center;">备注</td>
                    </tr>
                    <%
                        while(ita.hasNext()){
                            CarRentalPrice ca = (CarRentalPrice) ita.next();
                            String category = ca.getCategory();
                            String models = ca.getModels();
                            int seats = ca.getSeats();
                            int hireDay = ca.getHireDay();
                            int hireMonth = ca.getHireMonth();
                            float overKilometers = ca.getOverKilometers();
                            int overtime = ca.getOvertime();
                            String remarks = ca.getRemarks();
                    %>
                        <tr>
                            <td style="width: 70px;  text-align: center;"><%=category%></td>
                            <td style="width: 90px; "><%=models%></td>
                            <td><%=seats%></td>
                            <td><%=hireDay%></td>
                            <td>
                                <%
                                    if(hireMonth == -1){
                                %>
                                    面议
                                <%
                                    }else{
                                %>
                                    <%=hireMonth%>
                                <%
                                    }
                                %>
                            </td>
                            <td><%=overtime%></td>
                            <td><%=overKilometers%></td>
                            <td>
                                <%
                                    if(remarks == null){
                                %>

                                <%
                                    }else{
                                %>
                                    <%=remarks%>
                                <%
                                    }
                                %>
                            </td>
                        </tr>
                    <%
                        }
                    %>
                </table>



                <table class="priceTable1">
                    <tr>
                        <td colspan="6" style="height: 55px; text-align: center">港澳直通车价格表</td>
                    </tr>
                    <tr>
                        <td style="text-align: center; width: 202px; height: 50px;">
                            路程
                        </td>
                        <td style="text-align: center; width: 100px; height: 50px;">
                            车型
                        </td>
                        <td style="text-align: center; width: 100px; height: 50px;">
                            座位
                        </td>
                        <td style="text-align: center; width: 100px; height: 50px;">
                            驾车
                        </td>
                        <td style="text-align: center; width: 100px; height: 50px;">
                            价格
                        </td>
                        <td style="text-align: center; width: 100px; height: 50px;">
                            备注
                        </td>
                    </tr>
                    <%
                        while(itb.hasNext()){
                            TrainThroughPrice tr = (TrainThroughPrice) itb.next();
                            String journey = tr.getJourney();
                            String models = tr.getModels();
                            int seats = tr.getSeats();
                            String drive = tr.getDrive();
                            int price = tr.getPrice();
                            String remarks = tr.getRemarks();
                    %>
                        <tr>
                            <td style="width: 202px;">
                                <%=journey%>
                            </td>
                            <td style="width: 100px;">
                                <%=models%>
                            </td>
                            <td style="width: 100px;">
                                <%=seats%>
                            </td>
                            <td style="width: 100px;">
                                <%=drive%>
                            </td>
                            <td style="width: 100px;">
                                <%=price%>
                            </td>
                            <td style="width: 100px;">
                                <%
                                    if(remarks == null) {
                                    }else{
                                %>
                                    <%=remarks%>
                                <%
                                    }
                                %>
                            </td>
                        </tr>
                    <%
                        }
                    %>
                </table>



                <table class="priceTable1">
                    <tr>
                        <td colspan="6" style="height: 55px; text-align: center">接机送机（部分）全包价（次）</td>
                    </tr>
                    <tr>
                        <td style="text-align: center; width: 100px; height: 50px;">
                            类别
                        </td>
                        <td style="text-align: center; width: 100px; height: 50px;">
                            车型
                        </td>
                        <td style="text-align: center; width: 100px; height: 50px;">
                            接/送机价格
                        </td>
                        <td style="text-align: center; width: 100px; height: 50px;">
                            超时费
                        </td>
                        <td style="text-align: center; width: 302px; height: 50px;">
                            备注
                        </td>
                    </tr>
                    <%
                        while(itc.hasNext()){
                            AirportPickUpPrice ai = (AirportPickUpPrice) itc.next();
                            String category = ai.getCategory();
                            String models = ai.getModels();
                            int price = ai.getPrice();
                            int overtime = ai.getOverTimeFee();
                            String remarks = ai.getRemarks();
                    %>
                    <tr>
                        <td style="width: 100px;">
                            <%=category%>
                        </td>
                        <td style="width: 100px;">
                            <%=models%>
                        </td>
                        <td style="width: 100px;">
                            <%=price%>
                        </td>
                        <td style="width: 100px;">
                            <%=overtime%>
                        </td>
                        <td style="width: 302px;">
                            <%
                                if(remarks == null) {
                                }else{
                            %>
                            <%=remarks%>
                            <%
                                }
                            %>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </table>





            </div>
        </div>
    </div>
    <div id="footer">
        <div style="background-image:url('${path}/Images/image34.jpg') ">
            <div id="last2">
                <a href="${path}/index.html" style="color: black;"><span>网站首页</span></a> | <a href="${path}/about.html" style="color: black;"><span>关于我们</span></a> | <span>成功案例</span> |  <a href="${path}/news.html?pageIndex=1" style="color: black;"><span>新闻中心</span></a> | <a href="${path}/autoShow.html?pageIndex=1" style="color: black;"><span>车型展示</span></a> | <a href="${path}/rental.html" style="color: black;"><span>租车指南</span></a> |  <a href="${path}/service.html" style="color: black;"><span>服务范围</span></a> | <a href="${path}/onlineBooking.html" style="color: black;"><span>在线预订</span></a> | <a href="${path}/merchantsJoin.html" style="color: black;"><span>联系我们</span></a>
            </div>
            <div style="border:1px solid #CCC; margin:0 auto; width: 1020px; margin-top: 15px;"></div>
            <div style="margin:0 auto; width: 400px; font-size: 85%;    ">
                广州驭顺汽车租赁有限公司<br/>
                联系邮箱: 2271965876@qq.com   guanchuanwei@163.com<br/>
                电话:020-38987158  手机:13533999518  QQ:2271965876<br/>
                备案号：粤ICP备16112647号-1
            </div>
        </div>
    </div>
</div>
</body>
<script>
    $(function(){
        $("#myCarousel").carousel('cycle');
        dropdownOpen();
    });
    $(function () {
        $("#scCarousel").carousel('cycle');
    });
    $(function () {
        setInterval("GetTime()", 1000);
    });
    function GetTime() {
        var mon, day, now, hour, min, ampm, time, str, tz, end, beg, sec;
        /*
         mon = new Array("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug",
         "Sep", "Oct", "Nov", "Dec");
         */
        mon = new Array("一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月",
            "九月", "十月", "十一月", "十二月");
        /*
         day = new Array("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat");
         */
        day = new Array("周日", "周一", "周二", "周三", "周四", "周五", "周六");
        now = new Date();
        hour = now.getHours();
        min = now.getMinutes();
        sec = now.getSeconds();
        if (hour < 10) {
            hour = "0" + hour;
        }
        if (min < 10) {
            min = "0" + min;
        }
        if (sec < 10) {
            sec = "0" + sec;
        }
        $("#timer").html(
            now.getFullYear() + "年" + (now.getMonth() + 1) + "月" + now.getDate() + "日" + "  " + hour + ":" + min + ":" + sec + "     驭顺租车欢迎您！"
        );
        //$("#Timer").html(
        //        day[now.getDay()] + ", " + mon[now.getMonth()] + " "
        //                + now.getDate() + ", " + now.getFullYear() + " " + hour
        //                + ":" + min + ":" + sec);
    }

    $(document).on("click",".dropdown-toggle",function(){
        if($(this).attr('href'))
            window.location = $(this).attr('href');
    });

    function dropdownOpen() {

        var $dropdownLi = $('li.dropdown');

        $dropdownLi.mouseover(function() {
            $(this).addClass('open');
        });
        $dropdownLi.mouseleave(function() {
            $(this).removeClass('open')
            /*
             window.setTimeout(function () {
             $dropdownLi.removeClass('open');
             }, 2000);
             */
        });
    }
</script>
</html>


