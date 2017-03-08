package com.yc.xmj.web.handler;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yc.xmj.entity.Address;
import com.yc.xmj.entity.OrderDetail;
import com.yc.xmj.entity.PaginationBean;
import com.yc.xmj.entity.ShdetailBean;
import com.yc.xmj.entity.ShoppingBakcet;
import com.yc.xmj.entity.Trolley;
import com.yc.xmj.entity.User;
import com.yc.xmj.service.UserService;
import com.yc.xmj.util.SMS;


@Controller
@RequestMapping("*/user")
@SessionAttributes("loginUser")
public class UserHandler {
	
	@Autowired
	private UserService userService;
	
	@ResponseBody
	@RequestMapping("/login")
	public boolean login(User user,ModelMap map) {
		System.out.println(user);
		try {
			 user = userService.login(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			map.put("errorMsg", "用户名或密码错误");
			/*return "forward:/login.jsp";*/
			return false;
		}
		System.out.println(user);
		map.put("loginUser", user);
		map.put("errorMsg", "");
		return true;
	}
	
	@RequestMapping("/register")
	@ResponseBody
	public boolean register(User user,ModelMap map) {
		System.out.println(user);
		if(userService.register(user)){
			/*return "redirect:/page/login.jsp";*/
			return true;
		}
		/*return "forward:/register.jsp";*/
		return false;
	}
	
	@RequestMapping("/shoppingBakcet")
	@ResponseBody
	public boolean shoppingBakcet(User user,ModelMap map) {
		System.out.println(user);
		ShoppingBakcet shoppingBakcet = null;
		map.put("shoppingBakcet",shoppingBakcet );
		if(userService.register(user)){
			return true;
		}
		/*return "forward:/register.jsp";*/
		return false;
	}
	
	@RequestMapping("/getSMS")
	@ResponseBody
	public String getSMS(User user,ModelMap map) {
		SMS sms = new SMS();
		sms.sendSMS(user.getU_phone());
		System.out.println(sms.getNum());
		return String.valueOf(sms.getNum());
		//return "1234";
	}
	
	@RequestMapping("/getTrolley")
	@ResponseBody
	public PaginationBean<Trolley> getTrolley(String page,String rows,ModelMap map) {
		User user = (User) map.get("loginUser");
		if(user != null){
			System.out.println(user);
			return userService.getTrolley(page,rows,user.getU_id());
		}
		return null;
	}
	
	@RequestMapping("/getOrders")
	@ResponseBody
	public PaginationBean<OrderDetail> getOrders(String page,String rows,ModelMap map) {
		User user = (User) map.get("loginUser");
		if(user != null){
			System.out.println(user);
			return userService.getOrders(page,rows,user.getU_id());
		}
		return null;
	}
	
	@RequestMapping("/updateS_num")
	@ResponseBody
	public int updateS_num(String p_id,ModelMap map) {
		int result1 = 0;
		int result2 = 0;
		if(p_id != null){
			System.out.println(p_id);
			result1 = userService.updateS_num( p_id);
			result2 = userService.selectS_num(p_id);
			if(result1 > 0)
				return result2;
		}
		return -1;
	}
	
	@RequestMapping("/addS_num")
	@ResponseBody
	public boolean addS_num(String p_id,ModelMap map) {
		int result1 = 0;
		if(p_id != null){
			System.out.println(p_id);
			result1 = userService.addS_num( p_id);
			if(result1 > 0)
				return  true;
		}
		return false;
	}
	
	@RequestMapping("/deleteProduct")
	@ResponseBody
	public boolean deleteProduct(String p_id,ModelMap map) {
		int result1 = 0;
		if(p_id != null){
			System.out.println(p_id);
			result1 = userService.deleteProduct(p_id);
			if(result1 > 0)
				return  true;
		}
		return false;
	}
	
	@RequestMapping("/getShdetailBean")
	@ResponseBody
	public boolean getShdetailBean(ModelMap map) {
		User user = (User) map.get("loginUser");
		//ShdetailBean shdetailBean = new ShdetailBean();
		if(user != null){
			System.out.println(user);
			//shdetailBean = userService.getShdetailBean(user.getU_id());
			userService.placeOrder(user.getU_id());
			return userService.placeOrder(user.getU_id()) >0;
		}
		return false;
	}
	
	@RequestMapping("/getAddress")
	@ResponseBody
	public Address getAddress(ModelMap map) {
		User user = (User) map.get("loginUser");
		if(user != null){
			System.out.println(user);
			return userService.getAddress(user.getU_id() );
		}
		return new Address();
	}
}
