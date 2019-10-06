package com.servlet;

import com.entity.Book;

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
 * @ClassName RelatedBookServlet
 * @Description TODO
 * @Date 2019/10/4
 * @Version 1.0
 **/
@WebServlet(urlPatterns = "/related_book")
public class RelatedBookServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获得各个Servlet共享的对象
        ServletContext sc = this.getServletContext();
        // 取得全局应用对象的变量
        List<Book> bookList = (List<Book>) sc.getAttribute("bookList");
        // 粗不如request
        req.setAttribute("bookList", bookList);
        req.getRequestDispatcher("/related_book.jsp").forward(req, resp);
    }
}
