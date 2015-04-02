package com.yfann.web.dao.imple;

import com.yfann.web.dao.SystemDao;
import com.yfann.web.dao.common.imple.BaseDaoImple;
import com.yfann.web.model.User;
import org.springframework.stereotype.Repository;

/**
 * 系统Dao
 */
@Repository("systemDao")
public class SystemDaoImple extends BaseDaoImple<User> implements SystemDao<User> {
}
