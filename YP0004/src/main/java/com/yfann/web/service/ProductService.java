package com.yfann.web.service;

import com.yfann.web.model.Product;

import java.util.List;

/**
 * 产品业务
 */
public interface ProductService {
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
