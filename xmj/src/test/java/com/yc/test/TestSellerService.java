package com.yc.test;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.xmj.entity.User;
import com.yc.xmj.service.SellerService;
import com.yc.xmj.web.handler.SellerHandler;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class TestSellerService {

	@Autowired
	private SellerService sellerService ;
	@Autowired
	private SellerHandler sellerHandler ;

	@Test
	public void testAop(){
		User user = new User();
		user.setU_id(1001);
		sellerService.createShop(user)	;
	}
	
	
}
