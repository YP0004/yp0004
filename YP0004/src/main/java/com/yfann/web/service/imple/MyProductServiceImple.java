package com.yfann.web.service.imple;

import com.yfann.web.dao.MyProductDao;
import com.yfann.web.model.MyProduct;
import com.yfann.web.model.User;
import com.yfann.web.service.MyProductService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Simon on 2015/4/7.
 */
@Service("myProductService")
public class MyProductServiceImple implements MyProductService {
    @Autowired
    private MyProductDao myProductDao;

    /**
     * 根据主键查询课程
     *
     * @param id
     * @return
     */
    @Override
    public MyProduct findMyProductById(String id) {
        if (StringUtils.isNotBlank(id)){
            return (MyProduct)myProductDao.findModelById(id);
        }
        return null;
    }

    /**
     * 根据用户获取所有课程列表
     *
     * @param user
     * @return
     */
    @Override
    public List<MyProduct> findMyProductList(User user) {
        if (user != null && StringUtils.isNotBlank(user.getUserId())){
            return myProductDao.findMyProductList(user);
        }
        return null;
    }

    /**
     * 根据用户获取未授权课程列表
     *
     * @param user
     * @return
     */
    @Override
    public List<MyProduct> findMyUnAuthProductList(User user) {
        if (user != null && StringUtils.isNotBlank(user.getUserId())){
            return myProductDao.findMyUnAuthProductList(user);
        }
        return null;
    }

    /**
     * 批量保存我的课程(用于第三方支付回调程序的业务逻辑)
     *
     * @param myProductList
     */
    @Override
    public void batchSaveMyProduct(List<MyProduct> myProductList) {
        myProductDao.batchSaveMyProduct(myProductList);
    }
}
