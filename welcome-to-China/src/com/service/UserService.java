package com.service;

import com.entity.User;
import com.util.Md5Util;

import java.util.List;

/**
 * @author xunmi
 * @ClassName UserService
 * @Description TODO
 * @Date 2019/9/30
 * @Version 1.0
 **/
public class UserService {

    private List<User> userList;

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }

    /**
     *  判断用户登录是否成功的方法
     */
    public User login(String account, String password) {
        for (User user : userList) {
            if (user.getAccount().equals(account) && user.getPassword().equals(Md5Util.crypt(password))) {
                // 验证成功返回user对象
                return user;
            }
        }
        // 验证失败返回null值
        return null;
    }

}
