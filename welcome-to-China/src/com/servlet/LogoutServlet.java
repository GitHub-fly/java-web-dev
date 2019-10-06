package com.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @author xunmi
 * @ClassName LogoutServlet
 * @Description 注销登录，实现初始页面url转发
 * @Date 2019/10/3
 * @Version 1.0
 **/
@WebServlet(urlPatterns = "/logout")
public class LogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        // 让session对象失效
        session.invalidate();
        // 重定向到/index，跳回初始页面
        resp.sendRedirect("/");
    }
}
