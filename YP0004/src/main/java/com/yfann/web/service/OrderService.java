package com.yfann.web.service;

import com.yfann.web.model.Order;
import com.yfann.web.model.Product;
import com.yfann.web.vo.ShopCar;

/**
 * Created by Simon on 2015/4/2.
 */
public interface OrderService {
    /**
     * 将产品加入购物车
     * @param shopCar
     * @param product
     */
    public void addBuyCar(ShopCar shopCar,Product product);

    /**
     * 创建订单
     * @param order
     */
    public void createOrder(Order order);
}
