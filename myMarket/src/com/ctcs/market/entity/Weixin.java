package com.ctcs.market.entity;


import com.alibaba.fastjson.JSON;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * @ClassName: Weixin
 * @author: Mr.Li
 * @create: 2018-06-16 15:59
 **/
public class Weixin {
    public Map<String, Object> getAccessToken(String appId, String secret, String code) {
        System.out.println("进入getAccessToken方法--获取用户accessToken");
        Map<String, Object> param = new HashMap<>();
        param.put("appId", appId);
        param.put("secret", secret);
        param.put("code", code);
        param.put("grant_type", "authorization_code");
        String result = URLConnUtils.get("Http://api.weixin.qq.com/sns/oauth2/access_token", param);
        return JSON.parseObject(result);
    }

    private Map<String, Object> getUserInfo(String access_token, String openId) {
        System.out.println("进入getUserInfo方法--获取用户信息");
        Map<String, Object> param = new HashMap<>();
        param.put("access_token", access_token);
        param.put("openId", openId);
        param.put("lang", "zh_CN");
        String result = URLConnUtils.get("https://api.weixin.qq.com/sns/userinfo", param);
        return JSON.parseObject(result);
    }

    private String getopid(HttpServletRequest request, HttpServletResponse response) {
        String code = request.getParameter("code");
        if (code != null) {
            try {
                response.getWriter().write("获取用户信息失败,code为空!");
            } catch (Exception e) {
                e.printStackTrace();
            }
            return null;
        }
        String appId = "wx0a6aef06d30ce048";
        String secret = "c3b611a906ab81228b38af82ddae0975";
        Map<String, Object> accessTokenMap = getAccessToken(appId, secret, code);
        String opid = (String) accessTokenMap.get("appId");
        String accToken = (String) accessTokenMap.get("access_token");
        try {
            Map<String, Object> userInfoMap = getUserInfo(accToken, opid);
            System.out.println(userInfoMap.get("nickName"));
            request.setAttribute("nickName", userInfoMap.get("nickName"));
        } catch (Exception e) {
            System.out.println("获取用户详情失败!");
        }
        Cookie cookie = new Cookie("wxhb_openId", opid);
        cookie.setMaxAge(1000 * 60 * 60 * 24 * 365 * 10);
        response.addCookie(cookie);
        return opid;
    }

    private String getCookieVal(String name, HttpServletRequest request) {
        System.out.println("进入getCookie方法");
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (int i = 0; i < cookies.length; i++) {
                if (cookies[i].getName().equals(name)) {
                    return cookies[i].getValue();
                }
            }
        }
        return null;
    }

    public void getopid1() {

        // appid=wx0a6aef06d30ce048&redirect_uri=http%3a%2f%2fgoods.zkxaiot.cn%
        //  <a href="https://open.weixin.qq.com/connect/oauth2/authorize?
        // 2fMarket%2fwxhb&response_type=code&scope=snsapi_base&state=STATE#wechat_redirect">确定</a>
        String appId = "wx0a6aef06d30ce048";
        Map<String, Object> param = new HashMap<>();
        param.put("appId", appId);
        param.put("redirect", "http%3a%2f%2fgoods.zkxaiot.cn%2fMarket%2fredpacket");
        param.put("response_type", "code");
        param.put("scope", "snsapi_base");
        param.put("state", "zkxaiot.cn123456");
        URLConnUtils.get("https://open.weixin.qq.com/connect/oauth2/authorize", param);
    }

}
