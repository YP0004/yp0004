package com.yfann.web.model;

import java.sql.Date;
import java.sql.Timestamp;

/**
 * Created by Simon on 2015/4/2.
 */
public class Order {
    private String id;
    private String orderId;
    private String userId;
    private Date orderCreateTime;
    private String orderStatus;
    private String payWay;
    private Timestamp payTime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Date getOrderCreateTime() {
        return orderCreateTime;
    }

    public void setOrderCreateTime(Date orderCreateTime) {
        this.orderCreateTime = orderCreateTime;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    public String getPayWay() {
        return payWay;
    }

    public void setPayWay(String payWay) {
        this.payWay = payWay;
    }

    public Timestamp getPayTime() {
        return payTime;
    }

    public void setPayTime(Timestamp payTime) {
        this.payTime = payTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Order order = (Order) o;

        if (id != null ? !id.equals(order.id) : order.id != null) return false;
        if (orderCreateTime != null ? !orderCreateTime.equals(order.orderCreateTime) : order.orderCreateTime != null)
            return false;
        if (orderId != null ? !orderId.equals(order.orderId) : order.orderId != null) return false;
        if (orderStatus != null ? !orderStatus.equals(order.orderStatus) : order.orderStatus != null) return false;
        if (payTime != null ? !payTime.equals(order.payTime) : order.payTime != null) return false;
        if (payWay != null ? !payWay.equals(order.payWay) : order.payWay != null) return false;
        if (userId != null ? !userId.equals(order.userId) : order.userId != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (orderId != null ? orderId.hashCode() : 0);
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (orderCreateTime != null ? orderCreateTime.hashCode() : 0);
        result = 31 * result + (orderStatus != null ? orderStatus.hashCode() : 0);
        result = 31 * result + (payWay != null ? payWay.hashCode() : 0);
        result = 31 * result + (payTime != null ? payTime.hashCode() : 0);
        return result;
    }
}
