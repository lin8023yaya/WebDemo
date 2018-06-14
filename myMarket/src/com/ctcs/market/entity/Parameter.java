package com.ctcs.market.entity;

/**
 * @ClassName: Parameter
 * @author: Mr.Li
 * @create: 2018-06-14 21:47
 **/
public class Parameter {
    private String httpUrl="https://api.mch.weixin.qq.com/mmpaymkttransfers/sendredpack";
    private String noncestr="5K8264ABSDEF16FQ2502SI8ZNMGM67VS";//随机字符串
    private String mchid;//商户号
    private String wxappid;//公众号appid
    private String nickName;//提供方名称
    private String sendName;//红包发送者名称
    private String reopenId;//用户openId
    private int totalAmount=1;//付款金额
    private int minValue=1;//最小红包金额
    private int maxValue=1;//最大红包金额
    private int totalNum=1;//红包发放总人数
    private String wishing;//红包祝福语
    private String clientIp;//调用接口的机器IP地址
    private String actName;//活动名称
    private String remark;//备注消息

    public String getHttpUrl() {
        return httpUrl;
    }

    public String getNoncestr() {
        return noncestr;
    }

    public String getMchid() {

        return mchid;
    }

    public void setMchid(String mchid) {
        this.mchid = mchid;
    }

    public String getWxappid() {
        return wxappid;
    }

    public void setWxappid(String wxappid) {
        this.wxappid = wxappid;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getSendName() {
        return sendName;
    }

    public void setSendName(String sendName) {
        this.sendName = sendName;
    }

    public String getReopenId() {
        return reopenId;
    }

    public void setReopenId(String reopenId) {
        this.reopenId = reopenId;
    }

    public int getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(int totalAmount) {
        this.totalAmount = totalAmount;
    }

    public int getMinValue() {
        return minValue;
    }

    public void setMinValue(int minValue) {
        this.minValue = minValue;
    }

    public int getMaxValue() {
        return maxValue;
    }

    public void setMaxValue(int maxValue) {
        this.maxValue = maxValue;
    }

    public int getTotalNum() {
        return totalNum;
    }

    public void setTotalNum(int totalNum) {
        this.totalNum = totalNum;
    }

    public String getWishing() {
        return wishing;
    }

    public void setWishing(String wishing) {
        this.wishing = wishing;
    }

    public String getClientIp() {
        return clientIp;
    }

    public void setClientIp(String clientIp) {
        this.clientIp = clientIp;
    }

    public String getActName() {
        return actName;
    }

    public void setActName(String actName) {
        this.actName = actName;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}
