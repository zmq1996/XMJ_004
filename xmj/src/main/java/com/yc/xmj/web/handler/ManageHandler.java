package com.yc.xmj.web.handler;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yc.xmj.entity.Admin;
import com.yc.xmj.entity.PaginationBean;
import com.yc.xmj.entity.User;
import com.yc.xmj.service.AdminService;

@Controller
@RequestMapping("/manage")
@SessionAttributes("manageName")
public class ManageHandler {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/login")
	@ResponseBody
	public int login(Admin admin,ModelMap map) {
		LogManager.getLogger().debug("请求ManageHandler处理login...");
		admin = adminService.login(admin);
		if(admin!=null){
			map.put("manageName", admin.getA_name());
			return admin.getA_root();
		}else{
			return 2;
		}
	}
	
	@RequestMapping("/userList")
	@ResponseBody
	public PaginationBean<User> userlist(String page,String rows){
		LogManager.getLogger().debug("请求ManageHandler处理userlist...");
		return adminService.findUsers(page,rows);
	}
	
	@RequestMapping("/userModify")
	@ResponseBody
	public boolean usemodify(User user){
		LogManager.getLogger().debug("请求ManageHandler处理usermodify...");
		return adminService.modifyUser(user);
	}
	
	@RequestMapping("/userDelete")
	public boolean userdelete(int u_id){
		LogManager.getLogger().debug("请求ManageHandler处理userdelete...");
		return adminService.deleteUser(u_id);
	}
}
