package com.yfann.web.dao.imple;

import com.yfann.web.dao.ProductDao;
import com.yfann.web.dao.common.imple.BaseDaoImple;
import com.yfann.web.model.Product;
import com.yfann.web.model.ProductImage;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Repository;

/**
 * Created by Simon on 2015/4/2.
 */
@Repository("productDao")
public class ProductDaoImple extends BaseDaoImple<Product> implements ProductDao<Product> {
    /**
     * 根据产品id获取产品缩略图
     *
     * @param productId
     * @return
     */
    @Override
    public byte[] takeProductHeadImg(String productId) {
        if (StringUtils.isNotBlank(productId) && productId != null){
            String hql = "select productImage from " + ProductImage.class.getSimpleName() + " where productId = ?";
            return (byte[])hibernateTemplate.find(hql,productId).get(0);
        }
        return null;
    }
}
