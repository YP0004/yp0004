package com.yfann.web.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yfann.web.model.MyProduct;
import com.yfann.web.model.User;
import com.yfann.web.service.MyProductService;

/**
 * Created by Simon on 2015/4/7.
 */
@Controller
@RequestMapping("myProduct")
public class MyProductAction {
    @Autowired
    private MyProductService myProductService;

    /**
     * 跳转到我的课程详情
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/forwardMyProductDetail")
    public String forwardMyProductDetail(String id,Model model){
        MyProduct myProduct = myProductService.findMyProductById(id);
        model.addAttribute("myProduct",myProduct);
        return "single/myProductDetail";
    }

    /**
     * 查询我的未授权课程
     * @param request
     * @param model
     * @return
     */
    @RequestMapping("/forwardMyUnAuthProductList")
    public String forwardMyUnAuthProductList(HttpServletRequest request,Model model){
        List<MyProduct> myUnAuthProductList = myProductService.findMyUnAuthProductList(currentUser(request.getSession()));
        model.addAttribute("myUnAuthProductList",myUnAuthProductList);
        return "single/myUnAuthProductList";
    }

    /**
     * 跳转到我的课程列表
     * @param request
     * @param model
     * @return
     */
    @RequestMapping("/forwardMyProductList")
    public String forwardMyProductList(HttpServletRequest request,Model model){
        List<MyProduct> myProductList = myProductService.findMyProductList(currentUser(request.getSession()));
        model.addAttribute("myProductList",myProductList);
        return "single/myProductList";
    }

    private User currentUser(HttpSession session){
        return (User)session.getAttribute("user");
    }
}
