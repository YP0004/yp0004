package com.yfann.web.dao.imple;

import com.yfann.web.dao.ProductDao;
import com.yfann.web.dao.common.imple.BaseDaoImple;
import com.yfann.web.model.Product;
import com.yfann.web.model.ProductImage;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Repository;

import java.util.List;

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
            //String hql = "select productImage from" + ProductImage.class.getSimpleName() + productImage"as " + " where productId = ?";

            // select productImage from ProductImage pi where pi.productId = ?
            String hql = "select productImage from " + ProductImage.class.getSimpleName() + " pi where pi.productId = ?";
            List byteList = hibernateTemplate.find(hql,productId);
            if(byteList != null && byteList.size() > 0){
                return (byte[])byteList.get(0);
            }

        }
        return null;
    }


    /**
     * 获取所有产品
     *
     * @return
     */
    @Override
    public List<Product> findAllProductList() {
        String hql = "from " + Product.class.getName();
        return hibernateTemplate.find(hql);
    }
}
