package com.yfann.web.dao;

import com.yfann.web.dao.common.BaseDao;
import com.yfann.web.model.Product;
import com.yfann.web.model.ProductImage;

import java.util.List;

/**
 * Created by Simon on 2015/4/2.
 */
public interface ProductDao<T> extends BaseDao<T> {
    /**
     * 根据产品id获取产品缩略图
     * @param productId
     * @return
     */
    public byte[] takeProductHeadImg(String productId);


    /**
     * 获取所有产品
     * @return
     */
    public List<Product> findAllProductList();
}
