package com.yfann.web.action;

import com.yfann.web.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 产品控制器
 */
@Controller
@RequestMapping("/product")
public class ProductAction {
    @Autowired
    private ProductService productService;

    /**
     * 跳转到课程列表
     * @return
     */
    @RequestMapping("/forwardProductList")
    public ModelAndView forwardProductList(){
            return new ModelAndView("shop/productList");
    }

    /**
     * 根据产品主键获取缩略图
     * @param productId
     */
    @RequestMapping("/takeProductHeadImg")
    public void takeProductHeadImg(String productId,HttpServletResponse response) throws Exception{
        response.getOutputStream().write(productService.takeProductHeadImg(productId));
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
