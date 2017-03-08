package com.yc.xmj.entity;

public class OrderDetail {
	private int u_id;
	private int o_id;
	private String addr_name;
	private String introduce;
	private String addr_phone;
	private String o_date;
	private int obuy_status;
	private int osale_status;
	private int odd_num;
	private int p_id;
	private String p_name;
	private int s_id;
	private int t_id;
	private String properties;

	public int getOdd_num() {
		return odd_num;
	}

	public void setOdd_num(int odd_num) {
		this.odd_num = odd_num;
	}

	public int getU_id() {
		return u_id;
	}

	public int getO_id() {
		return o_id;
	}

	public void setO_id(int o_id) {
		this.o_id = o_id;
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

	public String getAddr_phone() {
		return addr_phone;
	}

	public void setAddr_phone(String addr_phone) {
		this.addr_phone = addr_phone;
	}

	public String getO_date() {
		return o_date;
	}

	public void setO_date(String o_date) {
		this.o_date = o_date;
	}

	public int getObuy_status() {
		return obuy_status;
	}

	public void setObuy_status(int obuy_status) {
		this.obuy_status = obuy_status;
	}

	public int getOsale_status() {
		return osale_status;
	}

	public void setOsale_status(int osale_status) {
		this.osale_status = osale_status;
	}

	public void setU_id(int u_id) {
		this.u_id = u_id;
	}

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

	public void setT_id(int t_id) {
		this.t_id = t_id;
	}

	public String getProperties() {
		return properties;
	}

	public void setProperties(String properties) {
		this.properties = properties;
	}

	public OrderDetail(int u_id, int o_id, String addr_name, String introduce, String addr_phone, String o_date,
			int obuy_status, int osale_status, int odd_num, int p_id, String p_name, int s_id, int t_id,
			String properties) {
		this.u_id = u_id;
		this.o_id = o_id;
		this.addr_name = addr_name;
		this.introduce = introduce;
		this.addr_phone = addr_phone;
		this.o_date = o_date;
		this.obuy_status = obuy_status;
		this.osale_status = osale_status;
		this.odd_num = odd_num;
		this.p_id = p_id;
		this.p_name = p_name;
		this.s_id = s_id;
		this.t_id = t_id;
		this.properties = properties;
	}

	public OrderDetail() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "OrderDetail [u_id=" + u_id + ", o_id=" + o_id + ", addr_name=" + addr_name + ", introduce=" + introduce
				+ ", addr_phone=" + addr_phone + ", o_date=" + o_date + ", obuy_status=" + obuy_status
				+ ", osale_status=" + osale_status + ", odd_num=" + odd_num + ", p_id=" + p_id + ", p_name=" + p_name
				+ ", s_id=" + s_id + ", t_id=" + t_id + ", properties=" + properties + "]";
	}

}
