<%--
  Created by IntelliJ IDEA.
  User: xunmi
  Date: 2019/10/3
  Time: 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
    <link rel="stylesheet" href="/css/style.css" type="text/css">

    <style>

        @font-face {
            font-family: 'iconfont';  /* project id 1444221 */
            src: url('//at.alicdn.com/t/font_1444221_6kquhmzen4c.eot');
            src: url('//at.alicdn.com/t/font_1444221_6kquhmzen4c.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_1444221_6kquhmzen4c.woff2') format('woff2'),
            url('//at.alicdn.com/t/font_1444221_6kquhmzen4c.woff') format('woff'),
            url('//at.alicdn.com/t/font_1444221_6kquhmzen4c.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_1444221_6kquhmzen4c.svg#iconfont') format('svg');
        }

        .iconfont {
            font-family: "iconfont" !important;
            font-size: 19px;
            font-style: normal;
            -webkit-font-smoothing: antialiased;
            -webkit-text-stroke-width: 0.2px;
            -moz-osx-font-smoothing: grayscale;
        }

        body {
            background-image: url("img/个人中心背景.jpg");
        }

        .container {
            margin-top: 20px;
            box-sizing: border-box;
        }

        .col-2 {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .box-avatar {
            display: flex;
            flex-direction: column;
            margin-bottom: 10px;
        }

        .userAvatar {
            width: 80px;
            height: 80px;
        }

        span {
            font-size: 25px;
            font-family: 楷体;
            color: rgb(252, 229, 53);
            margin-top: 8px;
        }

        .box-function {
            margin-top: 7px;
        }

        .box-function .function-ul, .service-ul {
            display: flex;
            flex-direction: column;
            list-style: none;
        }

        .function-ul {
            margin-bottom: 80%;
        }

        .user-li {
            margin-bottom: 20px;
        }

        .user-a {
            color: #eee;
            text-decoration: none;
        }

        .user-a:hover {
            color: rgb(248, 232, 48);
        }

        .user-a {
            font-size: 25px;
            font-family: 楷体;
        }

        .init {
            color: rgb(248, 232, 48);
        }

        button {
            border: none;
            width: 25px;
            height: 25px;
            background-color: rgb(250, 230, 48);
        }


        .col-10 {
            border: 3px solid #e4e6e5;
            display: flex;
        }

        label {
            font-size: 20px;
            color: rgb(250, 230, 48);
        }


/* 对左侧ul的操作 */
        .info-left-form {
            width: 55%;
            padding-top: 7%;
        }

        .info-left-ul {
            margin-left: 30px;
            padding-right: 50px;
        }

        [class*='info-left-li'] {
            margin-top: 20px;
        }


        input {
            margin-top: 10px;
            width: 95%;
            height: 40px;
            font-size: 30px;
            font-family: 楷体;
            color: #333333;
            border-radius: 5px;
        }

        /*对左侧头像的操作*/
        .info-avatar {
            display: flex;
            margin-left: 5px;
            margin-top: -30px;
            margin-bottom: 25px;
        }

        .left-button {
            width: 200px;
            height: 50px;
            font-size: 25px;
            border-radius: 5px;
            border: none;
            background-color: rgb(250, 230, 48);
        }

        .id {
            display: flex;
            flex-direction: column;
            margin-left: 30px;
            padding: 55px 0px 0px 10px;
        }

        .id-label {
            font-size: 15px;
        }

        .id-input {
            width: 103px;
            height: 20px;
            font-size: 20px;
        }

        .left-button {
            margin-top: 45px;
        }

        .info-left-avatar {
            width: 250px;
            height: 200px;
            border-radius: 5px;
        }

/* 中间竖条的操作 */
        .line {
            height: 100%;
            border-right: 5px dashed #eeeeee;
        }


/* 对右侧ul的操作 */
        [class*='info-right'] {
            display: flex;
            flex-direction: column;
            padding: 15px 5px 20px 20px;
        }

        [class*='info-right-li'] {
            margin-left: 35px;
        }

        .info-right-ul {
            padding-top: 10.1%;
        }
    </style>
</head>
<body>
<%
    User user = (User) session.getAttribute("user");
    pageContext.setAttribute("user", user);
%>
<div class="top">
    <jsp:include page="top.jsp"/>
</div>
<div class="container">
    <div class="row">
        <div class="col-2">
            <div class="box-avatar">
                <img src="${pageContext.request.contextPath}/img/${user.avatar}" class="avatar userAvatar">
                <span>${user.nickname}</span>
            </div>

            <div class="box-function">
                <ul class="function-ul">
                    <li class="user-li">
                        <button>
                            <i class="iconfont">&#xe610;</i>
                        </button>
                        <a href="" class="user-a init">个人资料</a>
                    </li>
                    <li class="user-li">
                        <button>
                            <i class="iconfont">&#xe60f;</i>
                        </button>
                        <a href="" class="user-a">个人爱好</a>
                    </li>
                    <li class="user-li">
                        <button>
                            <i class="iconfont">&#xe670;</i>
                        </button>
                        <a href="" class="user-a">个人收藏</a>
                    </li>
                    <li class="user-li">
                        <button>
                            <i class="iconfont">&#xe620;</i>
                        </button>
                        <a href="" class="user-a">通讯录</a>
                    </li>
                    <li class="user-li">
                        <button>
                            <i class="iconfont">&#xe64b;</i>
                        </button>
                        <a href="" class="user-a">系统消息</a>
                    </li>
                </ul>
            </div>

            <div class="box-service">
                <ul class="service-ul">
                    <li class="user-li">
                        <button>
                            <i class="iconfont">&#xe619;</i>
                        </button>
                        <a href="" class="user-a">在线服务</a>
                    </li>
                    <li class="user-li">
                        <button>
                            <i class="iconfont">&#xe671;</i>
                        </button>
                        <a href="" class="user-a">官方邮箱</a>
                    </li>
                    <li class="user-li">
                        <button>
                            <i class="iconfont">&#xe946;</i>
                        </button>
                        <a href="" class="user-a">问题解答</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col-10">
            <form action="/user-information" method="post" class="info-left-form">
                <ul class="info-left-ul">
                    <div class="info-avatar">
                        <img src="${pageContext.request.contextPath}/img/${user.avatar}" class="info-left-avatar">
                        <div class="id">
                            <label class="id-label">
                                用户id:
                            </label>
                            <input type="text" readonly="readonly" value="${user.id}" class="id-input" name="id">
                            <input type="submit" class="left-button" value="保存信息">
                        </div>
                    </div>
                    <li class="info-left-li-nick">
                        <label>
                            昵称:
                        </label>
                        <input type="text" name="nickname" value="${user.nickname}">
                    </li>
                    <li class="info-left-li-school">
                        <label>
                            所在的学校
                        </label>
                        <input type="text" name="school" value="${user.school}">
                    </li>
                    <li class="info-left-li-department">
                        <label>
                            所在的院系
                        </label>
                        <input type="text" name="department" value="${user.department}">
                    </li>
                </ul>
            </form>
            <div class="line"></div>
            <ul class="info-right-ul">
                <li class="info-right-li-account">
                    <label>
                        账号
                    </label>
                    <input type="text" name="account" readonly="readonly" value="${user.account}">
                </li>
                <li class="info-right-li">
                    <label>
                        身份:
                    </label>
                    <input type="text" readonly="readonly" class="identity" value="学生">
                </li>
                <li class="info-right-li">
                    <label>
                        性别:
                    </label>
                    <input type="text" name="sex" readonly="readonly" class="sex" value="${user.sex}">
                </li>
                <li class="info-right-li">
                    <label>
                        加入时间：
                    </label>
                    <input type="text" readonly="readonly" class="name" value="${user.joinDate}">
                </li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>
