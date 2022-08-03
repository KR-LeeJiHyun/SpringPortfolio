package com.wl9322.web.entity;

import java.util.Date;

public class Award {
	
	//private String id;
	private String award_name;
	private Date award_date;
	private String content;
	
	public Award() {}

	public Award(String award_name, Date award_date, String content) {
		super();
		this.award_name = award_name;
		this.award_date = award_date;
		this.content = content;
	}

	public String getAward_name() {
		return award_name;
	}

	public void setAward_name(String award_name) {
		this.award_name = award_name;
	}

	public Date getAward_date() {
		return award_date;
	}

	public void setAward_date(Date award_date) {
		this.award_date = award_date;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
}
