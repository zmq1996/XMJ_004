package com.yc.xmj.entity;

public class Messages {
	public int m_id;
	public int speaker;
	public int listener;
	public int m_type;
	public String m_rsn;
	public String m_date;
	
	public Messages() {
	}
	public int getM_id() {
		return m_id;
	}
	public void setM_id(int m_id) {
		this.m_id = m_id;
	}
	public int getSpeaker() {
		return speaker;
	}
	public void setSpeaker(int speaker) {
		this.speaker = speaker;
	}
	public int getListener() {
		return listener;
	}
	public void setListener(int listener) {
		this.listener = listener;
	}
	public int getM_type() {
		return m_type;
	}
	public void setM_type(int m_type) {
		this.m_type = m_type;
	}
	public String getM_rsn() {
		return m_rsn;
	}
	public void setM_rsn(String m_rsn) {
		this.m_rsn = m_rsn;
	}
	public String getM_date() {
		return m_date;
	}
	public void setM_date(String m_date) {
		this.m_date = m_date;
	}
	@Override
	public String toString() {
		return "Message [m_id=" + m_id + ", speaker=" + speaker + ", listener="
				+ listener + ", m_type=" + m_type + ", m_rsn=" + m_rsn
				+ ", m_date=" + m_date + "]";
	}
	
}
