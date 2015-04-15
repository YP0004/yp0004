package com.yfann.web.dao;

import com.yfann.web.dao.common.BaseDao;
import com.yfann.web.model.Order;

import java.util.List;

/**
 * Created by Simon on 2015/4/2.
 */
public interface OrderDao<T> extends BaseDao<T> {
    /**
     * 根据用户名查询所有订单
     * @param userId
     * @return
     */
    public List<Order> findOrderListByUserId(String userId);

    /**
     * 根据订单号查询订单
     * @param orderId
     * @return
     */
    public Order findOrderByOrderId(String orderId);
}
