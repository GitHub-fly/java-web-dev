package com.http;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/**
 * @author xunmi
 * 返回图片类型的响应
 */
@WebServlet(urlPatterns = "/image.do")
public class ImageResponse extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 第一步，将图片写入字节数组
        // 获得Web根目录
        String path = super.getServletContext().getRealPath("/");
        // 通过根路径下images的图片文件创建File对象
        File imgFile = new File(path + "images/me.jpg");
        // 通过图片文件创建字节输入流
        OutputStream outputStream = new FileOutputStream(imgFile);
        // 创建文件长度大小的字节输入数组
        byte[] b = new byte[(int)imgFile.length()];
        // 将图片文件通过字节输入流写入字节数组
        outputStream.write(b);

        // 第二步，将字节数组输入到客户端
        // 获取响应对象的输出流（字节流）
        OutputStream os = resp.getOutputStream();
        // 将字节数组通过响应对象的输出流输出
        outputStream.write(b);
        // 关闭流
        os.close();
        outputStream.close();
    }
}
