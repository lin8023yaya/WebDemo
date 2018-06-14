package com.ctcs.market.entity;

/**
 * @ClassName Gift
 * @Author lin
 * @Date 2018/6/14 14:52
 * @Version 1.0
 **/
public class Gift {
    private Integer index;
    private String giftId;
    private String giftName;
    private Double probability;
    private int promotionid;
    private long vendorid;

    public Gift(Integer index, String giftId, String giftName, Double probability, int promotionid, long vendorid) {
        this.index = index;
        this.giftId = giftId;
        this.giftName = giftName;
        this.probability = probability;
        this.promotionid = promotionid;
        this.vendorid = vendorid;
    }

    public Integer getIndex() {
        return index;
    }

    public void setIndex(Integer index) {
        this.index = index;
    }

    public String getGiftId() {
        return giftId;
    }

    public void setGiftId(String giftId) {
        this.giftId = giftId;
    }

    public String getGiftName() {
        return giftName;
    }

    public void setGiftName(String giftName) {
        this.giftName = giftName;
    }

    public Double getProbability() {
        return probability;
    }

    public void setProbability(Double probability) {
        this.probability = probability;
    }

    public int getPromotionid() {
        return promotionid;
    }

    public void setPromotionid(int promotionid) {
        this.promotionid = promotionid;
    }

    public long getVendorid() {
        return vendorid;
    }

    public void setVendorid(long vendorid) {
        this.vendorid = vendorid;
    }
}
