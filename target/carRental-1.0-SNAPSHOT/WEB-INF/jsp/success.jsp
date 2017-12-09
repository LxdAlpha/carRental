<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: llxxdd
  Date: 2017/10/10
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<%
    int kind = Integer.parseInt(String.valueOf(request.getAttribute("kind")));
%>
<html>
<head>
    <title>Success</title>
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
<body>
    <span>操作成功，5秒后将跳转回上一个页面</span><br/>
    <span>还剩</span><span id="num">5</span><span>秒</span><br/>
    <%
        if(kind == 1){
    %>
            <a href="${path}/merchantsJoin.html" id="alink">马上跳转</a>
    <%
        }else{
    %>
            <a href="${path}/onlineBooking.html" id="alink">马上跳转</a>
    <%
        }
    %>
</body>
    <script>
        $(function () {
           jump(5);
        });
        function jump(count) {
            window.setTimeout(function(){
                count--;
                if(count > 0) {
                    $('#num').html(count);
                    jump(count);
                } else {
                    document.getElementById("alink").click();
                    //window.location.href("${path}/onlineBooking.html");
                }
            }, 1000);
        }
    </script>
</html>
