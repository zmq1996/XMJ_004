package com.yc.xmj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;









import com.yc.xmj.entity.Admin;
import com.yc.xmj.entity.PaginationBean;
import com.yc.xmj.entity.User;
import com.yc.xmj.mapper.AdminMapper;
import com.yc.xmj.service.AdminService;
import com.yc.xmj.util.Encrypt;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper adminMapper;
	
	@Override
	public Admin login(Admin admin) {
		//admin.setapassword(Encrypt.md5AndSha(admin.getapassword()));
		return adminMapper.getAdmin(admin);
	}

	@Override
	public PaginationBean<User> findUsers(String currPage, String pageSize) {
		PaginationBean<User> userBean=new PaginationBean<User>();
		if(currPage !=null){
			userBean.setCurrPage(Integer.parseInt(currPage));
		}
		if(pageSize !=null){
			userBean.setPageSize(Integer.parseInt(pageSize));
		}
		return adminMapper.getUsers(userBean);
	}

	@Override
	public boolean modifyUser(User user) {
		return adminMapper.modifyUser(user)>0;
	}

	@Override
	public boolean deleteUser(int u_id) {
		return adminMapper.deleteUser(u_id)>0;
	}

}
