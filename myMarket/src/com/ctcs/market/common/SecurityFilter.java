package com.ctcs.market.common;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

@SuppressWarnings("all")
public class SecurityFilter implements Filter {
	private String[] exclude = null;
	@Override
	public void init(FilterConfig config) throws ServletException {
		String ex = config.getInitParameter("exclude");
		exclude = ex.split(",");
	}

	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)res;
		Map user = (Map)request.getSession().getAttribute("loginuser");
		
		String uri = request.getRequestURI();
		//遇到lr.jsp及/login则放行
		for(String ex : exclude){
			if(uri.endsWith(ex)){//匹配成功则代表该资源被排除,放行
				chain.doFilter(req, res);
				return ;
			}
		}
		if(user == null){
			/*request.getSession().setAttribute("errmessage", "用户未登录或久未操作,请重新登录!");
			response.sendRedirect(request.getContextPath() + "/index.jsp");
		}else{*/
			chain.doFilter(req, res);
		}
	}
}