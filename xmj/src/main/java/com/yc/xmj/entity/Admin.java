package com.yc.xmj.entity;

public class Admin {
	private Integer a_id;
	private String a_name;
	private String a_password;
	private Integer a_root;
	
	public Admin() {
	}

	public Admin(Integer a_id, String a_name, String a_password, Integer a_root) {
		super();
		this.a_id = a_id;
		this.a_name = a_name;
		this.a_password = a_password;
		this.a_root = a_root;
	}

	public Integer getA_id() {
		return a_id;
	}

	public void setA_id(Integer a_id) {
		this.a_id = a_id;
	}

	public String getA_name() {
		return a_name;
	}

	public void setA_name(String a_name) {
		this.a_name = a_name;
	}

	public String getA_password() {
		return a_password;
	}

	public void setA_password(String a_password) {
		this.a_password = a_password;
	}

	public Integer getA_root() {
		return a_root;
	}

	public void setA_root(Integer a_root) {
		this.a_root = a_root;
	}

	@Override
	public String toString() {
		return "Admin [a_id=" + a_id + ", a_name=" + a_name + ", a_password="
				+ a_password + ", a_root=" + a_root + "]";
	}
	
	
}
