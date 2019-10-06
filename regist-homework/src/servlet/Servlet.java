package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @author xunmi
 * @date 2019/9/21 17:35
 */

@WebServlet(urlPatterns = "/log")
public class Servlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 乱码：
        req.setCharacterEncoding("UTF-8");
        // 取参
        String username = req.getParameter("username");
        String password = req.getParameter("password");

//        // 第一种跳转方式：
//        req.setAttribute("username", username);
//        req.getRequestDispatcher("index.jsp").forward(req, resp);

        // 第二种跳转方式：
        HttpSession session = req.getSession();
        session.setAttribute("username", username);
        resp.sendRedirect("index1.jsp");
    }
}
