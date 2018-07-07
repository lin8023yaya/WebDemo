package com.ctcs.market.entity;

/**
 * @ClassName Batchbound
 * @Author lin
 * @Date 2018/6/14 13:52
 * @Version 1.0
 **/
public class Redpacket {
    private int id;
    private long vendorId;
    private Integer redType;
    private double redMoney;
    private double moneyFloor;
    private double moneyUpper;
    private double moneyTotal;
    private Integer redNum;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public long getVendorId() {
        return vendorId;
    }

    public void setVendorId(long vendorId) {
        this.vendorId = vendorId;
    }

    public Integer getRedType() {
        return redType;
    }

    public void setRedType(Integer redType) {
        this.redType = redType;
    }

    public double getRedMoney() {
        return redMoney;
    }

    public void setRedMoney(double redMoney) {
        this.redMoney = redMoney;
    }

    public double getMoneyFloor() {
        return moneyFloor;
    }

    public void setMoneyFloor(double moneyFloor) {
        this.moneyFloor = moneyFloor;
    }

    public double getMoneyUpper() {
        return moneyUpper;
    }

    public void setMoneyUpper(double moneyUpper) {
        this.moneyUpper = moneyUpper;
    }

    public double getMoneyTotal() {
        return moneyTotal;
    }

    public void setMoneyTotal(double moneyTotal) {
        this.moneyTotal = moneyTotal;
    }

    public Integer getRedNum() {
        return redNum;
    }

    public void setRedNum(Integer redNum) {
        this.redNum = redNum;
    }

    @Override
    public String toString() {
        return "Redpacket{" +
                "id=" + id +
                ", vendorId=" + vendorId +
                ", redType=" + redType +
                ", redMoney=" + redMoney +
                ", moneyFloor=" + moneyFloor +
                ", moneyUpper=" + moneyUpper +
                ", moneyTotal=" + moneyTotal +
                ", redNum=" + redNum +
                '}';
    }
}
