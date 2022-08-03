package com.wl9322.web.entity;

import java.util.Date;

public class Education {
	
	//private String id;
	private String school_name;
	private Date admission;
	private Date graduation;
	private String content;
	
	public Education() {}

	public Education(String school_name, Date admission, Date graduation, String content) {
		this.school_name = school_name;
		this.admission = admission;
		this.graduation = graduation;
		this.content = content;
	}

	public String getSchool_name() {
		return school_name;
	}

	public void setSchool_name(String school_name) {
		this.school_name = school_name;
	}

	public Date getAdmission() {
		return admission;
	}

	public void setAdmission(Date admission) {
		this.admission = admission;
	}

	public Date getGraduation() {
		return graduation;
	}

	public void setGraduation(Date graduation) {
		this.graduation = graduation;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
}
