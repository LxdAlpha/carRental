<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/10/14
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="background" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="com.smart.domain.News" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>


<html>
<head>
    <title>新闻</title>
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
    <script language="javascript" type="text/javascript" src="${path}/JS/WdatePicker.js"></script>
    <style>
        .clearfix { *zoom: 1;}
        .clearfix:after{ content: ""; display: block; height: 0; visibility:hidden; clear: both;}
        #header{margin: 0 auto; }
        #body{ width: 1020px; height: 900px; margin: 0 auto;}
        #aside{ float: left; width: 240px; height: 900px; }
        #main{ float: left; width: 780px; height: 900px; }
        #footer{ width: 1020px; height: 90px; margin: 0 auto; }


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
            <img src="${path}/Images/image123.jpg"/>
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
            <div style="margin-top: 15px;">
                <img src="${path}/Images/image122.jpg"/>
                <div style="text-align: center; padding-top: 20px;">
                    <span style="color: #99740C; font-size: 160%; font-weight: bold; margin: 0 auto;">广州驭顺汽车租赁有限公司</span>
                    <br/>
                    <div style="margin-left: 30px; margin-right: 30px;">
                        <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 广州驭顺汽车租赁有限公司是经广州市工商局正式批准的专业的从事汽车租赁，经营租赁种类齐全,可满足不同客户需求,会议接待、个人、企事业单位租车、文化体育活动租车、旅游团队等汽车租赁服务。<br>广州驭顺汽车租赁有限公司逐年发展壮大，现已成为广州汽车租赁行业的佼佼者，拥有各种类型车辆上百台，有经验丰富的管理团队，有经过专业培训、技术过硬、热情服务的工作人员，上下一心、高度敬业竭力为您提供热情、周到、安全、舒适.便捷的星级服务。还专门配置了奔驰车队、新奥迪A6L车队、别克商务车队、丰田凯美瑞、本田雅阁、帕萨特车队、中巴、大巴车队等。车型种类齐全，车辆新、性能好、保险全，保障有力。<br>我们不断努力，使广州驭顺汽车租赁有限公司成为一个为用户提供高质量、高标准服务的汽车租赁供应商，几年来承接了很多为各种大型活动提供车辆的业务，及亚运会用车、高峰会议用车、会展团队用车、明星影迷见面会用车等等，获得了广大客户的一致好评。广州驭顺汽车租赁有限公司本着诚信第一、客户至上宗旨，与客户建立起长期合作的友谊桥梁，为每一位客户提供优质细心周到的服务，让您全程无忧的体验我们为您带来的安全、舒适、便捷、高效的用车服务。</span>
                    </div>
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
