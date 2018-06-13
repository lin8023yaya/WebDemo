package com.ctcs.market.common;


import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by lin on 2018/6/12.
 */
public class UrlFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        System.out.println("进入UrlFilter过滤器并进行过滤处理");
        String path = request.getPathInfo();
        System.out.println("path:"+path);
        String contextPath = request.getContextPath();
        System.out.println("contextPath:"+contextPath);
        String RequestURL = request.getRequestURL().toString();
        System.out.println(RequestURL);
        filterChain.doFilter(request, response);
    }

    @Override
    public void destroy() {

    }
}
