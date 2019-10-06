<%--
  Created by IntelliJ IDEA.
  User: xunmi
  Date: 2019/10/3
  Time: 18:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.entity.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍详情页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style>

        body {
            background-color: rgb(224, 247, 250);
        }

        h3 {
            color: rgb(73, 73, 73);
            font-size: 25px;
            font-family: 楷体;
        }

        .col-4 img {
            margin: 10px 5px 20px 5px;
            width: 80%;
            height: 75%;
        }

        hr {
            width: 90%;
            color: #eee;
            margin-top: 10px;
        }

        .col-6 img {
            width: 100%;
            height: 100%;
            border-radius: 20px;
        }

        .search {
            height: 80px;
            display: flex;
            align-items: center;
            padding-left: 8%;
            margin-bottom: 10px;
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

        @font-face {
            font-family: 'iconfont';  /* project id 1444221 */
            src: url('//at.alicdn.com/t/font_1444221_w92e6xmtvsa.eot');
            src: url('//at.alicdn.com/t/font_1444221_w92e6xmtvsa.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_1444221_w92e6xmtvsa.woff2') format('woff2'),
            url('//at.alicdn.com/t/font_1444221_w92e6xmtvsa.woff') format('woff'),
            url('//at.alicdn.com/t/font_1444221_w92e6xmtvsa.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_1444221_w92e6xmtvsa.svg#iconfont') format('svg');
        }

        .col-4 {
            margin-left: -10px;
            height: 500px;
        }

        .iconfont {
            font-family: "iconfont" !important;
            font-size: 25px;
            font-style: normal;
            -webkit-font-smoothing: antialiased;
            -webkit-text-stroke-width: 0.2px;
            -moz-osx-font-smoothing: grayscale;
        }

        .info-top {
            display: flex;
            margin-left: -30px;
        }

        .info-top-p {
            margin-top: 10px;
            font-size: 40px;
            font-family: 楷体;
        }

        .top-p-span, .top-p-span-span {
            font-size: 15px;
            margin-top: 30px;
            margin-left: 30px;
        }

        .top-p-span-span {

        }


        .info-mid {
            width: 90%;
            margin-top: 3%;
            margin-left: -15px;
        }

        .info-mid-p {
            text-indent: 2em;
            line-height: 30px;
            font-size: 20px;
            font-family: 楷体;
        }


        .info-foot {
            display: flex;
            margin-top: 33px;
            padding-right: 20px;
            margin-bottom: 100px;
        }

        .info-foot-button-1, .info-foot-button-2 {
            width: 150px;
            height: 50px;
            border-radius: 5px;
            margin-right: 30px;
            font-size: 20px;
            font-family: 宋体;
            color: #333333;
            font-weight: 600;
            border: 1px solid red;
            background-color: white;
        }

        .info-foot-button-1:hover, .info-foot-button-2:hover {
            background-color: rgb(201, 72, 60);
        }

        .info-foot-label {
            margin-top: 19px;
            font-size: 14px;
        }

    </style>
</head>
<body>
<%
    Book book = (Book) request.getAttribute("book");
    pageContext.setAttribute("book", book);
%>

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
        <div class="col-8">
            <span class="info-span">
                当前位置:相关书籍 > ${book.name}
            </span>
            <hr>
            <div class="row">
                <div class="col-4">
                    <img src="/img/${book.cover}">
                </div>
                <div class="col-8">
                    <div class="info-top">
                        <p class="info-top-p">${book.name}</p>
                        <span class="top-p-span">${book.author}</span>
                        <span class="top-p-span-span">
                            著
                        </span>
                    </div>

                    <div class="info-mid">
                        <p class="info-mid-p">${book.info}</p>
                    </div>

                    <div class="info-foot">
                        <button class="info-foot-button-1">
                            理解阅读
                        </button>
                        <button class="info-foot-button-2">
                            加入书架
                        </button>

                        <label class="info-foot-label">
                            <i class="iconfont">&#xe616;</i>
                            手机阅读
                        </label>
                    </div>

                </div>
            </div>
        </div>
        <div class="col-4">
            <jsp:include page="recommend.jsp"/>
        </div>
    </div>
</div>
</body>
</html>
