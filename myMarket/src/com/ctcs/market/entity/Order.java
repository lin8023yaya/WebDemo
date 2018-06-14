package com.ctcs.market.entity;

/**
 * @ClassName: Order
 * @author: Mr.Li
 * @create: 2018-06-14 21:33
 **/
public class Order {
    private Integer id;
    private String orderNum;//订单编号
    private String createTime;
    private String type;
    private String level;
    private String count;
    private String totalMoney;//订单价格
    private Long vendorId;
    private Integer tel;
    private String name;
    private String address;
    private String isAllocation;//是否在线分配
    private String isMail;//是否发货;
    private String isGetcargo;//是否收货
    private String isHaveContract;//是否有电子合同
    private Integer chargeId;//收费id
    private String expressType;//快递类型
    private String expressNum;//快递单号
    private Integer isPay;//是否支付 0:未支付 1:已支付

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getCount() {
        return count;
    }

    public void setCount(String count) {
        this.count = count;
    }

    public String getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(String totalMoney) {
        this.totalMoney = totalMoney;
    }

    public Long getVendorId() {
        return vendorId;
    }

    public void setVendorId(Long vendorId) {
        this.vendorId = vendorId;
    }

    public Integer getTel() {
        return tel;
    }

    public void setTel(Integer tel) {
        this.tel = tel;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getIsAllocation() {
        return isAllocation;
    }

    public void setIsAllocation(String isAllocation) {
        this.isAllocation = isAllocation;
    }

    public String getIsMail() {
        return isMail;
    }

    public void setIsMail(String isMail) {
        this.isMail = isMail;
    }

    public String getIsGetcargo() {
        return isGetcargo;
    }

    public void setIsGetcargo(String isGetcargo) {
        this.isGetcargo = isGetcargo;
    }

    public String getIsHaveContract() {
        return isHaveContract;
    }

    public void setIsHaveContract(String isHaveContract) {
        this.isHaveContract = isHaveContract;
    }

    public Integer getChargeId() {
        return chargeId;
    }

    public void setChargeId(Integer chargeId) {
        this.chargeId = chargeId;
    }

    public String getExpressType() {
        return expressType;
    }

    public void setExpressType(String expressType) {
        this.expressType = expressType;
    }

    public String getExpressNum() {
        return expressNum;
    }

    public void setExpressNum(String expressNum) {
        this.expressNum = expressNum;
    }

    public Integer getIsPay() {
        return isPay;
    }

    public void setIsPay(Integer isPay) {
        this.isPay = isPay;
    }
}
