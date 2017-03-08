package com.yc.xmj.entity;

public class Shdetail {
	private int sht_id;
	private int sh_id;
	private int p_id;
	private String s_date;
	private String s_num;

	public int getSht_id() {
		return sht_id;
	}

	public String getS_date() {
		return s_date;
	}

	public void setS_date(String s_date) {
		this.s_date = s_date;
	}

	public String getS_num() {
		return s_num;
	}

	public void setS_num(String s_num) {
		this.s_num = s_num;
	}

	public void setSht_id(int sht_id) {
		this.sht_id = sht_id;
	}

	public int getSh_id() {
		return sh_id;
	}

	public void setSh_id(int sh_id) {
		this.sh_id = sh_id;
	}

	public int getP_id() {
		return p_id;
	}

	public void setP_id(int p_id) {
		this.p_id = p_id;
	}

	public Shdetail(int sht_id, int sh_id, int p_id, String s_date, String s_num) {
		this.sht_id = sht_id;
		this.sh_id = sh_id;
		this.p_id = p_id;
		this.s_date = s_date;
		this.s_num = s_num;
	}

	public Shdetail() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Shdetail [sht_id=" + sht_id + ", sh_id=" + sh_id + ", p_id=" + p_id + ", s_date=" + s_date + ", s_num="
				+ s_num + "]";
	}

}
