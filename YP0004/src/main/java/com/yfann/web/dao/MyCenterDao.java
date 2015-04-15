package com.yfann.web.dao;

import com.yfann.web.dao.common.BaseDao;
import com.yfann.web.model.MyProduct;
import com.yfann.web.model.Order;
import com.yfann.web.model.User;

import java.util.List;

/**
 * Created by Simon on 2015/4/13.
 */
public interface MyCenterDao<T> extends BaseDao<T> {

    /**
     * 查询我的课程列表
     *
     * @param user
     * @return
     */
    public List<MyProduct> findMyProductList(User user);
    /**
     *查询我的订单
     * @param user
     * @return
     */
    public List<Order> findMyOrderList(User user);

    /**
     * 查询未支付我的订单分页
     * @param user
     * @return
     */
    public List<Order> findMyUnPayOrderListPage(User user);

    /**
     *查询未支付我的订单
     * @param user
     * @return
     */
    public List<Order> findMyUnPayOrderList(User user);
}
