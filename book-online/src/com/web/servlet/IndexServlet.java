package com.web.servlet;

import com.web.entity.Book;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author xunmi
 * @ClassName IndextSeervlet
 * @Description TODO
 * @Date 2019/9/28
 * @Version 1.0
 **/

@WebServlet(urlPatterns = "/index")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获得各个Servlet共享的对象
        ServletContext sc = this.getServletContext();
        // 取得全局应用对象中的变量
        List<Book> bookList = (List<Book>) sc.getAttribute("bookList");
        // 存入request
        req.setAttribute("bookList", bookList);
        resp.setContentType("text/plain;charset=UTF-8");
        resp.getWriter().print(bookList.toString());
        // 通过服务器端转发，将数据带过去，并保持地址栏不变
//        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }
}
