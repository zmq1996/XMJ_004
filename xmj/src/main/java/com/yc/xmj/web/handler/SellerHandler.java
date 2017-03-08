package com.yc.xmj.web.handler;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.yc.xmj.entity.User;
import com.yc.xmj.service.SellerService;

@Controller("sellerHandler")
@RequestMapping("/seller")
public class SellerHandler {

	@Autowired
	private SellerService sellerService;
	@RequestMapping("/openShop")
	@ResponseBody
	//成功，随机插入一个店铺（Shop类），返回1  失败返回0 ，错误返回-1
	//问题，user的传递
	public int openShop(User user){
		LogManager.getLogger().debug("用户"+user+"申请开店");
		
		//当两个认证满足条件，进行数据库插入
		if(user.getPayAuthentication()>0 && user.getRealNameAuthentication()>0){
			try {
				return sellerService.createShop(user);
			} catch (Exception e) {
				e.printStackTrace();
				return -1;
			}
		}
		
		return 0;
	} 
	
}
