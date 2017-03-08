package com.yc.xmj.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import org.apache.commons.lang3.RandomStringUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.yc.xmj.entity.Shop;
import com.yc.xmj.entity.User;
import com.yc.xmj.mapper.SellerMapper;

@Service("sellerService")
public class SellerServiceimpl implements SellerService {

	@Autowired
	SellerMapper sellerMapper;
	
	@Transactional
	public int createShop(User user) {
		int OrinNameLength=12;
		Random rd = new Random();
		//生存随机数范围 0~num-1 
		String sname = RandomStringUtils.random(OrinNameLength,true,true);
		Shop shop = new Shop();
		shop.setSuid(user.getU_id());
		shop.setSstatus(1);
		shop.setSname(sname);
		shop.setSbirthday(new Date());
		LogManager.getLogger().debug("创建新店"+shop);
	
		//1.插入一个新店
		sellerMapper.insertShop(shop);
		//2.修改用户的权限
		sellerMapper.becomeSeller(user);
		
		return 1 ;
	}
}
