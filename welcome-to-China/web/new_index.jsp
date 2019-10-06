<%--
  Created by IntelliJ IDEA.
  User: xunmi
  Date: 2019/10/4
  Time: 18:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">

        body {
            background-color: rgb(224, 247, 250);
        }

        .top {
            opacity: 95%;
        }

        .video {
            width: 100%;
            height: 91.4%;
            object-fit: fill;
        }

    </style>

</head>
<body>
<div class="top">
    <jsp:include page="top.jsp"/>
</div>

<video loop src="/video/视频.mp4" class="video" controls="controls" autoplay="autoplay"></video>
</body>
</html>
