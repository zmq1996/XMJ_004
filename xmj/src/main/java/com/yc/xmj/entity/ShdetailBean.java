package com.yc.xmj.entity;

import java.util.List;

public class ShdetailBean {
	private int u_id;

	private List<Shdetail> rows;

	public int getU_id() {
		return u_id;
	}

	public void setU_id(int u_id) {
		this.u_id = u_id;
	}

	public List<Shdetail> getRows() {
		return rows;
	}

	public void setRows(List<Shdetail> rows) {
		this.rows = rows;
	}

	public ShdetailBean() {
		// TODO Auto-generated constructor stub
	}

	public ShdetailBean(List<Shdetail> rows ,int u_id) {
		this.rows = rows;
		this.u_id =u_id;
	}

	@Override
	public String toString() {
		return "ShdetailBean [u_id=" + u_id + ", rows=" + rows + "]";
	}

}
