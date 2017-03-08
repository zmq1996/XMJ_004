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

import org.apache.logging.log4j.LogManager;

import com.yc.xmj.entity.User;

@WebFilter("/page/SellMode/openStore.jsp")
public class OptenStoreFilter extends AbstractFilter{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		LogManager.getLogger().debug("OptenStoreFilter 进行用户是否已经开过店验证");
		HttpServletRequest httprequest = (HttpServletRequest) request;
		HttpServletResponse httpresponse =  (HttpServletResponse) response;
		HttpSession session = httprequest.getSession();
	/*	User testuser = new User();
		testuser.setU_name("xiaodan's father");
		testuser.setPayAuthentication(1);
		testuser.setRealNameAuthentication(1);
		testuser.setEmail("123456@heihei.com");
		testuser.setU_id(1001);
		session.setAttribute("user", testuser);*/
		
		if(session.getAttribute("loginUser") == null){
			httpresponse.sendRedirect("/xmj/page/login.jsp");
		}else if(session.getAttribute("shop") != null){
			httpresponse.sendRedirect("/xmj/page/SellMode/sellerCenter.jsp");
		}else{
			User user = (User) session.getAttribute("loginUser");
			if(user.getU_root()>0){
				httpresponse.sendRedirect("/xmj/page/SellMode/sellerCenter.jsp");
			}
		}
		chain.doFilter(httprequest, httpresponse);
	}

}
