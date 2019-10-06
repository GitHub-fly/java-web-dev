package com.servlet;

import com.entity.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * @author xunmi
 * @ClassName UserInformationServlet
 * @Description TODO
 * @Date 2019/10/6
 * @Version 1.0
 **/
@WebServlet(urlPatterns = "/user-information")
public class UserInformationServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 处理乱码问题
        req.setCharacterEncoding("UTF-8");
        // 去参数
        String nickname = req.getParameter("nickname");
        String school = req.getParameter("school");
        String department = req.getParameter("department");
        String id = req.getParameter("id");

        // 从全局变量中取出用户信息
        ServletContext sc = this.getServletContext();
        List<User> userList = (List<User>) sc.getAttribute("userList");
        // 遍历，查找指定account的用户
        for (User user : userList) {
            if (Integer.parseInt(id) == user.getId()) {
                // 找到匹配的account，修改用户信息并存入request，页面重新转发到本页面，跟新数据
                user.setNickname(nickname);
                user.setSchool(school);
                user.setDepartment(department);
                HttpSession session = req.getSession();
                session.setAttribute("user", user);
                resp.sendRedirect("/user");
            }
        }
    }
}
