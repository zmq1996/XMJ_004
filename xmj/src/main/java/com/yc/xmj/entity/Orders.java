package com.yc.xmj.entity;

import java.util.List;

public class Orders {
	private int o_id;
	private int u_id ;
	private String o_date;
	private int obuy_status ; 
	private int osale_status;
	
	
	public int geto_id() {
		return o_id;
	}

	public void seto_id(int o_id) {
		this.o_id = o_id;
	}

	public int getU_id() {
		return u_id;
	}

	public void setU_id(int u_id) {
		this.u_id = u_id;
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

	public Orders(int o_id, int u_id, String obligate1, String obligate2) {
		this.o_id = o_id;
		this.u_id = u_id;
	}

	public Orders() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Orders [o_id=" + o_id + ", u_id=" + u_id + ", o_date=" + o_date + ", obuy_status=" + obuy_status
				+ ", osale_status=" + osale_status + "]";
	}

}
