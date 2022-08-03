package com.wl9322.web.entity;

public class Skill {
	
	//private String id;
	private String skill_name;
	private int percent;
	
	public Skill() {}

	public Skill(String skill_name, int percent) {
		this.skill_name = skill_name;
		this.percent = percent;
	}

	public String getSkill_name() {
		return skill_name;
	}

	public void setSkill_name(String skill_name) {
		this.skill_name = skill_name;
	}

	public int getPercent() {
		return percent;
	}

	public void setPercent(int percent) {
		this.percent = percent;
	}
	
}
