package com.http;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author xunmi
 * 返回text/html类型的响应
 */
@WebServlet(urlPatterns = {"/getTextHtml.do"})
public class TextHtmlResponse extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        // 获取名为type的请求参数
        String type = req.getParameter("type") ;
        // 设置响应对象MIME类型
        resp.setContentType("text/html;charset=UTF-8");
        // 设置响应字符集
        resp.setCharacterEncoding("UTF-8");
        // 通过请求对象获得输出流（PrintWriter为字符包装流）
        PrintWriter out = resp.getWriter();
        // 通过out对象向客户端输出HTML内容
        out.println("<HTML><title>get</title><body style='background-color:#333;'><p style='color:red'>"
                    + type + "</p></body></HTML>");
        // 关闭输出流
        out.close();
    }
}
