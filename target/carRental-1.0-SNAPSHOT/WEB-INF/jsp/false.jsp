<%--
  Created by IntelliJ IDEA.
  User: llxxdd
  Date: 2017/10/10
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int kind = Integer.parseInt(String.valueOf(request.getAttribute("kind")));
%>
<html>
<head>
    <title>Success</title>
</head>
<body>
    <span>操作失败，5秒后将跳转回上一个页面</span><br/>
    <span>还剩</span><span id="num"></span><span>秒</span>
</body>
    <script>
        $(function () {
           jump(5);
        });
        function  jump(count) {
            window.setTimeout(function () {
                count--;
                if(count > 0){
                    $("#num").attr("innerHtml", count);
                    jump(count);
                }else{
                    <%
                        if(kind == 1){
                    %>
                            location.href="${path}/merchantsJoin.html";
                    <%
                        }else{
                    %>
                            location.href="${path}/onlineBooking.html";
                    <%
                        }
                    %>
                }
            }, 1000);
        }
    </script>
</html>
