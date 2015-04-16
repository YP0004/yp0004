package com.yfann.web.action;

import com.sun.org.apache.xpath.internal.operations.Mod;
import com.yfann.web.model.MyProduct;
import com.yfann.web.model.Order;
import com.yfann.web.model.User;
import com.yfann.web.service.MyCenterService;
import com.yfann.web.service.OrderService;
import com.yfann.web.service.SystemService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by Simon on 2015/4/13.
 */
@Controller
@RequestMapping("/myCenter")
public class MyCenterAction {
    @Autowired
    private MyCenterService myCenterService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private SystemService systemService;

    /**
     * 跳转到我的信息
     * @return
     */
    @RequestMapping("/forwardMyMessage")
    public String forwardMyMessage(){
        return "single/myMessage";
    }

    @RequestMapping("/forwardMyInfo")
    public String forwardMyInfo(HttpServletRequest request,Model model){
        User user = systemService.findUserByUserId(((User)request.getSession().getAttribute("user")).getUserId());
        model.addAttribute("userModel",user);
        return "single/myInfo";
    }

    @RequestMapping("settingMyInfo")
    public String settingMyInfo(User user){
        systemService.updateUserInfo(user);
        return "redirect:/myCenter/forwardMyInfo.action";
    }

    /**
     * 未支付订单列表
     * @param model
     * @return
     */
    @RequestMapping("/forwardMyUnPayOrderList")
    public String forwardMyUnPayOrderList(HttpServletRequest request,Model model){
        List<Order> myUnPayOrderList =  myCenterService.findMyUnPayOrderListPage(currentUser(request.getSession()));
        model.addAttribute("myUnPayOrderList",myUnPayOrderList);
        return "single/myUnPayOrderList";
    }



    @RequestMapping("/forwardMyOrderDetail")
    public String forwardMyOrderDetail(Order order,Model model){
        Order orderInfo = null;
        if (order != null && StringUtils.isNotBlank(order.getId())){
            orderInfo = orderService.findOrderById(order.getId());
            model.addAttribute("order",orderInfo);
        }
        return "single/myOrderDetail";
    }

    /**
     * 跳转到订单列表
     * @return
     */
    @RequestMapping("/forwardMyAllOrderList")
    public String forwardMyAllOrderList(HttpServletRequest request,Model model){
        List<Order> myOrderList = orderService.findOrderListByUserId(currentUser(request.getSession()).getUserId());
        model.addAttribute("myOrderList",myOrderList);
        return "single/myOrderList";
    }

    /**
     * 跳转到我的中心主页
     * @return
     */
    @RequestMapping("/forwardMyCenterIndex")
    public String forwardMyCenterIndex(HttpServletRequest request,Model model){
        //未支付订单列表
        List<Order> myUnPayOrderList =  myCenterService.findMyUnPayOrderListPage(currentUser(request.getSession()));
        //我的课程列表
        List<MyProduct> myProductList = myCenterService.findMyProductList(currentUser(request.getSession()));
        model.addAttribute("myUnPayOrderList",myUnPayOrderList);
        model.addAttribute("myProductList",myProductList);
        return "single/myCenterIndex";
    }

    /**
     * 跳转到我的订单列表
     * @param request
     * @param model
     * @return
     */
    @RequestMapping("/forwardMyOrderList")
    public String forwardMyOrderList(HttpServletRequest request,Model model){
        List<Order> myOrderList = myCenterService.findMyOrderList(currentUser(request.getSession()));
        model.addAttribute("myOrderList",myOrderList);
        return "forwardMyOrderList";
    }


    private User currentUser(HttpSession session){
        return (User)session.getAttribute("user");
    }

    /**
     *
     * desc：绑定一个指定的时间类型的属性编辑器
     */
    @InitBinder
    public void initBinder(ServletRequestDataBinder binder){
        binder.registerCustomEditor(Date.class,
                new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
    }
}
