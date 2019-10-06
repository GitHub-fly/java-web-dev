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
 * @ClassName NewIndexServlet
 * @Description 首页的url转发
 * @Date 2019/10/2
 * @Version 1.0
 **/
@WebServlet(urlPatterns = "/new_index")
public class NewIndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("new_index.jsp").forward(req, resp);
    }
}
