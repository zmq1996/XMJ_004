package com.yc.xmj.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class HelloInterceptor implements HandlerInterceptor {

	//第一次请求的时候初始化
	public HelloInterceptor() {
		System.out.println("HelloInterceptor初始化操作...");
	}
	
	
	
	@Override//到达handler处理前调用处理的方法
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%%HelloInterceptor.preHandle()%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
		//response.sendRedirect("/springmvc04-interceptor/interceptor.jsp");
		return true;
	}

	@Override//handler处理后，视图响应前处理的方法
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%%HelloInterceptor.postHandle()%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
		modelAndView.setViewName("success2");
	}

	@Override//handler处理后，视图响应后处理的方法
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%%HelloInterceptor.afterCompletion()%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
		
	}

	
}
