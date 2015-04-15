package com.yfann.web.dao.imple;

import com.yfann.web.dao.MyCenterDao;
import com.yfann.web.dao.common.imple.BaseDaoImple;
import com.yfann.web.model.MyProduct;
import com.yfann.web.model.Order;
import com.yfann.web.model.User;
import org.apache.commons.lang.StringUtils;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by Simon on 2015/4/13.
 */
@Repository("myCenterDao")
public class MyCenterDaoImple extends BaseDaoImple<User> implements MyCenterDao<User>{

    /**
     * 查询我的课程列表
     *
     * @param user
     * @return
     */
    @Override
    public List<MyProduct> findMyProductList(User user) {
        if (user != null && StringUtils.isNotBlank(user.getUserId())){
            String hql = "from MyProduct myproduct left join fetch myproduct.authorizeStatusDic where myproduct.userId = ?";
            List<MyProduct> myProductList =  hibernateTemplate.find(hql, new Object[]{user.getUserId()});
            return myProductList;
        }
        return null;
    }

    /**
     * 查询我的订单
     *
     * @param user
     * @return
     */
    @Override
    public List<Order> findMyOrderList(User user) {
        if (user != null && StringUtils.isNotBlank(user.getUserId())){
            String hql = "from " + Order.class.getName() + " where userId = ?";
            List<Order> orderList =  hibernateTemplate.find(hql, new Object[]{user.getUserId()});
            return orderList;
        }
        return null;
    }

    /**
     * 查询未支付我的订单
     *
     * @param user
     * @return
     */
    @Override
    public List<Order> findMyUnPayOrderListPage(User user) {
        final User userTemp = user;
        if (user != null && StringUtils.isNotBlank(user.getUserId())){
/*            return hibernateTemplate.executeFind(new HibernateCallback<List<Order>>() {
                @Override
                public List<Order> doInHibernate(Session session) throws HibernateException, SQLException {
                    String hql = "from " + Order.class.getName() + " where userId = ? and orderStatus = ?";
                    Query query = session.createQuery(hql);
                    query.setSerializable(0,userTemp.getUserId());
                    query.setSerializable(1,"0");
                    query.setFirstResult(0);
                    query.setMaxResults(10);
                    List<Order> orderList =  query.list();
                    return orderList;
                }
            });*/
            String hql = "from " + Order.class.getName() + " where userId = ? and orderStatus = ?";
            List<Order> unOrderList =  hibernateTemplate.find(hql, new Object[]{user.getUserId(), "0"});
            return unOrderList;
        }
        return null;
    }

    /**
     * 查询未支付我的订单
     *
     * @param user
     * @return
     */
    @Override
    public List<Order> findMyUnPayOrderList(User user) {
        if (user != null && StringUtils.isNotBlank(user.getUserId())){
            String hql = "from " + Order.class.getName() + " where userId = ? and orderStatus = ?";
            List<Order> unOrderList =  hibernateTemplate.find(hql, new Object[]{user.getUserId(), "0"});
            return unOrderList;
        }
        return null;
    }
}
