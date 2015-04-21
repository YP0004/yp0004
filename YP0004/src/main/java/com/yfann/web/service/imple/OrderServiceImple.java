package com.yfann.web.service.imple;

import com.yfann.web.dao.OrderDao;
import com.yfann.web.model.Order;
import com.yfann.web.model.Product;
import com.yfann.web.service.OrderService;
import com.yfann.web.utils.UUIDCreate;
import com.yfann.web.vo.ShopCar;
import com.yfann.web.vo.ShopCarItem;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.UUID;

/**
 * Created by Simon on 2015/4/2.
 */
@Service("orderService")
public class OrderServiceImple implements OrderService {
    @Autowired
    private OrderDao orderDao;

    /**
     * 根据主键删除购物车项
     *
     * @param shopCarItemId
     * @return
     */
    @Override
    public void removeShopCarItem(String shopCarItemId,HttpServletRequest request, HttpServletResponse response) {
        ShopCar shopCar = (ShopCar)request.getSession().getAttribute("shopCar");
        if (StringUtils.isNotBlank(shopCarItemId) && shopCar != null && shopCar.getShopCarItems() != null){
            List<ShopCarItem> shopCarItemList =  shopCar.getShopCarItems();
            for (ShopCarItem shopCarItem : shopCarItemList){
                    if (shopCarItem.getId().equals(shopCarItemId)){
                        shopCarItemList.remove(shopCarItem);
                    }
            }
        }
    }

    /**
     * 根据用户名查询所有订单
     *
     * @param userId
     * @return
     */
    @Override
    public List<Order> findOrderListByUserId(String userId) {
        if (StringUtils.isNotBlank(userId)){
            return orderDao.findOrderListByUserId(userId);
        }
        return null;
    }

    /**
     * 根据逐渐查找订单
     *
     * @param id
     * @return
     */
    @Override
    public Order findOrderById(String id) {
        return (Order)orderDao.findModelById(id);
    }

    /**
     * 根据订单号查询订单
     *
     * @param orderId
     * @return
     */
    @Override
    public Order findOrderByOrderId(String orderId) {
        return orderDao.findOrderByOrderId(orderId);
    }

    /**
     * 创建订单
     *
     * @param order
     */
    @Override
    public void saveOrder(Order order) {
        orderDao.saveModel(order);
    }

    /**
     * 将产品加入购物车
     *
     * @param shopCar
     * @param product
     */
    @Override
    public void addBuyCar(ShopCar shopCar, Product product) {
        if (shopCar != null && shopCar.getShopCarItems() != null && product != null){
            boolean flag = true;
            List<ShopCarItem> shopCarItems  = shopCar.getShopCarItems();
            for (ShopCarItem shopCarItem : shopCarItems) {
                //如果购物车存在则数量加一
                if (product.getId().equalsIgnoreCase(shopCarItem.getProduct().getId())){
                    shopCarItem.setCount(1);
                    flag = false;
                    break;
                }
            }
            //购物车里不存在该产品
            if (flag){
                ShopCarItem shopCarItem = new ShopCarItem();
                shopCarItem.setId(UUIDCreate.takeUUID());
                shopCarItem.setCount(1);
                shopCarItem.setProduct(product);
                shopCarItems.add(shopCarItem);
                shopCar.setShopCarItems(shopCarItems);
            }
        }
    }
}
