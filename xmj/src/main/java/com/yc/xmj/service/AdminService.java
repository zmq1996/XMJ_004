package com.yc.xmj.service;


import com.yc.xmj.entity.Admin;
import com.yc.xmj.entity.PaginationBean;
import com.yc.xmj.entity.User;

public interface AdminService {

	Admin login(Admin admin);

	PaginationBean<User> findUsers(String currPage, String pageSize);

	boolean modifyUser(User user);

	boolean deleteUser(int u_id);

}
