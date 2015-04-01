package com.yfann.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 产品控制器
 */
@Controller
@RequestMapping("/product")
public class ProductAction {

    /**
     * 跳转到课程列表
     * @return
     */
    @RequestMapping("/forwardProductList")
    public ModelAndView forwardProductList(){
            return new ModelAndView("shop/productList");
    }

    /**
     * 跳转到产品页面
     * @return
     */
    @RequestMapping("/forwardProduct")
    public String forwardProuct(){
        return "shop/product";
    }
}
