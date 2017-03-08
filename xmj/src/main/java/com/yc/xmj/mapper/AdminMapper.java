package com.yc.xmj.mapper;

import com.yc.xmj.entity.Admin;
import com.yc.xmj.entity.PaginationBean;
import com.yc.xmj.entity.User;

public interface AdminMapper {
	Admin getAdmin(Admin admin);

	PaginationBean<User> getUsers(PaginationBean<User> userBean);

	int modifyUser(User user);

	int deleteUser(int u_id);

}
