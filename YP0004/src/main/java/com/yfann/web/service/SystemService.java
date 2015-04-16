package com.yfann.web.service;

import com.yfann.web.model.User;

/**
 * Created by Simon on 2015/4/1.
 */
public interface SystemService {

    /**
     * 更新用户信息
     * @param user
     */
    public void updateUserInfo(User user);
    /**
     * 根据userId查询用户
     * @param userId
     * @return
     */
    public User findUserByUserId(String userId);
    /**
     * 注册
     * @param user
     */
    public void regist(User user);
    /**
     * 登陆
     * @param user
     * @return
     */
    public User login(User user);
}
