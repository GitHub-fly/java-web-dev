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
 * @ClassName SearchBook
 * @Description TODO
 * @Date 2019/10/6
 * @Version 1.0
 **/
@WebServlet(urlPatterns = "/searchBook")
public class SearchBook extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 解决乱码问题
        req.setCharacterEncoding("UTF-8");
        // 去参数
        String n = req.getParameter("name");
        String name = "《" + n + "》";
        // 从全局变量中取出用户信息
        ServletContext sc = this.getServletContext();
        List<Book> bookList = (List<Book>) sc.getAttribute("bookList");
        req.setAttribute("bookList", bookList);
        // 遍历，查找指定书名的book信息
        Book b = null;
        for (Book book : bookList) {
            // 找到匹配的book，存入request，页面转发到图书详情页，地址栏不变
            if (book.getName().equals(name)) {
                b = book;
            }
        }
        if (b != null) {
            req.setAttribute("book", b);
            req.getRequestDispatcher("/book_detail.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("/related_book").forward(req, resp);
        }
    }
}
