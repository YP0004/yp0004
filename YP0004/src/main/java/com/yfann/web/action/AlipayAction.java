package com.yfann.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 支付宝支付模块
 */
@Controller
@RequestMapping("aplipay")
public class AlipayAction {
    @RequestMapping("forwardPay")
    public void forwardPay(){

    }
}
