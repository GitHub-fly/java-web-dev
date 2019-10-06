<%--
  Created by IntelliJ IDEA.
  User: xunmi
  Date: 2019/10/5
  Time: 18:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.entity.Book" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<style type="text/css">
    @font-face {
        font-family: 'iconfont';  /* project id 1444221 */
        src: url('//at.alicdn.com/t/font_1444221_v7uwv6defjb.eot');
        src: url('//at.alicdn.com/t/font_1444221_v7uwv6defjb.eot?#iefix') format('embedded-opentype'),
        url('//at.alicdn.com/t/font_1444221_v7uwv6defjb.woff2') format('woff2'),
        url('//at.alicdn.com/t/font_1444221_v7uwv6defjb.woff') format('woff'),
        url('//at.alicdn.com/t/font_1444221_v7uwv6defjb.ttf') format('truetype'),
        url('//at.alicdn.com/t/font_1444221_v7uwv6defjb.svg#iconfont') format('svg');
    }

    .iconfont {
        font-family: "iconfont" !important;
        font-size: 25px;
        font-style: normal;
        -webkit-font-smoothing: antialiased;
        -webkit-text-stroke-width: 0.2px;
        -moz-osx-font-smoothing: grayscale;
    }

</style>

<%
    List<Book> bookList = (List<Book>) request.getAttribute("bookList");
%>
<h3>经典推荐</h3>
<hr>
<ul class="show-right">
    <%
        for (int i = 0; i < 9; i++) {
            Book book = bookList.get(i);
            pageContext.setAttribute("book", book);
            pageContext.setAttribute("i", i);

            int num = (int) (Math.random() * 50000);
            pageContext.setAttribute("num", num);
    %>
    <div class="box">
        <label>
            <span class="recommend-span">${i+1}</span>
            <a href="${pageContext.request.contextPath}/detail/${book.id}" class="right-a">
                ${book.name}
            </a>
        </label>
        <div class="right-num">
            <i class="iconfont num-icon">&#xe654;</i>
            <span class="span-num">${num}</span>
        </div>
    </div>
    <%
        }
    %>
</ul>
