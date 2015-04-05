package com.yfann.web.action;

import com.yfann.web.model.Product;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

    /**
     * 将课程添加到购物车(session域)
     * @param product
     * @param request
     * @param response
     */
    @RequestMapping("/addShopCar")
    public void addShopCar(Product product,HttpServletRequest request,HttpServletResponse response){

    }

}
