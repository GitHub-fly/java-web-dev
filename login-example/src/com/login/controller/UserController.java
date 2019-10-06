package com.login.controller;

import com.login.entity.User;
import com.login.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @ClassName UserController
 * @Description 拦截/login请求，处理用户登录功能
 * @author xunmi
 * @Date 2019/9/26
 * @Version 1.0
 **/
@WebServlet(urlPatterns = "/login")
public class UserController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 处理乱码问题
        req.setCharacterEncoding("UTF-8");
        // 取出请求参数
        String account = req.getParameter("account");
        String password = req.getParameter("password");
        // 创建UserService对象
        UserService us = new UserService();
        // 初始化数据
        us.init();
        // 调用登录功能，得到用户对象
        User user = us.userLogin(account, password);
        if (user != null) {
            HttpSession session = req.getSession();
            session.setAttribute("account", account);
            resp.sendRedirect("index");
        } else {
            resp.setContentType("text/html; charset = UTF-8");
            PrintWriter writer = resp.getWriter();
            writer.print("<script>alert('登陆失败');location.href='/'</script>");
        }
    }
}
