package com.ctcs.market.entity;

import com.sun.net.ssl.X509TrustManager;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;

/**
 * @ClassName: MyX509TrustManager
 * @author: Mr.Li
 * @create: 2018-06-14 21:29
 **/
public class MyX509TrustManager implements javax.net.ssl.X509TrustManager {

    public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {}

    public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {}

    public X509Certificate[] getAcceptedIssuers() {
        return null;
    }
}