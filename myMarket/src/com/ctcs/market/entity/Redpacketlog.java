package com.ctcs.market.entity;

/**
 * @ClassName: Redpacketlog
 * @author: Mr.Li
 * @create: 2018-06-14 22:21
 **/
public class Redpacketlog extends Redpacket{
    private Long productId;
    private String code;
    private Integer isGet;
    private Integer isDraw;
    private Double drawMoney;
    private Long tel;
    private String address;
    private Integer redpacketInfoId;
    private Long millisecond;

    public Long getProductId() {
        return productId;
    }

    public void setProductId(Long productId) {
        this.productId = productId;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Integer getIsGet() {
        return isGet;
    }

    public void setIsGet(Integer isGet) {
        this.isGet = isGet;
    }

    public Integer getIsDraw() {
        return isDraw;
    }

    public void setIsDraw(Integer isDraw) {
        this.isDraw = isDraw;
    }

    public Double getDrawMoney() {
        return drawMoney;
    }

    public void setDrawMoney(Double drawMoney) {
        this.drawMoney = drawMoney;
    }

    public Long getTel() {
        return tel;
    }

    public void setTel(Long tel) {
        this.tel = tel;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getRedpacketInfoId() {
        return redpacketInfoId;
    }

    public void setRedpacketInfoId(Integer redpacketInfoId) {
        this.redpacketInfoId = redpacketInfoId;
    }

    public Long getMillisecond() {
        return millisecond;
    }

    public void setMillisecond(Long millisecond) {
        this.millisecond = millisecond;
    }
}
