package com.yc.xmj.service;

import com.yc.xmj.entity.Address;
import com.yc.xmj.entity.OrderDetail;
import com.yc.xmj.entity.PaginationBean;
import com.yc.xmj.entity.ShdetailBean;
import com.yc.xmj.entity.Trolley;
import com.yc.xmj.entity.User;

public interface UserService {

	boolean register(User user);

	User login(User user);

	PaginationBean<Trolley> getTrolley(String currPage, String pageSize ,int u_id);

	int updateS_num(String p_id);

	int selectS_num(String p_id);

	int addS_num(String p_id);

	int deleteProduct(String p_id);

	PaginationBean<OrderDetail> getOrders(String currPage, String pageSize ,int u_id);

	ShdetailBean getShdetailBean(int u_id);

	int placeOrder(int u_id);

	Address getAddress(int u_id);

}
