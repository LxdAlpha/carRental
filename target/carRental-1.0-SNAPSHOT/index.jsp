<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<div>
  <head>

      <title>My JSP 'index.jsp' starting page </title>
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



  </head>
        <div id="firstTitle">
            <div id="time">
                <p id="timer"></p>
            </div>
            <div id="threeUrl">
                <button type="button" class="btn btn-link">关于驭顺</button>
                <button type="button" class="btn btn-link">租车指南</button>
                <button type="button" class="btn btn-link">联系我们</button>
            </div>
        </div>
        <div id = "secondImage">
            <img src="${path}/Images/image2.jpg" alt=""/>
        </div>

        <div id="thirdTitle">
            <ul class="nav nav-pills">
                <li><a href="#">网站首页</a></li>
                <li><a href="#">关于我们</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        成功案例 <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">合作单位</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        新闻中心 <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">焦点关注</a></li>
                        <li><a href="#">驭顺新闻</a></li>
                        <li><a href="#">行业动态</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        车型展示 <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">轿车系列</a></li>
                        <li><a href="#">婚庆系列</a></li>
                        <li><a href="#">商务系列</a></li>
                        <li><a href="#">旅游客车</a></li>
                        <li><a href="#">港澳直通</a></li>
                        <li><a href="#">礼宾车队</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        租车指南 <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">租车流程</a></li>
                        <li><a href="#">租车价格</a></li>
                        <li><a href="#">付款方式</a></li>
                    </ul>
                </li>
                <li><a href="#">服务范围</a></li>
                <li><a href="${path}/onlineBooking.html">在线预订</a></li>
                <li><a href="#">联系我们</a></li>
            </ul>
        </div>

        <div id="myCarousel" class="carousel slide">
            <!-- 轮播（Carousel）指标 -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>
            <!-- 轮播（Carousel）项目 -->
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
            <!-- 轮播（Carousel）导航 -->
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
                            <li class="list-group-item" id="cheXing1"><img src="${path}/Images/image7.jpg"></li>
                            <li class="list-group-item" id="cheXing2"><img src="${path}/Images/image8.jpg"></li>
                            <li class="list-group-item" id="cheXing3"><img src="${path}/Images/image9.jpg"></li>
                            <li class="list-group-item" id="cheXing4"><img src="${path}/Images/image10.jpg"></li>
                            <li class="list-group-item" id="cheXing5"><img src="${path}/Images/image11.jpg"></li>
                            <li class="list-group-item" id="cheXing6"><img src="${path}/Images/image12.jpg"></li>
                            <li class="list-group-item" id="cheXing7"><img src="${path}/Images/image13.jpg"></li>
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
                                        <p class="name1">别克GL8，7座商务</p>
                                        <p class="price1">租金:￥550/天 </p>
                                        <p class="danjia1">日租随驾</p>
                                        <p class="jieshao1">介绍：外观大气，空间大而舒适，商务出差首选。</p>
                                    </div>
                                </td>
                                <td>
                                    <div class="car1">
                                        <img src="${path}/Images/image19.jpg" >
                                        <p class="name1">新款别克商务车</p>
                                        <p class="price1">租金:￥650/天  </p>
                                        <p class="danjia1">日租随驾</p>
                                        <p class="jieshao1">介绍：豪华7座别克商务车，高端大气上档次，商务宴请首选。 </p>
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
                                        <p class="name1">加长林肯 </p>
                                        <p class="price1">租金:￥2800/天</p>
                                        <p class="danjia1">日租随驾</p>
                                        <p class="jieshao1">介绍：加长9.8M市区4小时1800元</p>
                                    </div>
                                </td>
                                <td>
                                    <div class="car1">
                                        <img src="${path}/Images/image20.jpg" >
                                        <p class="name1">丰田花冠</p>
                                        <p class="price1">租金:￥350/天</p>
                                        <p class="danjia1">日租随驾</p>
                                        <p class="jieshao1">介绍：外观匀称，油耗经济。</p>
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
                                        <p class="name1">新款奥迪A6L </p>
                                        <p class="price1">租金:￥1100/天</p>
                                        <p class="danjia1">日租随驾</p>
                                        <p class="jieshao1">介绍：外观内敛稳重，时尚；内饰精致；内部空间大；动力充沛；操控自如，行驶稳健；做工精细。</p>
                                    </div>
                                </td>
                                <td>
                                    <div class="car1">
                                        <img src="${path}/Images/image22.jpg" >
                                        <p class="name1">宝马7系</p>
                                        <p class="price1">租金:￥3600/天</p>
                                        <p class="danjia1">日租随驾</p>
                                        <p class="jieshao1">介绍：外观大气；操控良好，可调式悬挂系统比较出色；内部空间宽敞充裕，乘坐舒适；配置比较全面。</p>
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
                <form role="form">
                    <div class="form-group">
                        <table style="line-height:27px">
                            <tr >
                                <td class="OnlineBooking3">
                                    <p>服务类型：</p>
                                </td>
                                <td>
                                    <select class="form-control input-sm OnlineBooking4">
                                        <option>请选择服务类型</option>
                                        <option>婚庆租车服务</option>
                                        <option>商务租车服务</option>
                                        <option>会议租车服务</option>
                                        <option>上下班接送服务</option>
                                        <option>展览博览服务</option>
                                        <option>机场接送服务</option>
                                        <option>企业长期租车服务</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="OnlineBooking3">
                                    <p>车型：</p>
                                </td>
                                <td>
                                    <select class="form-control OnlineBooking4 input-sm" >
                                        <option>请选择车辆品牌</option>
                                        <option>加长林肯</option>
                                        <option>奔驰</option>
                                        <option>宝马</option>
                                        <option>奥迪</option>
                                        <option>丰田</option>
                                        <option>本田</option>
                                        <option>天籁</option>
                                        <option>现代</option>
                                        <option>考斯特中巴</option>
                                        <option>金龙大巴</option>
                                        <option>劳斯莱斯幻影</option>
                                        <option>加长悍马</option>
                                        <option>宾利雅致</option>
                                        <option>法拉利</option>
                                        <option>兰博基尼</option>
                                        <option>凯迪拉克</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="OnlineBooking3">
                                    <p>姓名：</p>
                                </td>
                                <td>
                                    <input type="text" class="form-control OnlineBooking5">
                                </td>
                            </tr>
                            <tr>
                                <td class="OnlineBooking3">
                                    <p>电话：</p>
                                </td>
                                <td>
                                    <input type="text" class="form-control OnlineBooking5">
                                </td>
                            </tr>
                            <tr>
                                 <td class="OnlineBooking3">
                                    <p>取车时间：</p>
                                </td>
                                <td>
                                    <input type="text" class="form-control OnlineBooking5">
                                </td>
                            </tr>
                            <tr>
                                <td class="OnlineBooking3">
                                    <p>换车时间：</p>
                                </td>
                                <td>
                                    <input type="text" class="form-control OnlineBooking5">
                                </td>
                            </tr>
                            <tr>
                                <td class="OnlineBooking3">
                                    <p>要求：</p>
                                </td>
                                <td>
                                    <input type="text" class="form-control OnlineBooking5">
                                </td>
                            </tr>
                            <tr>
                                <td  colspan="2">
                                    <img src="${path}/Images/image32.jpg" id="OnlineBooking6"/>
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
                                <p class="serviceProject4">临时租车</p>
                                <p class="serviceProject5">提供代客接机送机 接送贵宾观光游览 接送商务会面等服务 无论遇到任何紧急的事情 您无车的烦恼 我们都可以为您解决</p>
                                <img src="${path}/Images/image26.jpg" class="serviceProject6">
                            </div>
                      </td>
                      <td class="serviceProject3">
                          <div style="position: relative">
                              <p class="serviceProject4">婚庆租车</p>
                              <p class="serviceProject5">提供各类豪华轿车 商务车及车队 轻轻松松 您就可以拥有一场风光体面的盛大婚礼</p>
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
                              <p class="serviceProject4">长期租车</p>
                              <p class="serviceProject5">主要是针对广州及珠三角的各企事业单位 供各类商务及员工上下班用车 租期在1-2年以上的客户 以根据需求 置新车供承租人使用</p>
                              <img src="${path}/Images/image28.jpg" class="serviceProject6">
                          </div>
                      </td>
                      <td class="serviceProject3">
                          <div style="position: relative">
                              <p class="serviceProject4">短期租车</p>
                              <p class="serviceProject5">商务/个人节庆用车 览用车等 凯美瑞 天籁 克商务 新瑞风商务 悦动 兰特等可以自由选择随驾或自驾</p>
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
                              <p class="serviceProject4">旅游租车</p>
                              <p class="serviceProject5">提供各种小型或商务轿车和大中巴 自驾包车 轻松惬意地享受个性化的旅游乐趣</p>
                              <img src="${path}/Images/image30.jpg" class="serviceProject6">
                          </div>
                      </td>
                      <td class="serviceProject3">
                          <div style="position: relative">
                              <p class="serviceProject4">代驾服务</p>
                              <p class="serviceProject5">提供专业的驾驶员人员输出服务</p>
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
                    <tr><td><p id="contactUs3">广州驭顺汽车租赁有限公司</p></td></tr>
                    <tr><td><p class="contactUs5">地 址: 广州市天河区沙太路银利街10号B5036房</p></td></tr>
                    <tr><td><p class="contactUs5">电   话:  020-38987158</p></td></tr>
                    <tr><td><p class="contactUs5">管先生: 18026325163 13533999518</p></td></tr>
                    <tr><td><p class="contactUs5">巨小姐: 18922422265</p></td></tr>
                    <tr><td><p class="contactUs5">传    真: 020-38987158</p></td></tr>
                    <tr><td><p class="contactUs5">E-mail:guanchuanwei@163.com</p></td></tr>
                    <tr><td><p class="contactUs5">网    址: www.yszc188.com </p></td></tr>
                </table>
            </div>
        </div>

        <div class="panel panel-default" id="aboutUs1">
            <div class="panel-heading" id="aboutUs2"><img src="${path}/Images/image35.jpg"/></div>
            <div style="background-image:url('${path}/Images/image34.jpg') ">
                <img src="${path}/Images/image36.jpg"  id="aboutUs3"/>
                <p id="aboutUs4">广州驭顺汽车租赁有限公司是经广州市工商局正式批准的专业的从事汽车租赁，经营租赁种类齐全,可满足不同客户需求,会议接待、个人、企事业单位租车、文化体育活动租车、旅游团队等汽车租赁服务。广州驭顺汽车租赁有限公司逐年发展壮大，现已成为广州汽车租赁行业的佼佼者，拥有各种类型车辆上百台，有经验丰富的管理团队，有经过专业培训、技术过硬、热情服务的工作人员，上下一心、高度敬业竭力为您提供热情、周到、安全、舒适.便捷的星级服务。还专门配置了奔驰车队、新奥迪A6L车队、别克商务车队、丰田凯美瑞、本田雅阁、帕萨特车队、中巴、大巴车队等。车型种类齐全，车辆新、性能好、保险全，保障有力。我们不断努力，使广州驭顺汽车租赁有限公司成为一个为用户提供高质量、高标准服务的汽车租赁供应商，几年来承接了很多为各种大型活动提供车辆的业务，及亚运会用车、高峰会议用车、会展团队用车、明星影迷见面会用车等等，获得了广大客户的一致好评。广州驭顺汽车租赁有限公司本着诚信第一、客户至上宗旨，与客户建立起长期合作的友谊桥梁，为每一位客户提供优质细心周到的服务，让您全程无忧的体验我们为您带来的安全、舒适、便捷、高效的用车服务。</p>
            </div>
        </div>

        <div class="panel panel-default" id="Honor1">
            <div class="panel-heading" id="Honor2"><img src="${path}/Images/image37.jpg"/></div>
            <div>
                <div id="scCarousel" class="carousel slide">
                    <!-- 轮播（Carousel）指标 -->
                    <ol class="carousel-indicators">
                        <li data-target="#scCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#scCarousel" data-slide-to="1"></li>
                        <li data-target="#scCarousel" data-slide-to="2"></li>
                        <li data-target="#scCarousel" data-slide-to="3"></li>
                    </ol>
                    <!-- 轮播（Carousel）项目 -->
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
                    <!-- 轮播（Carousel）导航 -->
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
                    <img src="${path}/Images/image43.jpg" />
                    <p class="cars4">电子地图</p>
                 </div>
                <div class="cars3">
                    <img src="${path}/Images/image43.jpg" />
                    <p class="cars4">租车之汽车基本常识</p>
                </div>
                <div class="cars3">
                    <img src="${path}/Images/image43.jpg" />
                    <p class="cars4">租车天气查询</p>
                </div>
                <div class="cars3">
                    <img src="${path}/Images/image43.jpg" />
                    <p class="cars4">汽车友好参考标准</p>
                </div>
                <div class="cars3">
                    <img src="${path}/Images/image43.jpg" />
                    <p class="cars4">高速通APP下载</p>
                </div>
            </div>
        </div>

        <div class="panel panel-default" id="focusAttention1" style="background-image:url('${path}/Images/image34.jpg') ">
            <div class="panel-heading" id="focusAttention2"><img src="${path}/Images/image44.jpg"/></div>
            <table>
                <tr><td style="width: 10px;"><img src="${path}/Images/image45.png"/></td><td style="width:348px;"><p class="focusAttention3">开车不易，碰瓷套路深，请大家注意防范！</p></td><td><p class="focusAttention3">2017-05-31</p></td></tr>
                <tr><td style="width: 10px;"><img src="${path}/Images/image45.png"/></td><td><p class="focusAttention3">汽车保养知识大全</p></td><td><p class="focusAttention3">2017-03-30</p></td></tr>
                <tr><td style="width: 10px;"><img src="${path}/Images/image45.png"/></td><td><p class="focusAttention3">清明小长假将至，租车预定要趁早</p></td><td><p class="focusAttention3">2017-03-28</p></td></tr>
                <tr><td style="width: 10px;"><img src="${path}/Images/image45.png"/></td><td><p class="focusAttention3">年关租车回家，记得长个心眼</p></td><td><p class="focusAttention3">2015-12-26</p></td></tr>
                <tr><td style="width: 10px;"><img src="${path}/Images/image45.png"/></td><td><p class="focusAttention3">清明节将至岩城租车市场升温</p></td><td><p class="focusAttention3">2015-03-27</p></td></tr>
                <tr><td style="width: 10px;"><img src="${path}/Images/image45.png"/></td><td><p class="focusAttention3">广东国五新规突袭式实施 车主摇中号车根本来不及迁</p></td><td><p class="focusAttention3">2015-03-08</p></td></tr>
                <tr><td style="width: 10px;"><img src="${path}/Images/image45.png"/></td><td><p class="focusAttention3">数百家二手车商集结上访 ， “国五”能否延迟实施</p></td><td><p class="focusAttention3">2015-03-08</p></td></tr>
                <tr><td style="width: 10px;"><img src="${path}/Images/image45.png"/></td><td><p class="focusAttention3">租车回家过春节</p></td><td><p class="focusAttention3">2015-02-28</p></td></tr>
                <tr><td style="width: 10px;"><img src="${path}/Images/image45.png"/></td><td><p class="focusAttention3">春节临近租车市场热 预订需要提前十五天</p></td><td><p class="focusAttention3">2015-02-05</p></td></tr>
                <tr><td style="width: 10px;"><img src="${path}/Images/image45.png"/></td><td><p class="focusAttention3">专车合法化短期内难实现</p></td><td><p class="focusAttention3">2015-01-27</p></td></tr>
            </table>
        </div>

        <div class="panel panel-default" id="industryNews1" style="background-image:url('${path}/Images/image34.jpg') ">
            <div class="panel-heading" id="industryNews2"><img src="${path}/Images/image46.jpg"/></div>
            <table id="industryNews4">
                <tr><td style="width:15px;"><img src="${path}/Images/image45.png"/></td><td><p class="industryNews3">交通部:正研究改革出租车经营权管理问题</p></td></tr>
                <tr><td><img src="${path}/Images/image45.png"/></td><td><p class="industryNews3">一卡在手畅游京津冀 未来将拓展租车餐饮等服务</p></td></tr>
                <tr><td><img src="${path}/Images/image45.png"/></td><td><p class="industryNews3">没有右脚也能租车自驾游</p></td></tr>
                <tr><td><img src="${path}/Images/image45.png"/></td><td><p class="industryNews3">世博租车赛春运　代驾租车正流行</p></td></tr>
                <tr><td><img src="${path}/Images/image45.png"/></td><td><p class="industryNews3">为什么广州上下班租车如此流行 优势在哪里</p></td></tr>
                <tr><td><img src="${path}/Images/image45.png"/></td><td><p class="industryNews3">哈尔滨7成旅游包车被预订 市民出游要提前半个月"出手"</p></td></tr>
                <tr><td><img src="${path}/Images/image45.png"/></td><td><p class="industryNews3">汽车与社区，“友友租车”的两个商业节点</p></td></tr>
                <tr><td><img src="${path}/Images/image45.png"/></td><td><p class="industryNews3">公车改革可试水公务租车</p></td></tr>
                <tr><td><img src="${path}/Images/image45.png"/></td><td><p class="industryNews3">车内暖气可不是按个开关那么简单</p></td></tr>
                <tr><td><img src="${path}/Images/image45.png"/></td><td><p class="industryNews3">租婚车有四种渠道可选择</p></td></tr>
            </table>
        </div>

        <div style="background-image:url('${path}/Images/image34.jpg') " id="last1">
            <div id="last2">
                <span>网站首页</span> | <span>关于我们</span> | <span>成功案例</span> |  <span>新闻中心</span> | <span>车型展示</span> | <span>租车指南</span> |  <span>服务范围</span> | <span>在线预订</span> | <span>联系我们</span>
            </div>
            <div style="border:1px solid #CCC; margin:0 auto; width: 1200px; margin-top: 15px;"></div>
            <div style="margin:0 auto; width: 400px; font-size: 85%;    ">
                广州驭顺汽车租赁有限公司<br/>
                联系邮箱: 2271965876@qq.com   guanchuanwei@163.com<br/>
                电话:020-38987158  手机:13533999518  QQ:2271965876<br/>
                备案号：粤ICP备16112647号-1
            </div>
        </div>


  <script>
      $(function(){
          $("#myCarousel").carousel('cycle');
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
  </script>


</html>


