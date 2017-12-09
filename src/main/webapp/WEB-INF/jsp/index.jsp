<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="java.lang.reflect.Array" %>
<%@ page import="com.smart.domain.News" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%
    ArrayList focusNews = (ArrayList) request.getAttribute("focusNews");
    ArrayList industryNews = (ArrayList) request.getAttribute("industryNews");
%>



<div>
  <head>

      <title>��ҳ</title>
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



  </head>

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

        <div id="myCarousel" class="carousel slide">
            <!-- �ֲ���Carousel��ָ�� -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>
            <!-- �ֲ���Carousel����Ŀ -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="${path}/Images/image3.jpg" alt="First slide">
                </div>
                <div class="item">
                    <img src="${path}/Images/image4.jpg" alt="Second slide">
                </div>
                <div class="item">
                    <img src="${path}/Images/image5.jpg" alt="Third slide">
                </div>
                <div class="item">
                    <img src="${path}/Images/image6.jpg" alt="Fourth slide">
                </div>
            </div>
            <!-- �ֲ���Carousel������ -->
             <a class="carousel-control left" href="#myCarousel"
                    data-slide="prev">&lsaquo;</a>
            <a class="carousel-control right" href="#myCarousel"
                    data-slide="next">&rsaquo;</a>
        </div>

        <div id="diYiCeng">
            <div class="panel panel-default" id="cheXingZuJia">
                <div class="panel-heading" id="cheXingBiaoti"><img src="${path}/Images/image14.jpg"></div>
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
            <div class="panel panel-default" id="tuiJianCheXing">
                <div class="panel-heading" id="tuiJianBiaoTi"><img src="${path}/Images/image15.jpg"></div>
                <div class="panel-body" id="qiCheXinxi">
                    <div >
                        <table class="table">
                            <tr>
                                <td>
                                    <div class="car1">
                                        <img src="${path}/Images/image16.jpg">
                                        <p class="name1">���GL8��7������</p>
                                        <p class="price1">���:��550/�� </p>
                                        <p class="danjia1">�������</p>
                                        <p class="jieshao1">���ܣ���۴������ռ������ʣ����������ѡ��</p>
                                    </div>
                                </td>
                                <td>
                                    <div class="car1">
                                        <img src="${path}/Images/image19.jpg" >
                                        <p class="name1">�¿�������</p>
                                        <p class="price1">���:��650/��  </p>
                                        <p class="danjia1">�������</p>
                                        <p class="jieshao1">���ܣ�����7��������񳵣��߶˴����ϵ��Σ�����������ѡ�� </p>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>

                    <div >
                        <table class="table">
                            <tr>
                                <td>
                                    <div class="car1">
                                        <img src="${path}/Images/image17.jpg">
                                        <p class="name1">�ӳ��ֿ� </p>
                                        <p class="price1">���:��2800/��</p>
                                        <p class="danjia1">�������</p>
                                        <p class="jieshao1">���ܣ��ӳ�9.8M����4Сʱ1800Ԫ</p>
                                    </div>
                                </td>
                                <td>
                                    <div class="car1">
                                        <img src="${path}/Images/image20.jpg" >
                                        <p class="name1">���ﻨ��</p>
                                        <p class="price1">���:��350/��</p>
                                        <p class="danjia1">�������</p>
                                        <p class="jieshao1">���ܣ�����ȳƣ��ͺľ��á�</p>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>

                    <div >
                        <table class="table">
                            <tr>
                                <td>
                                    <div class="car1">
                                        <img src="${path}/Images/image21.jpg">
                                        <p class="name1">�¿�µ�A6L </p>
                                        <p class="price1">���:��1100/��</p>
                                        <p class="danjia1">�������</p>
                                        <p class="jieshao1">���ܣ�����������أ�ʱ�У����ξ��£��ڲ��ռ�󣻶������棻�ٿ����磬��ʻ�Ƚ���������ϸ��</p>
                                    </div>
                                </td>
                                <td>
                                    <div class="car1">
                                        <img src="${path}/Images/image22.jpg" >
                                        <p class="name1">����7ϵ</p>
                                        <p class="price1">���:��3600/��</p>
                                        <p class="danjia1">�������</p>
                                        <p class="jieshao1">���ܣ���۴������ٿ����ã��ɵ�ʽ����ϵͳ�Ƚϳ�ɫ���ڲ��ռ����ԣ���������ʣ����ñȽ�ȫ�档</p>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>

                </div>
            </div>
        </div>

        <div id="img2">
            <img src="${path}/Images/image23.jpg"/>
        </div>



        <div class="panel panel-default" id="OnlineBooking1">
            <div class="panel-heading" id="OnlineBooking2">
                <img src="${path}/Images/image24.jpg"/>
            </div>
            <div>
                <form  action="${path}/onlineBookingOp.html" method="post">
                    <div>
                        <table style="line-height:27px">
                            <tr >
                                <td class="OnlineBooking3">
                                    <p>�������ͣ�</p>
                                </td>
                                <td>
                                    <select class="OnlineBooking4" name="service" style="width: 150px;">
                                        <option>��ѡ���������</option>
                                        <option>�����⳵����</option>
                                        <option>�����⳵����</option>
                                        <option>�����⳵����</option>
                                        <option>���°���ͷ���</option>
                                        <option>չ����������</option>
                                        <option>�������ͷ���</option>
                                        <option>��ҵ�����⳵����</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="OnlineBooking3">
                                    <p>���ͣ�</p>
                                </td>
                                <td>
                                    <select class="OnlineBooking4" name="models" style="width: 150px;">
                                        <option>��ѡ����Ʒ��</option>
                                        <option>�ӳ��ֿ�</option>
                                        <option>����</option>
                                        <option>����</option>
                                        <option>�µ�</option>
                                        <option>����</option>
                                        <option>����</option>
                                        <option>����</option>
                                        <option>�ִ�</option>
                                        <option>��˹���а�</option>
                                        <option>�������</option>
                                        <option>��˹��˹��Ӱ</option>
                                        <option>�ӳ�����</option>
                                        <option>��������</option>
                                        <option>������</option>
                                        <option>��������</option>
                                        <option>��������</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="OnlineBooking3" >
                                    <p>������</p>
                                </td>
                                <td>
                                    <input type="text" class="OnlineBooking5" name="name">
                                </td>
                            </tr>
                            <tr>
                                <td class="OnlineBooking3" >
                                    <p>�绰��</p>
                                </td>
                                <td>
                                    <input type="text" class="OnlineBooking5" name="phone">
                                </td>
                            </tr>
                            <tr>
                                 <td class="OnlineBooking3">
                                    <p>ȡ��ʱ�䣺</p>
                                </td>
                                <td>
                                    <input type="text" name="borrowTime" id="d241" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" class="Wdate" style="width:175px; margin-left: 3px;"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="OnlineBooking3">
                                    <p>����ʱ�䣺</p>
                                </td>
                                <td>
                                    <input type="text" name="returnTime" id="d242" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" class="Wdate" style="width:175px; margin-left: 3px;"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="OnlineBooking3">
                                    <p>Ҫ��</p>
                                </td>
                                <td>
                                    <input type="text" class="OnlineBooking5" name="demand">
                                </td>
                            </tr>
                            <tr>
                                <td  colspan="2" style="text-align: center;">
                                    <input type="submit" value="�ύ" style="margin: 0 auto;"/>
                                </td>
                            </tr>
                        </table>
                    </div>
                 </form>
            </div>
        </div>


  <div class="panel panel-default" id="serviceProject1">
      <div class="panel-heading" id="serviceProject2"><img src="${path}/Images/image25.jpg"></div>
      <div class="panel-body">
          <div >
              <table>
                  <tr>
                      <td class="serviceProject3">
                            <div style="position: relative">
                                <p class="serviceProject4">��ʱ�⳵</p>
                                <p class="serviceProject5">�ṩ���ͽӻ��ͻ� ���͹���۹����� �����������ȷ��� ���������κν��������� ���޳��ķ��� ���Ƕ�����Ϊ�����</p>
                                <img src="${path}/Images/image26.jpg" class="serviceProject6">
                            </div>
                      </td>
                      <td class="serviceProject3">
                          <div style="position: relative">
                              <p class="serviceProject4">�����⳵</p>
                              <p class="serviceProject5">�ṩ��������γ� ���񳵼����� �������� ���Ϳ���ӵ��һ����������ʢ�����</p>
                              <img src="${path}/Images/image27.jpg" class="serviceProject6">
                          </div>
                      </td>
                  </tr>
              </table>
          </div>

          <div >
              <table>
                  <tr>
                      <td class="serviceProject3">
                          <div style="position: relative">
                              <p class="serviceProject4">�����⳵</p>
                              <p class="serviceProject5">��Ҫ����Թ��ݼ������ǵĸ�����ҵ��λ ����������Ա�����°��ó� ������1-2�����ϵĿͻ� �Ը������� ���³���������ʹ��</p>
                              <img src="${path}/Images/image28.jpg" class="serviceProject6">
                          </div>
                      </td>
                      <td class="serviceProject3">
                          <div style="position: relative">
                              <p class="serviceProject4">�����⳵</p>
                              <p class="serviceProject5">����/���˽����ó� ���ó��� ������ ���� ������ ��������� �ö� ���صȿ�������ѡ����ݻ��Լ�</p>
                              <img src="${path}/Images/image29.jpg" class="serviceProject6">
                          </div>
                      </td>
                  </tr>
              </table>
          </div>

          <div >
              <table>
                  <tr>
                      <td class="serviceProject3">
                          <div style="position: relative">
                              <p class="serviceProject4">�����⳵</p>
                              <p class="serviceProject5">�ṩ����С�ͻ�����γ��ʹ��а� �Լݰ��� �����������ܸ��Ի���������Ȥ</p>
                              <img src="${path}/Images/image30.jpg" class="serviceProject6">
                          </div>
                      </td>
                      <td class="serviceProject3">
                          <div style="position: relative">
                              <p class="serviceProject4">���ݷ���</p>
                              <p class="serviceProject5">�ṩרҵ�ļ�ʻԱ��Ա�������</p>
                              <img src="${path}/Images/image31.jpg" class="serviceProject6">
                          </div>
                      </td>
                  </tr>
              </table>
          </div>

      </div>

  </div>


        <div class="panel panel-default" id="contactUs1">
            <div class="panel-heading" id="contactUs2"><img src="${path}/Images/image33.jpg"/></div>
            <div style="background-image:url('${path}/Images/image34.jpg') "/>
                <table class="contactUs4">
                    <tr><td><p id="contactUs3">����Ԧ˳�����������޹�˾</p></td></tr>
                    <tr><td><p class="contactUs5">�� ַ: �����������ɳ̫·������10��B5036��</p></td></tr>
                    <tr><td><p class="contactUs5">��   ��:  020-38987158</p></td></tr>
                    <tr><td><p class="contactUs5">������: 18026325163 13533999518</p></td></tr>
                    <tr><td><p class="contactUs5">��С��: 18922422265</p></td></tr>
                    <tr><td><p class="contactUs5">��    ��: 020-38987158</p></td></tr>
                    <tr><td><p class="contactUs5">E-mail:guanchuanwei@163.com</p></td></tr>
                    <tr><td><p class="contactUs5">��    ַ: www.yszc188.com </p></td></tr>
                </table>
            </div>
        </div>

        <div class="panel panel-default" id="aboutUs1">
            <div class="panel-heading" id="aboutUs2"><img src="${path}/Images/image35.jpg"/></div>
            <div style="background-image:url('${path}/Images/image34.jpg') ">
                <img src="${path}/Images/image36.jpg"  id="aboutUs3"/>
                <p id="aboutUs4">����Ԧ˳�����������޹�˾�Ǿ������й��̾���ʽ��׼��רҵ�Ĵ����������ޣ���Ӫ����������ȫ,�����㲻ͬ�ͻ�����,����Ӵ������ˡ�����ҵ��λ�⳵���Ļ�������⳵�������Ŷӵ��������޷��񡣹���Ԧ˳�����������޹�˾���귢չ׳�����ѳ�Ϊ��������������ҵ��ٮٮ�ߣ�ӵ�и������ͳ����ϰ�̨���о���ḻ�Ĺ����Ŷӣ��о���רҵ��ѵ��������Ӳ���������Ĺ�����Ա������һ�ġ��߶Ⱦ�ҵ����Ϊ���ṩ���顢�ܵ�����ȫ������.��ݵ��Ǽ����񡣻�ר�������˱��۳��ӡ��°µ�A6L���ӡ�������񳵶ӡ����￭���𡢱����Ÿ������س��ӡ��а͡���ͳ��ӵȡ�����������ȫ�������¡����ܺá�����ȫ���������������ǲ���Ŭ����ʹ����Ԧ˳�����������޹�˾��Ϊһ��Ϊ�û��ṩ���������߱�׼������������޹�Ӧ�̣��������н��˺ܶ�Ϊ���ִ��ͻ�ṩ������ҵ�񣬼����˻��ó����߷�����ó�����չ�Ŷ��ó�������Ӱ�Լ�����ó��ȵȣ�����˹��ͻ���һ�º���������Ԧ˳�����������޹�˾���ų��ŵ�һ���ͻ�������ּ����ͻ��������ں���������������Ϊÿһλ�ͻ��ṩ����ϸ���ܵ��ķ�������ȫ�����ǵ���������Ϊ�������İ�ȫ�����ʡ���ݡ���Ч���ó�����</p>
            </div>
        </div>

        <div class="panel panel-default" id="Honor1">
            <div class="panel-heading" id="Honor2"><img src="${path}/Images/image37.jpg"/></div>
            <div>
                <div id="scCarousel" class="carousel slide">
                    <!-- �ֲ���Carousel��ָ�� -->
                    <ol class="carousel-indicators">
                        <li data-target="#scCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#scCarousel" data-slide-to="1"></li>
                        <li data-target="#scCarousel" data-slide-to="2"></li>
                        <li data-target="#scCarousel" data-slide-to="3"></li>
                    </ol>
                    <!-- �ֲ���Carousel����Ŀ -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="${path}/Images/image38.jpg" alt="First slide">
                        </div>
                        <div class="item">
                            <img src="${path}/Images/image39.jpg" alt="Second slide">
                        </div>
                        <div class="item">
                            <img src="${path}/Images/image40.jpg" alt="Third slide">
                        </div>
                        <div class="item">
                            <img src="${path}/Images/image41.jpg" alt="Fourth slide">
                        </div>
                    </div>
                    <!-- �ֲ���Carousel������ -->
                    <a class="carousel-control left" href="#myCarousel"
                       data-slide="prev">&lsaquo;</a>
                    <a class="carousel-control right" href="#myCarousel"
                       data-slide="next">&rsaquo;</a>
                </div>
            </div>
        </div>

        <div class="panel panel-default" id="cars1">
            <div class="panel-heading" id="cars2"><img src="${path}/Images/image42.jpg"/></div>
            <div class="panel-body">
                <div class="cars3">
                    <img src="${path}/Images/image43.jpg" onclick='window.location=("http://www.google.cn/maps/@23.0786776,113.3308955,12z?hl=zh-CN")'/>
                    <p class="cars4" onclick='window.location=("http://www.google.cn/maps/@23.0786776,113.3308955,12z?hl=zh-CN")'>���ӵ�ͼ</p>
                 </div>
                <div class="cars3">
                    <img src="${path}/Images/image43.jpg" onclick='window.location=("http://www.hanbao580.com/html/article/70.html")'/>
                    <p class="cars4" onclick='window.location=("http://www.hanbao580.com/html/article/70.html")'>�⳵֮����������ʶ</p>
                </div>
                <div class="cars3">
                    <img src="${path}/Images/image43.jpg" onclick='window.location=("http://www.weather.com.cn/guangdong/index.shtml")'/>
                    <p class="cars4" onclick='window.location=("http://www.weather.com.cn/guangdong/index.shtml")'>�⳵������ѯ</p>
                </div>
                <div class="cars3">
                    <img src="${path}/Images/image43.jpg" onclick='window.location=("http://www.hanbao580.com/html/article/62.html")'/>
                    <p class="cars4" onclick='window.location=("http://www.hanbao580.com/html/article/62.html")'>�����Ѻòο���׼</p>
                </div>
                <div class="cars3">
                    <img src="${path}/Images/image43.jpg" onclick='window.location=("http://www.google.cn/maps/@23.0786776,113.3308955,12z?hl=zh-CN")'/>
                    <p class="cars4" onclick='window.location=("http://www.google.cn/maps/@23.0786776,113.3308955,12z?hl=zh-CN")'>����ͨAPP����</p>
                </div>
            </div>
        </div>

        <div class="panel panel-default" id="focusAttention1" style="background-image:url('${path}/Images/image34.jpg') ">
            <div class="panel-heading" id="focusAttention2"><img src="${path}/Images/image44.jpg"/></div>
            <table style="width: 450px;">
                <%
                    Iterator it = focusNews.iterator();
                    while(it.hasNext()){
                        News news = (News) it.next();
                        String title = news.getTitle();
                        String time = news.getDate().substring(0, 10);
                        int id = news.getId();
                %>
                <tr><td style="width: 10px;"><img src="${path}/Images/image45.png"/></td><td><p class="focusAttention3"><a href="${path}/newsShow.html?id=<%=id%>" style="color: black;"><%=title%></a></p></td><td><p class="focusAttention3"><%=time%></p></td></tr>
                <%
                    }
                %>
            </table>
        </div>

        <div class="panel panel-default" id="industryNews1" style="background-image:url('${path}/Images/image34.jpg') ">
            <div class="panel-heading" id="industryNews2"><img src="${path}/Images/image46.jpg"/></div>
            <table id="industryNews4">
                <%
                    Iterator ita = focusNews.iterator();
                    while(ita.hasNext()){
                        News news = (News) ita.next();
                        String title = news.getTitle();
                        int id = news.getId();
                %>
                    <tr><td style="width:15px;"><img src="${path}/Images/image45.png"/></td><td><a href="${path}/newsShow.html?id=<%=id%>" style="color: black;" ><p class="industryNews3"><%=title%></p></a></td></tr>
                <%
                    }
                %>
            </table>
        </div>

        <div style="background-image:url('${path}/Images/image34.jpg') " id="last1">
            <div id="last2">
                <a href="${path}/index.html" style="color: black;"><span>��վ��ҳ</span></a> | <a href="${path}/about.html" style="color: black;"><span>��������</span></a> | <span>�ɹ�����</span> |  <a href="${path}/news.html?pageIndex=1" style="color: black;"><span>��������</span></a> | <a href="${path}/autoShow.html?pageIndex=1" style="color: black;"><span>����չʾ</span></a> | <a href="${path}/rental.html" style="color: black;"><span>�⳵ָ��</span></a> |  <a href="${path}/service.html" style="color: black;"><span>����Χ</span></a> | <a href="${path}/onlineBooking.html" style="color: black;"><span>����Ԥ��</span></a> | <a href="${path}/merchantsJoin.html" style="color: black;"><span>��ϵ����</span></a>
            </div>
            <div style="border:1px solid #CCC; margin:0 auto; width: 1200px; margin-top: 15px;"></div>
            <div style="margin:0 auto; width: 400px; font-size: 85%;    ">
                ����Ԧ˳�����������޹�˾<br/>
                ��ϵ����: 2271965876@qq.com   guanchuanwei@163.com<br/>
                �绰:020-38987158  �ֻ�:13533999518  QQ:2271965876<br/>
                �����ţ���ICP��16112647��-1
            </div>
        </div>


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


