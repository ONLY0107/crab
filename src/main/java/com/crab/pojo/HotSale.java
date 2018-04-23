package com.crab.pojo;

import java.util.Date;

/**
 * Created by A on 2018/4/23.
 */
public class HotSale {
    private Integer id;
    private Integer productId;
    private Integer saleMonthNumber;
    private Integer saleRank;
    private Date createTime;
    private Date updateTime;


    public HotSale(Integer id, Integer productId, Integer saleMonthNumber, Integer saleRank, Date createTime, Date updateTime) {
        this.id = id;
        this.productId = productId;
        this.saleMonthNumber = saleMonthNumber;
        this.saleRank = saleRank;
        this.createTime = createTime;
        this.updateTime = updateTime;
    }
    public HotSale() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public Integer getSaleMonthNumber() {
        return saleMonthNumber;
    }

    public void setSaleMonthNumber(Integer saleMonthNumber) {
        this.saleMonthNumber = saleMonthNumber;
    }

    public Integer getSaleRank() {
        return saleRank;
    }

    public void setSaleRank(Integer saleRank) {
        this.saleRank = saleRank;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}
