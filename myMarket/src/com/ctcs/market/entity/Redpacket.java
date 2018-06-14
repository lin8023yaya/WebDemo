package com.ctcs.market.entity;

/**
 * @ClassName Batchbound
 * @Author lin
 * @Date 2018/6/14 13:52
 * @Version 1.0
 **/
public class Redpacket {
    private int id;
    private long vendorid;
    private Integer redtype;
    private double redmoney;
    private double moneyfloor;
    private double moneyupper;
    private double moneytotal;
    private Integer rednum;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public long getVendorid() {
        return vendorid;
    }

    public void setVendorid(long vendorid) {
        this.vendorid = vendorid;
    }

    public Integer getRedtype() {
        return redtype;
    }

    public void setRedtype(Integer redtype) {
        this.redtype = redtype;
    }

    public double getRedmoney() {
        return redmoney;
    }

    public void setRedmoney(double redmoney) {
        this.redmoney = redmoney;
    }

    public double getMoneyfloor() {
        return moneyfloor;
    }

    public void setMoneyfloor(double moneyfloor) {
        this.moneyfloor = moneyfloor;
    }

    public double getMoneyupper() {
        return moneyupper;
    }

    public void setMoneyupper(double moneyupper) {
        this.moneyupper = moneyupper;
    }

    public double getMoneytotal() {
        return moneytotal;
    }

    public void setMoneytotal(double moneytotal) {
        this.moneytotal = moneytotal;
    }

    public Integer getRednum() {
        return rednum;
    }

    public void setRednum(Integer rednum) {
        this.rednum = rednum;
    }
}
