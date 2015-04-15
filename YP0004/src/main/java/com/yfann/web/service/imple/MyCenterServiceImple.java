package com.yfann.web.service.imple;

import com.yfann.web.dao.MyCenterDao;
import com.yfann.web.model.MyProduct;
import com.yfann.web.model.Order;
import com.yfann.web.model.User;
import com.yfann.web.service.MyCenterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Simon on 2015/4/13.
 */
@Service("myCenterService")
public class MyCenterServiceImple implements MyCenterService {
    @Autowired
    private MyCenterDao myCenterDao;

    /**
     * 查询我的课程列表
     *
     * @param user
     * @return
     */
    @Override
    public List<MyProduct> findMyProductList(User user) {
        return myCenterDao.findMyProductList(user);
    }

    /**
     * 查询我的订单
     *
     * @param user
     * @return
     */
    @Override
    public List<Order> findMyOrderList(User user) {
        return myCenterDao.findMyOrderList(user);
    }

    /**
     * 查询未支付我的订单
     *
     * @param user
     * @return
     */
    @Override
    public List<Order> findMyUnPayOrderList(User user) {
        return myCenterDao.findMyUnPayOrderList(user);
    }

    /**
     * 查询未支付我的订单 分页
     *
     * @param user
     * @return
     */
    @Override
    public List<Order> findMyUnPayOrderListPage(User user) {
        return myCenterDao.findMyUnPayOrderListPage(user);
    }
}
