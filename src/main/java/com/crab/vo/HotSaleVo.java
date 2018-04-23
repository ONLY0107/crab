package com.crab.vo;

/**
 * Created by A on 2018/4/23.
 */
public class HotSaleVo {
    private Integer id;
    private Integer productId;
    private Integer saleMonthNumber;
    private Integer saleRank;
    private String createTime;
    private String updateTime;

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

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }
}
