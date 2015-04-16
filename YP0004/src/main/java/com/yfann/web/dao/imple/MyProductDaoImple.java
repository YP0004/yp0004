package com.yfann.web.dao.imple;

import com.yfann.web.dao.MyProductDao;
import com.yfann.web.dao.common.imple.BaseDaoImple;
import com.yfann.web.model.MyProduct;
import com.yfann.web.model.User;
import com.yfann.web.vo.ApplicationValue;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Simon on 2015/4/7.
 */
@Repository("myProductDao")
public class MyProductDaoImple extends BaseDaoImple<MyProduct> implements MyProductDao<MyProduct> {

    /**
     * 根据用户获取所有课程列表
     *
     * @param user
     * @return
     */
    @Override
    public List<MyProduct> findMyProductList(User user) {
        String hql = "from " + MyProduct.class.getName() + " myProduct where myProduct.userId = ?";
        List<MyProduct> myProductList = hibernateTemplate.find(hql,new Object[]{user.getUserId()});
        return myProductList;
    }

    /**
     * 根据用户获取未授权课程列表
     *
     * @param user
     * @return
     */
    @Override
    public List<MyProduct> findMyUnAuthProductList(User user) {
        String hql = "from " + MyProduct.class.getName() + " myProduct where myProduct.userId = ? and myProduct.authorizeStatus = ?";
        List<MyProduct> myUnAuthProductList = hibernateTemplate.find(hql,new Object[]{user.getUserId(),"0"});
        return myUnAuthProductList;
    }

    /**
     * 批量保存我的课程(用于第三方支付回调程序的业务逻辑)
     *
     * @param myProductList
     */
    @Override
    public void batchSaveMyProduct(List<MyProduct> myProductList) {
        if (myProductList != null){
            for (int i = 0; i < myProductList.size(); i++) {
                hibernateTemplate.save(myProductList.get(i));
                //每执行50条刷新一次缓存
                if (i % 50 == 0){
                    hibernateTemplate.clear();
                    hibernateTemplate.flush();
                }
            }
        }
    }
}
