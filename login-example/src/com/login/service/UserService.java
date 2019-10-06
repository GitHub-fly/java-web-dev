package com.login.service;
import com.login.entity.User;
import com.login.util.Md5Util;

import java.util.Arrays;
import java.util.List;

/**
 * @author xunmi
 * @ClassName UserService
 * @Description 用户业务逻辑类
 * @Date 2019/9/26
 * @Version 1.0
 **/
public class UserService {

    private List<User> userList;

    /**
     * @param
     * @return List<USer>
     * @Description 用户数据初始化方法
     **/
    public List<User> init() {
        User[] users = {
                new User(1, "aaa@qq.com", "698d51a19d8a121ce581499d7b701668", "松山湖", "user1.jpg"),
                new User(2, "bbb@qq.com", "698d51a19d8a121ce581499d7b701668", "羊山北路", "user2.jpg"),
                new User(3, "ccc@qq.com", "698d51a19d8a121ce581499d7b701668", "大学城",  "user3.jpg")
        };
        userList = Arrays.asList(users);
        return userList;
    }

    /**
     * @Description 用户登录，成功返回用户对象，失败返回null
     * @param account 用户名
     * @param password 密码
     * @return 对象信息
     **/
    public User userLogin(String account, String password) {
        for (User user : userList) {
            if(user.getAccount().equals(account) && user.getPassword().equals(Md5Util.crypt(password))) {
                return user;
            }
        }
        return null;
    }

    public static void main(String[] args) {
        UserService us = new UserService();
        us.init();
        User user = us.userLogin("aaa@qq.com", "111");
        if (user != null) {
            // 登录成功，将用户信息记入session，页面跳转、index，进入IndexServlet
            System.out.println("登录成功，用户信息如下：");
            System.out.println(user);
        } else {
            System.out.println("登录失败");
        }
    }
}
