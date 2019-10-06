<%--
  Created by IntelliJ IDEA.
  User: xunmi
  Date: 2019/10/3
  Time: 9:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.entity.User" %>
<%@ page import="com.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User user = (User) session.getAttribute("user");
    pageContext.setAttribute("user", user);
%>

<style type="text/css">
    .login-li {
        margin-right: 60px;
    }

    .card-info-user {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        margin-right: 45%;
    }

    .username {
        font-size: 10px;
        margin-top: 2px;
        /*margin-left: 5px;*/
        color: #333333;
        font-family: 黑体;
    }

    .right-ul {
        margin-right: 3%;
    }

</style>

<ul class="left-ul">
    <li>
        <a href="/new_index" class="top-a home">首 页</a>
    </li>
    <li>
        <a href="/red_history" class="top-a">红色历史</a>
    </li>
    <li>
        <a href="/red_history" class="top-a">红色人物</a>
    </li>
    <li>
        <a href="/red_history" class="top-a">红色遗址</a>
    </li>
    <li>
        <a href="/related_book" class="top-a">相关书籍</a>
    </li>
    <li>
        <a href="/red_history" class="top-a">更 多</a>
    </li>
</ul>

<ul class="right-ul">

        <%
            if (user != null) {
        %>
    <li class="card-info-user">
        <a href="/user">
            <img src="${pageContext.request.contextPath}/img/${user.avatar}" class="avatar">
        </a>
        <span class="username">${user.nickname}</span>
    </li>

    <li>
        <a href="/logout" class="top-a">退出</a>
    </li>

    <%
        } else {
    %>
    <li class="login-li">
        <a href="${pageContext.request.contextPath}/login" >去登录</a>
    </li>
    <%
        }
    %>
</ul>
