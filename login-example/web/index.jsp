<%@ page import="com.login.entity.Book" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: xunmi
  Date: 2019/9/28
  Time: 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
</head>
<style type="text/css">
    * {
        margin: 0;
        padding: 0;
    }

    /*header {*/
    /*    height: 50px;*/
    /*    background-color: rgb(238, 110, 115);*/
    /*    display: flex;*/
    /*    align-items: center;*/
    /*    justify-content: space-between;*/
    /*    padding-left: 10px;*/
    /*    padding-right: 10px;*/
    /*}*/

    /*.left {*/
    /*    flex: 0 0 60%;*/
    /*}*/

    /*.left ul {*/
    /*    display: flex;*/
    /*    list-style: none;*/
    /*}*/

    /*.left ul li {*/
    /*    width: 50px;*/
    /*    margin-right: 10px;*/
    /*}*/

    /*.left ul li a {*/
    /*    text-decoration: none;*/
    /*    color: #eee;*/
    /*}*/

    /*.left ul li a:hover {*/
    /*    color: #fff;*/
    /*}*/

    /*.search {*/
    /*    height: 50px;*/
    /*    background-color: #ddd;*/
    /*    margin-bottom: 10px;*/
    /*}*/

    /*.container {*/
    /*    width: 85%;*/
    /*    margin: 0 auto;*/
    /*    height: 600px;*/
    /*    background-color: rgb(231, 190, 85);*/

    /*}*/


    .container {
        width: 80%;
        margin: 0 auto;
        background-color: #ddd;
        display: flex;
        padding: 10px 10px 10px 10px;
        flex-wrap: wrap;
    }

    .box {
        flex: 0 0 20%;
        height: 280px;
        margin: 5px 5px 5px 5px;
        background-color: #fff;
    }

    .box img {
        width: 90%;
        height: 70%;
    }

</style>
</head>
<body>
<h2>主页</h2>
<%
    String account = (String) session.getAttribute("account");
    if (account != null) {
        pageContext.setAttribute("account", account);
%>
${account}
<%
} else {
%>
<h3><a href="${pageContext.request.contextPath}/">去登陆</a></h3>
<%
    }
%>
<hr>
<h2>图书信息</h2>
<%
    List<Book> bookList = (List<Book>) request.getAttribute("bookList");
    pageContext.setAttribute("size", bookList.size());
%>
一共${size}本书
<div class="container">
    <%
        for (Book book : bookList) {
            pageContext.setAttribute("book", book);
    %>

    <div class="box">
        <img src="images/${book.cover}" alt="">
        <p>${book.name}</p>
        <p>${book.author}</p>
    </div>
    <%
        }
    %>
</div>


<%--<header>--%>
<%--    --%>
<%--    <div class="left">--%>
<%--        <ul>--%>
<%--            <li>--%>
<%--                <a href="">首页</a>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <a href="">精选</a>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <a href="">浏览</a>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <a href="">导航</a>--%>
<%--            </li>--%>
<%--        </ul>--%>
<%--    </div>--%>
<%--    <div class="right">--%>
<%--        <%--%>
<%--            if (user != null) {--%>
<%--                pageContext.setAttribute("user", user);--%>
<%--        %>--%>
<%--        <img src="imgages/${user.avatar}" alt="">--%>
<%--        <%--%>
<%--            } else {--%>
<%--        %>--%>
<%--        <a href="${pageContext.request.contextPath}/login.html">去登陆</a>--%>
<%--        <%--%>
<%--            }--%>
<%--        %>--%>
<%--    </div>--%>
<%--</header>--%>
<%--<div class="search">--%>

<%--</div>--%>
<%--<div class="container">--%>

<%--</div>--%>
</body>
</html>
