package com.yc.xmj.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yc.xmj.entity.Address;
import com.yc.xmj.entity.OrderDetail;
import com.yc.xmj.entity.Orders;
import com.yc.xmj.entity.PaginationBean;
import com.yc.xmj.entity.ShdetailBean;
import com.yc.xmj.entity.Trolley;
import com.yc.xmj.entity.User;
import com.yc.xmj.mapper.UserMapper;
import com.yc.xmj.service.UserService;
import com.yc.xmj.util.Encrypt;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public User login(User user) {
		user.setU_password(Encrypt.md5AndSha(user.getU_password()));
		return  userMapper.getUser(user);
	}

	@Override @Transactional
	public boolean register(User user) {
		int sum = 0;
		user.setU_password(Encrypt.md5AndSha(user.getU_password()));
		sum = userMapper.register(user) + userMapper.insertAddress(user) + userMapper.insertShoppingBakcet(user);
		System.out.println(sum);
		return sum >= 3;
	}

	@Override
	public PaginationBean<Trolley> getTrolley(String currPage, String pageSize,int u_id) {
		PaginationBean<Trolley> trolleyBean = new PaginationBean<Trolley>();
		if(currPage !=null){
			trolleyBean.setCurrPage(Integer.parseInt(currPage));
		}
		if(pageSize !=null){
			trolleyBean.setPageSize(Integer.parseInt(pageSize));
		}
		System.out.println(u_id);
		if(u_id != 0){
			trolleyBean.setU_id(u_id);
		}
		return userMapper.getTrolley(trolleyBean);
	}

	@Override
	public int updateS_num(String p_id) {
		// TODO Auto-generated method stub
		return userMapper.updateS_num(Integer.parseInt(p_id));
	}

	@Override @Transactional
	public int selectS_num(String p_id) {
		// TODO Auto-generated method stub
		int result = userMapper.selectS_num(Integer.parseInt(p_id));
		if(result <= 0)
			userMapper.deleteS_num(Integer.parseInt(p_id));
		return result;
	}

	@Override
	public int addS_num(String p_id) {
		// TODO Auto-generated method stub
		return userMapper.addS_num(Integer.parseInt(p_id));
	}

	@Override
	public int deleteProduct(String p_id) {
		// TODO Auto-generated method stub
		return userMapper.deleteS_num(Integer.parseInt(p_id));
	}

	@Override
	public PaginationBean<OrderDetail> getOrders(String currPage, String pageSize, int u_id) {
		PaginationBean<OrderDetail> OrderDetail = new PaginationBean<OrderDetail>();
		if(currPage !=null){
			OrderDetail.setCurrPage(Integer.parseInt(currPage));
		}
		if(pageSize !=null){
			OrderDetail.setPageSize(Integer.parseInt(pageSize));
		}
		System.out.println(u_id);
		if(u_id != 0){
			OrderDetail.setU_id(u_id);
		}
		return userMapper.getOrders(OrderDetail);
	}

	@Override
	public ShdetailBean getShdetailBean(int u_id) {
		ShdetailBean shdetailBean = new ShdetailBean();
		shdetailBean.setU_id(u_id);
		return userMapper.getShdetailBean(shdetailBean);
	}

	@Override
	public int placeOrder(int u_id) {
		Orders orders = new Orders(); 
		orders.setU_id(u_id);
		System.out.println(orders);
		return userMapper.placeOrder(orders);
	}

	@Override
	public Address getAddress(int u_id) {
		// TODO Auto-generated method stub
		return userMapper.getAddress(u_id);
	}

}
