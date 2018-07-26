package com.ctcs.market.entity;

/**
 * @ClassName: MarketCode
 * @author: Mr.Li
 * @create: 2018-06-14 20:19
 **/
public class MarketCode {
    private int id;
    private String table;
    private String mtable;
    private int promotionId;
    private long vendorId;
    private String startCode;
    private String endCode;
    private long startNum;
    private long endNum;
    private int status;
    private long arrs;
    private String startTime;
    private String endTime;
    private String name;
    private String tel;
    private String batch;//产品批次号
    private long batchId;//产品批次id
    private long productId;//产品批次id
    private String batchTable;
    private int prizeId;//奖品配置id
    private long typeId;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTable() {
        return table;
    }

    public void setTable(String table) {
        this.table = table;
    }

    public String getMtable() {
        return mtable;
    }

    public void setMtable(String mtable) {
        this.mtable = mtable;
    }

    public int getPromotionId() {
        return promotionId;
    }

    public void setPromotionId(int promotionId) {
        this.promotionId = promotionId;
    }

    public long getVendorId() {
        return vendorId;
    }

    public void setVendorId(long vendorId) {
        this.vendorId = vendorId;
    }

    public String getStartCode() {
        return startCode;
    }

    public void setStartCode(String startCode) {
        this.startCode = startCode;
    }

    public String getEndCode() {
        return endCode;
    }

    public void setEndCode(String endCode) {
        this.endCode = endCode;
    }

    public long getStartNum() {
        return startNum;
    }

    public void setStartNum(long startNum) {
        this.startNum = startNum;
    }

    public long getEndNum() {
        return endNum;
    }

    public void setEndNum(long endNum) {
        this.endNum = endNum;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public long getArrs() {
        return arrs;
    }

    public void setArrs(long arrs) {
        this.arrs = arrs;
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getBatch() {
        return batch;
    }

    public void setBatch(String batch) {
        this.batch = batch;
    }

    public long getBatchId() {
        return batchId;
    }

    public void setBatchId(long batchId) {
        this.batchId = batchId;
    }

    public long getProductId() {
        return productId;
    }

    public void setProductId(long productId) {
        this.productId = productId;
    }

    public String getBatchTable() {
        return batchTable;
    }

    public void setBatchTable(String batchTable) {
        this.batchTable = batchTable;
    }

    public int getPrizeId() {
        return prizeId;
    }

    public void setPrizeId(int prizeId) {
        this.prizeId = prizeId;
    }

    public long getTypeId() {
        return typeId;
    }

    public void setTypeId(long typeId) {
        this.typeId = typeId;
    }

    @Override
    public String toString() {
        return "MarketCode{" +
                "id=" + id +
                ", table='" + table + '\'' +
                ", mtable='" + mtable + '\'' +
                ", promotionId=" + promotionId +
                ", vendorId=" + vendorId +
                ", startCode='" + startCode + '\'' +
                ", endCode='" + endCode + '\'' +
                ", startNum=" + startNum +
                ", endNum=" + endNum +
                ", status=" + status +
                ", arrs=" + arrs +
                ", startTime='" + startTime + '\'' +
                ", endTime='" + endTime + '\'' +
                ", name='" + name + '\'' +
                ", tel='" + tel + '\'' +
                ", batch='" + batch + '\'' +
                ", batchId=" + batchId +
                ", productId=" + productId +
                ", batchTable='" + batchTable + '\'' +
                ", prizeId=" + prizeId +
                ", typeId=" + typeId +
                '}';
    }
}
