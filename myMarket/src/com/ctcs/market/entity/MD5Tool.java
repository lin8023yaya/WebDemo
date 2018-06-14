package com.ctcs.market.entity;


import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * @ClassName: MD5Util
 * @author: Mr.Li
 * @create: 2018-06-14 20:45
 **/
public class MD5Tool {
    //md5加密
    public static String md5(String inputText){ return encrypt(inputText,"md5");}
    //sha加密
    public static String sha(String inputText){ return encrypt(inputText,"sha-1");}

    /**
     * @param inputText 要加密的内容
     * @param algorithmName 加密算法名称:md5或者sha-1,不区分大小写
     * @return
     */
    public static String encrypt(String inputText,String algorithmName){
        if(inputText == null || "".equals(inputText.trim())){
            throw new IllegalArgumentException("请输入要加密的内容");
        }
        if(algorithmName==null || "".equals(inputText.trim())){
            algorithmName="md5";
        }
        String encryptText = null;
        try {
            MessageDigest m = MessageDigest.getInstance(algorithmName);
            m.update(inputText.getBytes("utf-8"));
            byte s[] = m.digest();
            return hex(s);
        }catch (UnsupportedEncodingException e){
            e.printStackTrace();
        }catch (NoSuchAlgorithmException e){
            e.printStackTrace();
        }
        return  encryptText;
    }
    public static String hex(byte[] arr){
        StringBuffer sb =new StringBuffer();
        for (int i = 0; i < arr.length; ++i) {
            sb.append(Integer.toHexString((arr[i] & 0xFF) | 0X100).substring(1,3));
        }
        return sb.toString();
    }
}
