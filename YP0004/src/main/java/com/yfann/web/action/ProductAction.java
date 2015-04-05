package com.yfann.web.action;

import com.yfann.web.model.Product;
import com.yfann.web.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

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
    public String forwardProductList(Model model){
            //获取产品列表
            List<Product> productList = productService.findAllProductList();
            model.addAttribute("productList",productList);
            return "shop/productList";
    }


    /**
     * 根据产品主键获取缩略图
     * @param product
     * @param response
     * @throws Exception
     */
    @RequestMapping("/takeProductHeadImg")
    public void takeProductHeadImg(Product product,HttpServletResponse response) throws Exception{
        response.getOutputStream().write(productService.takeProductHeadImg(product.getId()));
    }

    /**
     * 跳转到产品页面
     * @return
     */
    @RequestMapping("/forwardProduct")
    public String forwardProuct(Product product,Model model){
        model.addAttribute("product",productService.findProduct(product));
        return "shop/product";
    }
}
