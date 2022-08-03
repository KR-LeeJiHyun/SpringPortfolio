package com.wl9322.web.entity;

import java.util.Date;

public class Experience {
	
	//private String id;
	private String experience_name;
	private Date join;
	private Date leave;
	private String content;
	
	public Experience() {}

	public Experience(String experience_name, Date join, Date leave, String content) {
		super();
		this.experience_name = experience_name;
		this.join = join;
		this.leave = leave;
		this.content = content;
	}

	public String getExperience_name() {
		return experience_name;
	}

	public void setExperience_name(String experience_name) {
		this.experience_name = experience_name;
	}

	public Date getJoin() {
		return join;
	}

	public void setJoin(Date join) {
		this.join = join;
	}

	public Date getLeave() {
		return leave;
	}

	public void setLeave(Date leave) {
		this.leave = leave;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	
}
