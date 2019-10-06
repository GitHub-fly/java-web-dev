<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 2019/9/18
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
</head>
<body>
    <h2>个人中心</h2>
    <%=session.getAttribute("username")%>
</body>
</html>
