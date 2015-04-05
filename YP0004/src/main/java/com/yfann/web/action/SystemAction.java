package com.yfann.web.action;

import com.yfann.web.vo.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 系统控制器
 */
@Controller
@RequestMapping("/system")
public class SystemAction {
    /**
     * 跳转到主页
     * @return
     */
    @RequestMapping("/forwardIndex")
    public String forwardIndex(){
        return "shop/index";
    }


    /**
     * 跳转到登陆界面
     * @return
     */
    @RequestMapping("/forwardLogin")
    public String forwardLogin(){
        return "shop/login";
    }

    /**
     * 跳转到注册页面
     * @return
     */
    @RequestMapping("/forwardRegist")
    public String forwardRegist(){
        return "";
    }

    /**
     * 登陆功能
     * @param user
     * @return
     */
    @RequestMapping("/login")
    public String login(User user){

        return "";
    }

}
