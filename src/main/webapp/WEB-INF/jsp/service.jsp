<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/10/14
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="background" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="com.smart.domain.News" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>


<html>
<head>
    <title>����</title>
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
                <button type="button" class="btn btn-link" onclick='window.location="${path}/about.html"'>����Ԧ˳</button>
                <button type="button" class="btn btn-link" onclick='window.location="${path}/rental.html"'>�⳵ָ��</button>
                <button type="button" class="btn btn-link" onclick='window.location="${path}/merchantsJoin.html"'>��ϵ����</button>
            </div>
        </div>
        <div id = "secondImage">
            <img src="${path}/Images/image2.jpg" alt=""/>
        </div>

        <div id="thirdTitle">
            <ul class="nav nav-pills">
                <li><a href="${path}/index.html">��վ��ҳ</a></li>
                <li><a href="${path}/about.html">��������</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        �ɹ����� <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">������λ</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="${path}/news.html?pageIndex=1">
                        �������� <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="${path}/news.html?pageIndex=1">�����ע</a></li>
                        <li><a href="${path}/companyNews.html?pageIndex=1">Ԧ˳����</a></li>
                        <li><a href="${path}/industryNews.html?pageIndex=1">��ҵ��̬</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="${path}/autoShow.html?pageIndex=1">
                        ����չʾ <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="${path}/modelIntroduction.html?pageIndex=1&models=1">�γ�ϵ��</a></li>
                        <li><a href="${path}/modelIntroduction.html?pageIndex=1&models=2">����ϵ��</a></li>
                        <li><a href="${path}/modelIntroduction.html?pageIndex=1&models=3">����ϵ��</a></li>
                        <li><a href="${path}/modelIntroduction.html?pageIndex=1&models=4">���οͳ�</a></li>
                        <li><a href="${path}/modelIntroduction.html?pageIndex=1&models=5">�۰�ֱͨ</a></li>
                        <li><a href="${path}/modelIntroduction.html?pageIndex=1&models=6">�������</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="${path}/rental.html">
                        �⳵ָ�� <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="${path}/rental.html">�⳵����</a></li>
                        <li><a href="${path}/price.html">�⳵�۸�</a></li>
                        <li><a href="${path}/terms.html">���ʽ</a></li>
                    </ul>
                </li>
                <li><a href="${path}/service.html">����Χ</a></li>
                <li><a href="${path}/onlineBooking.html">����Ԥ��</a></li>
                <li><a href="${path}/merchantsJoin.html">��ϵ����</a></li>
            </ul>
        </div>

        <div id="backImage1">
            <img src="${path}/Images/image121.jpg"/>
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
                    <p id="companyInformation2">����Ԧ˳�����������޹�˾</p>
                    <p>��   ַ : �����������ɳ̫·������10��B5036��</p>
                    <p>������ : 18026325163    13533999518</p>
                    <p>��С�� : 18922422265</p>
                    <p>�硡�� : 020-38987158</p>
                    <p>��   �� : 020-38987158</p>
                    <p>��ϵ�� : ������</p>
                    <p>E-mail : 2271965876@qq.com</p>
                    <p>��   վ : www.yszc188.com</p>
                </div>


            </div>
        </div>
        <div id="main">
            <div style="margin-top: 15px;">
                <img src="${path}/Images/image120.jpg"/>
                <div style="margin-left: 25px; margin-top: 20px; margin-right: 25px;">
                    <span style="font-size: 120%; color: #99740C;">�����⳵</span><br/>
                    <span style="margin-left: 20px;">�����ڹ㶫�ٰ���ͻ�����˾��Ϊ���ṩ�����������鳵����װ�Σ�����·����ƣ�����ʡ�ġ����ĵ��Ǽ����������շ�.</span>
                </div>
                <div style="margin-left: 25px; margin-top: 20px; margin-right: 25px;">
                    <span style="font-size: 120%; color: #99740C;">�����ó�</span><br/>
                    <span style="margin-left: 20px;">�����ڹ��ݻ��ڽ�ʡ���ٿ�������飬�ҹ�˾��Ϊ���ṩ�����ó���������鹤���ó�������ͻ����������ó�����֯����ιۻ����ó���</span>
                </div>
                <div style="margin-left: 25px; margin-top: 20px; margin-right: 25px;">
                    <span style="font-size: 120%; color: #99740C;">������ҵ���°�����⳵ </span><br/>
                    <span style="margin-left: 20px;">���˾��Ҫ�ڹ������°�Ա�����ͷ����ҹ�˾ӵ��7����55�����ͣ����ݼ�ʻ5�����ϼ�ʻԱÿ��һ�η������ǡ���ȫ����ѧУ��Ϊ���ṩ��ȫ�����ʣ�ʡ�ĵĵ�Ե����°���ͷ���</span>
                </div>
                <div style="margin-left: 25px; margin-top: 20px; margin-right: 25px;">
                    <span style="font-size: 120%; color: #99740C;">չ�������������⳵</span><br/>
                    <span style="margin-left: 20px;">���ڹ��ݻ��ٽ�ʡ�оٰ�������չ��������ᣬ�ҹ�˾��Ϊ���ṩ��չ�ﱸ�����ó�����չ������˽����ó������ڲι��ó���</span>
                </div>
                <div style="margin-left: 25px; margin-top: 20px; margin-right: 25px;">
                    <span style="font-size: 120%; color: #99740C;">�����ó� </span><br/>
                    <span style="margin-left: 20px;">�����ڹ��ݻ��ٽ�ʡ�оٰ����������ҹ�˾��Ϊ���ṩ�����Ĺ����ó�������Ӵ�ר����</span>
                </div>
                <div style="margin-left: 25px; margin-top: 20px; margin-right: 25px;">
                    <span style="font-size: 120%; color: #99740C;">�Ļ�������⳵ </span><br/>
                    <span style="margin-left: 20px;">�����ڹ��ݻ��ٽ�ʡ�оٰ��������Ļ���������ҹ�˾��Ϊ���ṩ�����ó������ǽӴ�ר�����ó������������⳵���ҹ�˾��Ϊ�ͻ��ṩ���������ó������ɽ��ܿͻ�ί�У�ȥ�������ӻ���Ϳ��ˡ�</span>
                </div>
                <div style="margin-left: 25px; margin-top: 20px; margin-right: 25px;">
                    <span style="font-size: 120%; color: #99740C;">���������⳵ </span><br/>
                    <span style="margin-left: 20px;">�ҹ�˾Ը��Ϊ�ߵ����ݾƵ��ṩ���׹���ó�����ʹ���Ŀ����ڵִ����ǰ�����ܻ��뿪���ݺ��ܼ������ܸߵ��ó�����</span>
                </div>
                <div style="margin-left: 25px; margin-top: 20px; margin-right: 25px;">
                    <span style="font-size: 120%; color: #99740C;">�����⳵ </span><br/>
                    <span style="margin-left: 20px;">�ҹ�˾Ϊ��פ���ݻ��ٽ�ʡ�е���ҵ�����»����ṩ�����ó����ɳ��ڰ��⡣ </span>
                </div>
                <div style="margin-left: 25px; margin-top: 20px; margin-right: 25px;">
                    <span style="font-size: 120%; color: #99740C;">�����⳵</span><br/>
                    <span style="margin-left: 20px;">�ҹ�˾�����е͵��γ���������ȳ��ͣ��ɹ������������á�</span>
                </div>
            </div>
        </div>
        <div id="footer">
            <div style="background-image:url('${path}/Images/image34.jpg') ">
                <div id="last2">
                    <a href="${path}/index.html" style="color: black;"><span>��վ��ҳ</span></a> | <a href="${path}/about.html" style="color: black;"><span>��������</span></a> | <span>�ɹ�����</span> |  <a href="${path}/news.html?pageIndex=1" style="color: black;"><span>��������</span></a> | <a href="${path}/autoShow.html?pageIndex=1" style="color: black;"><span>����չʾ</span></a> | <a href="${path}/rental.html" style="color: black;"><span>�⳵ָ��</span></a> |  <a href="${path}/service.html" style="color: black;"><span>����Χ</span></a> | <a href="${path}/onlineBooking.html" style="color: black;"><span>����Ԥ��</span></a> | <a href="${path}/merchantsJoin.html" style="color: black;"><span>��ϵ����</span></a>
                </div>
                <div style="border:1px solid #CCC; margin:0 auto; width: 1020px; margin-top: 15px;"></div>
                <div style="margin:0 auto; width: 400px; font-size: 85%;    ">
                    ����Ԧ˳�����������޹�˾<br/>
                    ��ϵ����: 2271965876@qq.com   guanchuanwei@163.com<br/>
                    �绰:020-38987158  �ֻ�:13533999518  QQ:2271965876<br/>
                    �����ţ���ICP��16112647��-1
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
        mon = new Array("һ��", "����", "����", "����", "����", "����", "����", "����",
            "����", "ʮ��", "ʮһ��", "ʮ����");
        /*
         day = new Array("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat");
         */
        day = new Array("����", "��һ", "�ܶ�", "����", "����", "����", "����");
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
            now.getFullYear() + "��" + (now.getMonth() + 1) + "��" + now.getDate() + "��" + "  " + hour + ":" + min + ":" + sec + "     Ԧ˳�⳵��ӭ����"
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
