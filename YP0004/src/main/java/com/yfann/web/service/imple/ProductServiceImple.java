package com.yfann.web.service.imple;

import com.yfann.web.dao.ProductDao;
import com.yfann.web.service.ProductService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Simon on 2015/4/2.
 */
@Service("productService")
public class ProductServiceImple implements ProductService {
    @Autowired
    private ProductDao productDao;
    /**
     * 根据产品id获取产品缩略图
     *
     * @param productId
     * @return
     */
    @Override
    public byte[] takeProductHeadImg(String productId) {
        if (StringUtils.isNotBlank(productId) && productId != null){
            return productDao.takeProductHeadImg(productId);
        }
        return null;
    }
}
