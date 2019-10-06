<%--
  Created by IntelliJ IDEA.
  User: xunmi
  Date: 2019/10/2
  Time: 18:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">

        body {
            background-color: rgb(224, 247, 250);
        }

        .search {
            height: 80px;
            display: flex;
            align-items: center;
            padding-left: 8%;
            margin-bottom: 10px;
        }

        .top, .search {
            opacity: 95%;
        }

        .find-form {
            flex: 0 0 40%;
            display: flex;
        }

        .search-input {
            height: 40px;
            width: 85%;
            border: none;
            border-radius: 3px;
            margin-left: 50px;
            font-size: 15px;
        }

        button {
            width: 40px;
            height: 40px;
            border-radius: 3px;
            background-color: skyblue;
            outline: none;
            border: none;
        }

        h3 {
            font-size: 25px;
            font-family: 楷体;
        }

        .card {
            height: 180px;
            margin: 20px 5px 20px 5px;
        }

        .card img {
            width: 100%;
            height: 90%;
        }

        .card p {
            font-size: 13px;
            color: #9b9b9b;
        }

        .col-4 img {
            margin: 10px 5px 20px 5px;
            width: 80%;
        }

        hr {
            width: 90%;
            color: #eee;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<%
    List<Book> bookList = (List<Book>) request.getAttribute("bookList");
%>
<%-- 使用jsp的include动作，将top.jsp页面包含进来，这个顶部导航可以给各个页面共享 --%>
<div class="top">
    <jsp:include page="top.jsp"/>
</div>
<div class="search">
    <h1>红色经典</h1>
    <form action="/searchBook" method="get" class="find-form">
        <input type="text" placeholder="大家都在搜  '新青年'" class="search-input" name="name">
        <button>
            <i class="iconfont">&#xe604;</i>
        </button>
    </form>
</div>
<div class="container">
    <div class="row">
        <%-- 左侧2/3主体部分 --%>
        <div class="col-8">
            <h3>红色书籍</h3>
            <hr>
            <div class="row">
                <%-- 遍历图书数据集合，将每个图书对象放入页面对象 --%>
                <%
                    for (Book book : bookList) {
                        pageContext.setAttribute("book", book);
                %>
                <%-- 引用col-2表示每行显示五本，再追加card细节样式 --%>
                <div class="col-2 card">
                    <%-- 点击每本图书封面图，地址栏跳转为/detail/id，进入图书详情Servlet --%>
                    <a href="${pageContext.request.contextPath}/detail/${book.id}">
                        <img src="img/${book.cover}">
                    </a>
                    <p style="color: rgb(51, 119, 178)">${book.name}</p>
                        <p style="color: rgb(43, 43, 43)">${book.author}</p>
                </div>
                <%
                    }
                %>
            </div>
        </div>
        <%-- 右侧1/3经典推荐 --%>
        <div class="col-4">
            <jsp:include page="recommend.jsp"/>
        </div>
    </div>
</div>
<footer>
    <ul>
        <li>@2018-2019</li>
        <li>niit.edu.cn</li>
        <li>南工院计算机学院</li>
        <li>工业中心-2-427</li>
    </ul>
    <ul>
        <li>联系我们</li>
        <li>帮助中心</li>
        <li>法律声明</li>
        <li>移动合作</li>
    </ul>
</footer>
</body>
</html>
