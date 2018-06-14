package com.ctcs.market.entity;

/**
 * @ClassName Charge
 * @Author lin
 * @Date 2018/6/14 14:04
 * @Version 1.0
 **/
public class Charge {
    private Integer id;
    private String createTime;
    private String startPredict;
    private String type;//(1.服务费2.标签费)
    private String open;
    private String level1;
    private String level2;
    private String level3;
    private String level4;
    private String cost1;
    private String cost2;
    private String cost3;
    private String cost4;
    private String cost5;
    private Long vendorid;
    private String level;
    private String num;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getStartPredict() {
        return startPredict;
    }

    public void setStartPredict(String startPredict) {
        this.startPredict = startPredict;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getOpen() {
        return open;
    }

    public void setOpen(String open) {
        this.open = open;
    }

    public String getLevel1() {
        return level1;
    }

    public void setLevel1(String level1) {
        this.level1 = level1;
    }

    public String getLevel2() {
        return level2;
    }

    public void setLevel2(String level2) {
        this.level2 = level2;
    }

    public String getLevel3() {
        return level3;
    }

    public void setLevel3(String level3) {
        this.level3 = level3;
    }

    public String getLevel4() {
        return level4;
    }

    public void setLevel4(String level4) {
        this.level4 = level4;
    }

    public String getCost1() {
        return cost1;
    }

    public void setCost1(String cost1) {
        this.cost1 = cost1;
    }

    public String getCost2() {
        return cost2;
    }

    public void setCost2(String cost2) {
        this.cost2 = cost2;
    }

    public String getCost3() {
        return cost3;
    }

    public void setCost3(String cost3) {
        this.cost3 = cost3;
    }

    public String getCost4() {
        return cost4;
    }

    public void setCost4(String cost4) {
        this.cost4 = cost4;
    }

    public String getCost5() {
        return cost5;
    }

    public void setCost5(String cost5) {
        this.cost5 = cost5;
    }

    public Long getVendorid() {
        return vendorid;
    }

    public void setVendorid(Long vendorid) {
        this.vendorid = vendorid;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }
}
