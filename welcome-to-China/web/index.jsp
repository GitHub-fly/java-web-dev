<%--
  Created by IntelliJ IDEA.
  User: xunmi
  Date: 2019/9/30
  Time: 19:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>初始界面</title>
    <style type="text/css">
        * {
            box-sizing: content-box;
            margin: 0;
            padding: 0;
        }

        body {
            background-image: url(img/背景.jpg);
            background-size: cover;
            display: flex;
            background-repeat: no-repeat;
        }

        p {
            margin-top: 14%;
            margin-left: 25%;
            font-size: 50px;
            font-family: "楷体";
            color: #6d4c41;
        }

        @font-face {
            font-family: 'iconfont';
            /* project id 1434154 */
            src: url('//at.alicdn.com/t/font_1434154_o4oeh4fis4l.eot');
            src: url('//at.alicdn.com/t/font_1434154_o4oeh4fis4l.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_1434154_o4oeh4fis4l.woff2') format('woff2'),
            url('//at.alicdn.com/t/font_1434154_o4oeh4fis4l.woff') format('woff'),
            url('//at.alicdn.com/t/font_1434154_o4oeh4fis4l.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_1434154_o4oeh4fis4l.svg#iconfont') format('svg');
        }

        .iconfont {
            font-family: "iconfont" !important;
            font-size: 50px;
            font-style: normal;
            -webkit-font-smoothing: antialiased;
            -webkit-text-stroke-width: 0.2px;
            -moz-osx-font-smoothing: grayscale;
            color: #263238;
        }

        a {
            color: black;
            text-decoration: none;
            margin-top: 14%;
            margin-left: 40px;
        }

        .box {
            position: absolute;
            top: 49%;
            left: 8%;
            display: flex;
            height: 350px;
            width: 650px;
        }

        img {
            padding-right: 20px;
            height: 100%;
            width: 100%;
        }

    </style>
</head>
<body>
<p>了解更多红色经典请点击登录</p>
<a href="/login">
    <i class="iconfont">&#xe62b;</i>
</a>

<div class="box">
    <img src="img/男兵方阵.jpg">
    <img src="img/女阵.jpg">
</div>

</body>
</html>
