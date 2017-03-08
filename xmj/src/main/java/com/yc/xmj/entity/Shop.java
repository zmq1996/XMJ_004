package com.yc.xmj.entity;

import java.util.Date;

public class Shop {
	private Integer sid;
	private String sname ;
	private Integer suid ;
	private String majorBusiness;
	private String address;
	private String introduce;
	private Date sbirthday;
	private Integer sstatus;
	public Shop() {
	}
	
	public Shop(Integer sid, String sname, Integer suid, String majorBusiness, String address, String introduce,
			Date sbirthday, Integer sstatus) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.suid = suid;
		this.majorBusiness = majorBusiness;
		this.address = address;
		this.introduce = introduce;
		this.sbirthday = sbirthday;
		this.sstatus = sstatus;
	}

	@Override
	public String toString() {
		return "Shop [sid=" + sid + ", sname=" + sname + ", suid=" + suid + ", majorBusiness=" + majorBusiness
				+ ", address=" + address + ", introduce=" + introduce + ", sbirthday=" + sbirthday + ", sstatus="
				+ sstatus + "]";
	}

	public Integer getSid() {
		return sid;
	}
	public void setSid(Integer sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public Integer getSuid() {
		return suid;
	}
	public void setSuid(Integer suid) {
		this.suid = suid;
	}
	public String getMajorBusiness() {
		return majorBusiness;
	}
	public void setMajorBusiness(String majorBusiness) {
		this.majorBusiness = majorBusiness;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public Date getSbirthday() {
		return sbirthday;
	}
	public void setSbirthday(Date sbirthday) {
		this.sbirthday = sbirthday;
	}
	public Integer getSstatus() {
		return sstatus;
	}
	public void setSstatus(Integer sstatus) {
		this.sstatus = sstatus;
	}

}
