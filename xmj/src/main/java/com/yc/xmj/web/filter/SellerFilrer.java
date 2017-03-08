package com.yc.xmj.web.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yc.xmj.entity.User;

@WebFilter("/page/SellMode/*")
public class SellerFilrer extends AbstractFilter{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		//测试数据
		HttpServletRequest httprequest = (HttpServletRequest) request;
		HttpServletResponse httpresponse =  (HttpServletResponse) response;
		HttpSession session = httprequest.getSession();
		
		User user = new User();
		user.setU_name("xiaodan's father");
		user.setPayAuthentication(1);
		user.setRealNameAuthentication(1);
		user.setEmail("123456@heihei.com");
		user.setU_id(1001);
		session.setAttribute("user", user);
		
		if(session.getAttribute("user") == null){
			httpresponse.sendRedirect("/xmj/page/login.jsp");
		}
		// TODO 如果user的权限字段为1  说明已经开店成功，所以跳转到卖家中心页面
		chain.doFilter(httprequest, httpresponse);
	}

}
