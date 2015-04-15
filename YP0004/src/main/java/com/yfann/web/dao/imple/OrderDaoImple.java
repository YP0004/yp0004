package com.yfann.web.dao.imple;

import com.yfann.web.dao.OrderDao;
import com.yfann.web.dao.common.imple.BaseDaoImple;
import com.yfann.web.model.Order;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Simon on 2015/4/2.
 */
@Repository("orderDao")
public class OrderDaoImple extends BaseDaoImple<Order> implements OrderDao<Order>{

    /**
     * 根据用户名查询所有订单
     *
     * @param userId
     * @return
     */
    @Override
    public List<Order> findOrderListByUserId(String userId) {
        String hql = "from " + Order.class.getName() + " where userId = ?";
        List<Order> orderList =  hibernateTemplate.find(hql, new Object[]{userId});
        return orderList;
    }

    /**
     * 根据订单号查询订单
     *
     * @param orderId
     * @return
     */
    @Override
    public Order findOrderByOrderId(String orderId) {
        if (StringUtils.isNotBlank(orderId)){
            String hql = "from " + Order.class.getName() + " where orderId = ?";
            Order resultOrder = (Order)hibernateTemplate.find(hql,new Object[]{orderId}).get(0);
            return resultOrder;
        }
        return null;
    }
}
