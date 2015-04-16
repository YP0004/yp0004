package com.yfann.web.dao;

import com.yfann.web.dao.common.BaseDao;
import com.yfann.web.model.MyProduct;
import com.yfann.web.model.User;

import java.util.List;

/**
 * Created by Simon on 2015/4/7.
 */
public interface MyProductDao<T> extends BaseDao<T>{
    /**
     * 批量保存我的课程(用于第三方支付回调程序的业务逻辑)
     *
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
