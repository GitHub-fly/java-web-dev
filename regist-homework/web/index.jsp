<%--
  Created by IntelliJ IDEA.
  User: xunmi
  Date: 2019/9/28
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
  </head>
  <body>
  <h2>欢迎您：</h2>
  <%=request.getAttribute("username")%>
  </body>
</html>
