package com.yfann.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Simon on 2015/4/13.
 */
@Controller
@RequestMapping("myCenter")
public class MyCenterAction {

    /**
     * 跳转到我的中心主页
     * @return
     */
    @RequestMapping("forwardMyCenterIndex")
    public String forwardMyCenterIndex(){
        return "single/myCenterIndex";
    }
}
