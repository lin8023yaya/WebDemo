package com.ctcs.market.entity;

/**
 * @ClassName: MarketCode
 * @author: Mr.Li
 * @create: 2018-06-14 20:19
 **/
public class MarketCode {
    private Integer id;
    private String table;
    private String mtable;
    private Integer promotionId;
    private Long vendorId;
    private String startCode;
    private String endCode;
    private Long startNum;
    private Long endNum;
    private Integer status;
    private Long arrs;
    private String startTime;
    private String endTime;
    private String name;
    private String tel;
    private String batch;//产品批次号
    private Long batchId;//产品批次id
    private Long productId;//产品批次id
    private String batchTable;
    private Integer prizeId;//奖品配置id
    private Long typeId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
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

    public Integer getPromotionId() {
        return promotionId;
    }

    public void setPromotionId(Integer promotionId) {
        this.promotionId = promotionId;
    }

    public Long getVendorId() {
        return vendorId;
    }

    public void setVendorId(Long vendorId) {
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

    public Long getStartNum() {
        return startNum;
    }

    public void setStartNum(Long startNum) {
        this.startNum = startNum;
    }

    public Long getEndNum() {
        return endNum;
    }

    public void setEndNum(Long endNum) {
        this.endNum = endNum;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Long getArrs() {
        return arrs;
    }

    public void setArrs(Long arrs) {
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

    public Long getBatchId() {
        return batchId;
    }

    public void setBatchId(Long batchId) {
        this.batchId = batchId;
    }

    public Long getProductId() {
        return productId;
    }

    public void setProductId(Long productId) {
        this.productId = productId;
    }

    public String getBatchTable() {
        return batchTable;
    }

    public void setBatchTable(String batchTable) {
        this.batchTable = batchTable;
    }

    public Integer getPrizeId() {
        return prizeId;
    }

    public void setPrizeId(Integer prizeId) {
        this.prizeId = prizeId;
    }

    public Long getTypeId() {
        return typeId;
    }

    public void setTypeId(Long typeId) {
        this.typeId = typeId;
    }
}
