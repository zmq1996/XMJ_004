package com.yc.xmj.entity;

import java.util.List;

/**
 * 分页通用实体类
 * 
 * @author dell
 *
 * @param <T>
 */
public class PaginationBean<T> {
	// 分页的请求数据
	private Integer pageSize = 1;// 每页的记录数
	private Integer currPage = 10;// 当前页

	// 分页的响应数据
	private Integer totalPage;// 总页数
	private Integer total;// 总记录数,固定格式的名字
	private List<T> rows;// 当前页的数据对象集合

	// 用于查询某用户的分页
	private int u_id; //


	public PaginationBean(Integer pageSize, Integer currPage) {
		this.pageSize = pageSize;
		this.currPage = currPage;
	}

	public PaginationBean(Integer pageSize, Integer currPage, int u_id) {
		this.pageSize = pageSize;
		this.currPage = currPage;
		this.u_id = u_id;
	}

	public PaginationBean() {
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getCurrPage() {
		return currPage;
	}

	public void setCurrPage(Integer currPage) {
		this.currPage = currPage;
	}

	public int getU_id() {
		return u_id;
	}

	public void setU_id(int u_id) {
		this.u_id = u_id;
	}

	public Integer getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public List<T> getRows() {
		return rows;
	}

	public void setRows(List<T> rows) {
		this.rows = rows;
	}

	@Override
	public String toString() {
		return "PaginationBean [pageSize=" + pageSize + ", currPage=" + currPage + ", totalPage=" + totalPage
				+ ", total=" + total + ", rows=" + rows + "]";
	}
}
