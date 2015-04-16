package com.yfann.web.service.imple;

import com.yfann.web.dao.SystemDao;
import com.yfann.web.model.User;
import com.yfann.web.service.SystemService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 系统Service
 */
@Service("systemService")
public class SystemServiceImple implements SystemService{
    @Autowired
    private SystemDao systemDao;

    /**
     * 更新用户信息
     *
     * @param user
     */
    @Override
    public void updateUserInfo(User user) {
        if (user != null && StringUtils.isNotBlank(user.getId())){
            systemDao.updateModel(user);
        }
    }

    /**
     * 根据userId查询用户
     *
     * @param userId
     * @return
     */
    @Override
    public User findUserByUserId(String userId) {
        if (StringUtils.isNotBlank(userId)){
            return systemDao.findUserByUserId(userId);
        }
        return null;
    }

    /**
     * 注册
     *
     * @param user
     */
    @Override
    public void regist(User user) {
        systemDao.saveModel(user);
    }

    /**
     * 登陆
     *
     * @param user
     * @return
     */
    @Override
    public User login(User user) {
        return systemDao.login(user);
    }
}
