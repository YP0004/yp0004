package com.yfann.web.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yfann.web.model.Product;
import com.yfann.web.model.User;
import com.yfann.web.service.ProductService;
import com.yfann.web.service.SystemService;
import com.yfann.web.utils.UUIDCreate;
import com.yfann.web.vo.ApplicationValue;

/**
 * 系统控制器
 */
@Controller
@RequestMapping("/system")
public class SystemAction {
    private final String action_pri = "/system";
    @Autowired
    private SystemService systemService;

    @Autowired
    private ProductService productService;

    /**
     * 注册
     * @param userVo
     * @return
     */
    @RequestMapping("/regist")
    //TODO BUG
    public String regist(com.yfann.web.vo.User userVo,Model model){
        Map<String,String> errorMessage = new HashMap<String,String>();
        if (userVo != null){

/*            if(systemService.findUserByUserId(userVo.getUserId())){

            }*/

            if (userVo.getPassword().equals(userVo.getRePassword())){
                User user = new User();
                user.setId(UUIDCreate.takeUUID());
                user.setUserId(userVo.getUserId());
                user.setPassword(userVo.getPassword());
                user.setEmail(userVo.getEmail());
                systemService.regist(user);
            }
        }else {
            errorMessage.put("userId","请输入用户名");
            model.addAttribute("errorMessage",errorMessage);
        }



        return "redirect:" + action_pri + "/forwardLogin" + ApplicationValue.APP_LAST_NAME;
    }


    /**
     * 用户退出
     * @param request
     * @return
     */
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request) {
        //清楚登陆信息
        request.getSession().removeAttribute(ApplicationValue.SESSION_USER);
        return "redirect:" + action_pri + "/forwardIndex" + ApplicationValue.APP_LAST_NAME;
    }

    /**
     * 跳转到主页
     *
     * @return
     */
    @RequestMapping("/forwardIndex")
    public String forwardIndex(Model model) {
         List<Product> productListTemp =  productService.findAllProductList();
        model.addAttribute("productListTemp",productListTemp);
        return "shop/index";
    }


    /**
     * 跳转到登陆界面
     *
     * @return
     */
    @RequestMapping("/forwardLogin")
    public String forwardLogin() {
        return "shop/login";
    }

    /**
     * 跳转到注册页面
     *
     * @return
     */
    @RequestMapping("/forwardRegist")
    public String forwardRegist() {
        return "shop/regist";
    }

    /**
     * 登陆功能
     *
     * @param user
     * @return
     */
    @RequestMapping("/login")
    public String login(User user, HttpServletRequest request,Model model) {
    	Map<String, String> erroeMessage = new HashMap<String, String>();
        User userInfo = systemService.login(user);
        if(userInfo == null){
        	erroeMessage.put("loginError", "用户名或密码不正确!");
        	model.addAttribute("erroeMessage", erroeMessage);
        	return "shop/login";
        }
        request.getSession(true).setAttribute(ApplicationValue.SESSION_USER, userInfo);
        return "redirect:" + action_pri + "/forwardIndex" + ApplicationValue.APP_LAST_NAME;
    }

}
