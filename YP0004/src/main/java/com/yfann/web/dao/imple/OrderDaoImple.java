package com.yfann.web.dao.imple;

import com.yfann.web.dao.OrderDao;
import com.yfann.web.dao.common.imple.BaseDaoImple;
import com.yfann.web.model.Order;
import org.springframework.stereotype.Repository;

/**
 * Created by Simon on 2015/4/2.
 */
@Repository("orderDao")
public class OrderDaoImple extends BaseDaoImple<Order> implements OrderDao<Order>{
}
