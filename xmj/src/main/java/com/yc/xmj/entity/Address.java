package com.yc.xmj.entity;

public class Address {

	private int addr_id;
	private int u_id;
	private String addr_name;
	private String introduce;
	private String addr_phone;
	private String email;

	public int getAddr_id() {
		return addr_id;
	}

	public void setAddr_id(int addr_id) {
		this.addr_id = addr_id;
	}

	public int getU_id() {
		return u_id;
	}

	public void setU_id(int u_id) {
		this.u_id = u_id;
	}

	public String getAddr_name() {
		return addr_name;
	}

	public void setAddr_name(String addr_name) {
		this.addr_name = addr_name;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getaddr_phone() {
		return addr_phone;
	}

	public void setaddr_phone(String addr_phone) {
		this.addr_phone = addr_phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Address(int addr_id, int u_id, String addr_name, String introduce, String addr_phone, String email) {
		this.addr_id = addr_id;
		this.u_id = u_id;
		this.addr_name = addr_name;
		this.introduce = introduce;
		this.addr_phone = addr_phone;
		this.email = email;
	}

	public Address() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Address [addr_id=" + addr_id + ", u_id=" + u_id + ", addr_name=" + addr_name + ", introduce="
				+ introduce + ", addr_phone=" + addr_phone + ", email=" + email + "]";
	}

}
