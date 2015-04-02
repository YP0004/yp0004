package com.yfann.web.service;

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
}
