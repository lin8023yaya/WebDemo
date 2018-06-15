package com.ctcs.market.entity;


import java.util.Formatter;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * @ClassName: Share
 * @author: Mr.Li
 * @create: 2018-06-14 22:31
 **/
public class Share {
    public static Map<String ,String> sign(String jsapi_ticket,String url){
        Map<String,String> ret = new HashMap<>();
        //随机数
        String nonce_str = create_nonstr_str();
        String timestamp = create_timestamp();
        String string1;
        String signature = "";
        //参数必须为小写,且必须有序
        string1 = "jsapi_ticket="+ jsapi_ticket+"&noncestr="+nonce_str+
                "&timestamp="+timestamp+"&url="+url;
        System.out.println(string1);

        String digest = new SHA1().getDigestOfString(string1.getBytes());
        signature = digest.toLowerCase();

        ret.put("url",url);
        ret.put("jsapi_ticket",jsapi_ticket);
        ret.put("nonceStr",nonce_str);
        ret.put("timestamp",timestamp);
        ret.put("signature",url);
        return ret;
    }
    private static String byteToHex(final byte[] hash){
        Formatter formatter = new Formatter();
        for (byte b : hash) {
            formatter.format("%02x",b);
        }
        String result = formatter.toString();
        formatter.close();
        return result;
    }
    private static String create_nonstr_str(){
        return UUID.randomUUID().toString();
    }
    private static String create_timestamp(){
        return Long.toString(System.currentTimeMillis() / 1000);
    }
}
