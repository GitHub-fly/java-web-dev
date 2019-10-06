package com.servlet;

import com.entity.Book;
import com.entity.User;
import com.service.UserService;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * @author xunmi
 * @ClassName servlet
 * @Description 登录功能的实现
 * @Date 2019/9/30
 * @Version 1.0
 **/
@WebServlet(urlPatterns = "/login.do")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 处理乱码问题
        req.setCharacterEncoding("UTF-8");
        // 取出请求参数
        String account = req.getParameter("account");
        String password = req.getParameter("password");
        UserService userService = new UserService();
        // 获得用户列表数据（创建全局变量）
        ServletContext sc = this.getServletContext();
        List<User> userList = (List<User>) sc.getAttribute("userList");
        // 将数据传到userService中
        userService.setUserList(userList);
        // 调用登录功能，得到用户对象
        User user = userService.login(account, password);
        if (user != null) {
            HttpSession session = req.getSession();
            session.setAttribute("user", user);
            resp.sendRedirect("/new_index");
        } else {
            resp.setContentType("text/html;charset=UTF-8");
            PrintWriter writer = resp.getWriter();
            writer.print("<script>alert('登陆失败');location.href='/login'</script>");
        }

    }


}
