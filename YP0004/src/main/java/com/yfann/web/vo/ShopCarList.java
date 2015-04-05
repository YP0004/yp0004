package com.yfann.web.vo;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Simon on 2015/4/4.
 */
public class ShopCarList {
    private String id;
    private List<ShopCar> shopCarList = new ArrayList<ShopCar>();
    private BigDecimal countPrice = new BigDecimal(0);

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public List<ShopCar> getShopCarList() {
        return shopCarList;
    }

    public void setShopCarList(List<ShopCar> shopCarList) {
        this.shopCarList = shopCarList;
    }

    public BigDecimal getCountPrice() {
        for(ShopCar shopCar : shopCarList){
            countPrice.add(shopCar.getSubCount());
        }
        return countPrice;
    }

    public void setCountPrice(BigDecimal countPrice) {
        this.countPrice = countPrice;
    }
}
