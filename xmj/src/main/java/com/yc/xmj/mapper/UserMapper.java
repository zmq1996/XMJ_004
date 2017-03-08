package com.yc.xmj.mapper;

import org.springframework.transaction.annotation.Transactional;

import com.yc.xmj.entity.Address;
import com.yc.xmj.entity.OrderDetail;
import com.yc.xmj.entity.Orders;
import com.yc.xmj.entity.PaginationBean;
import com.yc.xmj.entity.ShdetailBean;
import com.yc.xmj.entity.Trolley;
import com.yc.xmj.entity.User;

public interface UserMapper {

	User getUser(User user);
	
	@Transactional
	int register(User user);
	
	@Transactional
	int insertAddress(User user);
	
	@Transactional
	int insertShoppingBakcet(User user);
	
	PaginationBean<Trolley> getTrolley(PaginationBean<Trolley> trolleyBean);

	int updateS_num(int p_id);

	@Transactional
	int selectS_num(int p_id);

	@Transactional
	int deleteS_num(int p_id);

	int addS_num(int p_id);

	int deleteProduct(int p_id);

	PaginationBean<OrderDetail> getOrders(PaginationBean<OrderDetail> orderDetail);
	
	ShdetailBean getShdetailBean(ShdetailBean shdetailBean);

	int placeOrder(Orders orders);

	Address getAddress(int u_id);
}
