package com.yfann.web.service;

import com.yfann.web.model.MyProduct;
import com.yfann.web.model.Product;
import com.yfann.web.model.User;

import java.util.List;

/**
 * Created by Simon on 2015/4/7.
 */
public interface MyProductService {

    /**
     *根据主键查询课程
     * @param id
     * @return
     */
    public MyProduct findMyProductById(String id);

    /**
     * 批量保存我的课程(用于第三方支付回调程序的业务逻辑)
     * @param myProductList
     */
    public void batchSaveMyProduct(List<MyProduct> myProductList);

    /**
     * 根据用户获取未授权课程列表
     * @param user
     * @return
     */
    public List<MyProduct> findMyUnAuthProductList(User user);

    /**
     * 根据用户获取所有课程列表
     * @param user
     * @return
     */
    public List<MyProduct> findMyProductList(User user);
}
