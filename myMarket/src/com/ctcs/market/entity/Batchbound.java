package com.ctcs.market.entity;

/**
 * @ClassName Batchbound
 * @Author lin
 * @Date 2018/6/14 14:14
 * @Version 1.0
 **/
public class Batchbound extends Redpacket{
    private Integer Bid;
    private Integer redpacketInfoid;
    private Long productid;
    private String name;
    private Long tel;
    private String startTime;
    private String endTime;
    private Integer status;
    private double sendMoney;

    public Integer getBid() {
        return Bid;
    }

    public void setBid(Integer bid) {
        Bid = bid;
    }

    public Integer getRedpacketInfoid() {
        return redpacketInfoid;
    }

    public void setRedpacketInfoid(Integer redpacketInfoid) {
        this.redpacketInfoid = redpacketInfoid;
    }

    public Long getProductid() {
        return productid;
    }

    public void setProductid(Long productid) {
        this.productid = productid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getTel() {
        return tel;
    }

    public void setTel(Long tel) {
        this.tel = tel;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public double getSendMoney() {
        return sendMoney;
    }

    public void setSendMoney(double sendMoney) {
        this.sendMoney = sendMoney;
    }
}
