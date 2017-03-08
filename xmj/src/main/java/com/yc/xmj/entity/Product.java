package com.yc.xmj.entity;

public class Product {
	private int p_id;
	private String p_name;
	private int s_id;
	private int t_id;
	private String properties;// 通过协议协定所有商品属性
	private int p_stock ; //库存有无

	public int getP_id() {
		return p_id;
	}

	public void setP_id(int p_id) {
		this.p_id = p_id;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public int getS_id() {
		return s_id;
	}

	public void setS_id(int s_id) {
		this.s_id = s_id;
	}

	public int getT_id() {
		return t_id;
	}

	public int getP_stock() {
		return p_stock;
	}

	public void setP_stock(int p_stock) {
		this.p_stock = p_stock;
	}

	public void setT_id(int t_id) {
		this.t_id = t_id;
	}

	public String getProperties() {
		return properties;
	}

	public void setProperties(String properties) {
		this.properties = properties;
	}

	public Product(int p_id, String p_name, int s_id, int t_id, String properties, int p_stock, String obligate1,
			String obligate2) {
		this.p_id = p_id;
		this.p_name = p_name;
		this.s_id = s_id;
		this.t_id = t_id;
		this.properties = properties;
		this.p_stock = p_stock;
	}

	@Override
	public String toString() {
		return "Product [p_id=" + p_id + ", p_name=" + p_name + ", s_id=" + s_id + ", t_id=" + t_id + ", properties="
				+ properties + ", p_stock=" + p_stock + ", obligate1=" + "]";
	}

	public Product() {
		// TODO Auto-generated constructor stub
	}

}
