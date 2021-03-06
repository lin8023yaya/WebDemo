package com.ctcs.market.entity;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

/**
 * @ClassName URLConnUtils 工具类
 * @Author lin
 * @Date 2018/6/15 10:23
 * @Version 1.0
 **/
public class URLConnUtils {

    public static String get(String url, Map<String, Object> params) {
        HttpURLConnection conn = null;
        InputStream in = null;
        StringBuilder sb = new StringBuilder();
        try {
            conn = (HttpURLConnection) new URL(paramUrl(url, params)).openConnection();
            conn.setRequestMethod("GET");
            conn.setReadTimeout(3000);
            conn.setDoInput(true);
            conn.setDoOutput(false);
            conn.connect();
            in = conn.getInputStream();
            byte[] bytes = new byte[1024];
            int len = 0;
            while ((len = in.read(bytes)) != -1) {
                sb.append(new String(bytes, 0, len));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (IOException e) {
                } finally {
                    if (conn != null) {
                        conn.disconnect();
                    }
                }
            }
        }
        return sb.toString();
    }

    public static String get1(String url) {
        HttpURLConnection conn = null;
        InputStream in = null;
        StringBuilder sb = new StringBuilder();
        try {
            conn = (HttpURLConnection) new URL(url).openConnection();
            conn.setRequestMethod("POST");
            conn.setReadTimeout(3000);
            conn.setDoInput(true);
            conn.setDoOutput(false);
            conn.connect();
            in = conn.getInputStream();
            byte[] bytes = new byte[1024];
            int len = 0;
            while ((len = in.read(bytes)) != -1) {
                sb.append(new String(bytes, 0, len));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (IOException e) {
                } finally {
                    if (conn != null) {
                        conn.disconnect();
                    }
                }
            }
        }
        return sb.toString();
    }

    private static String paramUrl(String url, Map<String, Object> params) {
        StringBuilder urls = new StringBuilder(url);
        if (params != null) {
            if (url.indexOf("?") != -1)
                urls.append("&");
            else
                urls.append("?");
            int size = params.size();
            for (Map.Entry<String, Object> en : params.entrySet()) {
                if (size == 0)
                    urls.append(en.getKey() + "=" + en.getValue());
                else
                    urls.append("&" + en.getKey() + "=" + en.getValue());
                size++;
            }
        }
        return urls.toString();
    }

    public static String get(String url) {
        return get(url, null);
    }

    public static void main(String[] args) {
    }
}
