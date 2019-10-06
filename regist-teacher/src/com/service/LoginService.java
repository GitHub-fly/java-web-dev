package com.service;

/**
 * @author xunmi
 * @date 2019/9/19 15:13
 * 登录功能类
 */

public class LoginService {
    /**
     * 登录功能
     * @param username
     * @param password
     * @return boolean
     */
    public boolean isLogin(String username, String password){
        boolean flag = false;
        if ("xunmi".equals(username.trim()) && "xxx".equals(password.trim())) {
            flag = true;
        }
        return flag;
    }
}
