package com.ctcs.market.entity;

import java.io.Serializable;

/**
 * @ClassName Result
 * @Author lin
 * @Date 2018/7/6 15:41
 * @Version 1.0
 * 自定义封装的结果集
 **/
public class Result implements Serializable {

    private static final long serialVersionUID = -9217096475319165128L;
    //自定义状态 1:true 0:false
    private int status;
    //自定义的消息
    private String message;
    //自定义的数据
    private Object data;

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
