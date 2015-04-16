package com.yfann.web.dao;

import com.yfann.web.dao.common.BaseDao;
import com.yfann.web.model.User;

/**
 * 系统Dao
 */
public interface SystemDao<T> extends BaseDao<T> {

    /**
     * 根据userId查询用户
     *
     * @param userId
     * @return
     */
    public User findUserByUserId(String userId);

    /**
     * 登陆
     * @param user
     * @return
     */
    public User login(User user);
}
