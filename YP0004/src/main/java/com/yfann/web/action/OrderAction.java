package com.yfann.web.action;

import com.yfann.web.model.Order;
import com.yfann.web.model.Product;
import com.yfann.web.service.OrderService;
import com.yfann.web.service.ProductService;
import com.yfann.web.utils.UUIDCreate;
import com.yfann.web.vo.ShopCar;
import com.yfann.web.vo.ShopCarItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * 订单控制器
 */
@Controller
@RequestMapping("/order")
public class OrderAction {
    @Autowired
    private ProductService productService;
    @Autowired
    private OrderService orderService;


    /**
     * 跳转到订单确认页面
     * @param model
     * @return
     */
    @RequestMapping("forwardSureOrder")
    public String forwardSureOrder(Model model){
        Order order = new Order();
        order.setId(UUIDCreate.takeUUID());
        order.setOrderId(order.getId());
        order.setOrderCreateTime(new Date());
        model.addAttribute("order",order);
        return "shop/sureOrder";
    }

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
    public void addShopCar(Product product,HttpServletRequest request,HttpServletResponse response) throws Exception{
        HttpSession session = request.getSession(true);
        ShopCar shopCar = (ShopCar)session.getAttribute("shopCar");
        if (shopCar == null){
            //seesion中没有购物车则添加
            ShopCar shopCarTemp = new ShopCar();
            shopCarTemp.setId(UUIDCreate.takeUUID());
            List<ShopCarItem> shopCarItems =  shopCarTemp.getShopCarItems();
            if (shopCarItems == null){
                shopCarTemp.setShopCarItems(new ArrayList<ShopCarItem>());
            }
            session.setAttribute("shopCar", new ShopCar());
        }
        Product productInfo = productService.findProduct(product);
        orderService.addBuyCar(shopCar,productInfo);
        response.getWriter().write(new String("添加到购物成功".getBytes(),"utf-8"));
    }
}
