package com.yfann.web.action;

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


    @RequestMapping("/forwardLogin")
    public String forwardLogin(){
        return "shop/login";
    }

    public String forwardRegist(){
        return "";
    }

}
