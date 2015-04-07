package com.yfann.web.service;

import com.yfann.web.model.Product;
import com.yfann.web.model.ProductKind;
import com.yfann.web.model.ProductLevel;

import java.util.List;

/**
 * 产品业务
 */
public interface ProductService {
    /**
     * 获取所有产品等级集合
     * @return
     */
    public List<ProductLevel> findAllProductLevelList();
    /**
     * 获取所有产品分类集合
     * @return
     */
    public List<ProductKind> findAllProductKindList();

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

    /**
     * 获取产品
     * @param product
     * @return
     */
    public Product findProduct(Product product);
}
