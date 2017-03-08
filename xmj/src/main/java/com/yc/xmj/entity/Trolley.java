package com.yc.xmj.entity;

public class Trolley {
	private int u_id;
	private int sh_id;
	private String s_date;
	private int s_num;
	private int p_id;
	private String p_name;
	private int s_id;
	private int t_id;
	private String properties;
	
	public int getU_id() {
		return u_id;
	}

	public void setU_id(int u_id) {
		this.u_id = u_id;
	}

	public int getSh_id() {
		return sh_id;
	}

	public void setSh_id(int sh_id) {
		this.sh_id = sh_id;
	}

	public String getS_date() {
		return s_date;
	}

	public void setS_date(String s_date) {
		this.s_date = s_date;
	}

	public int getS_num() {
		return s_num;
	}

	public void setS_num(int s_num) {
		this.s_num = s_num;
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

	public Trolley(int u_id, int sh_id, String s_date, int s_num, int p_id, String p_name, int s_id, int t_id,
			String properties) {
		this.u_id = u_id;
		this.sh_id = sh_id;
		this.s_date = s_date;
		this.s_num = s_num;
		this.p_id = p_id;
		this.p_name = p_name;
		this.s_id = s_id;
		this.t_id = t_id;
		this.properties = properties;
	}

	public Trolley() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Trolley [u_id=" + u_id + ", sh_id=" + sh_id + ", s_date=" + s_date + ", s_num=" + s_num + ", p_id="
				+ p_id + ", p_name=" + p_name + ", s_id=" + s_id + ", t_id=" + t_id + ", properties=" + properties
				+ "]";
	}

}
