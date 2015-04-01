package com.yfann.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 订单控制器
 */
@Controller
@RequestMapping("/order")
public class OrderAction {

    /**
     * 跳转到购物车页面
     * @return
     */
    @RequestMapping("/forwardShopCar")
    public String forwardShopCar(){
        return "shop/shopCar";
    }

}
