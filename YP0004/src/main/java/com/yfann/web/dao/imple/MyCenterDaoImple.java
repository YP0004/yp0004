package com.yfann.web.dao.imple;

import com.yfann.web.dao.MyCenterDao;
import com.yfann.web.dao.common.imple.BaseDaoImple;
import com.yfann.web.model.User;
import org.springframework.stereotype.Repository;

/**
 * Created by Simon on 2015/4/13.
 */
@Repository("myCenterDao")
public class MyCenterDaoImple extends BaseDaoImple<User> implements MyCenterDao<User>{

}
