package com.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author xunmi
 * @ClassName RedHistory
 * @Description TODO
 * @Date 2019/10/6
 * @Version 1.0
 **/
@WebServlet(urlPatterns = "/red_history")
public class RedHistory extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/red_history.jsp").forward(req, resp);
    }
}
