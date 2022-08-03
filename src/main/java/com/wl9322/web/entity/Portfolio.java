package com.wl9322.web.entity;

import java.util.List;

public class Portfolio {
	List<Award> award_list;
	List<Education> education_list;
	List<Experience> experience_list;
	List<ProjectSummaryView> project_summary_list;
	List<Skill> skill_list;
	Users user;
	
	public Portfolio() {}

	public Portfolio(List<Award> award_list, List<Education> education_list, List<Experience> experience_list,
			List<ProjectSummaryView> project_summary_list, List<Skill> skill_list, Users user) {
		super();
		this.award_list = award_list;
		this.education_list = education_list;
		this.experience_list = experience_list;
		this.project_summary_list = project_summary_list;
		this.skill_list = skill_list;
		this.user = user;
	}

	public List<Award> getAward_list() {
		return award_list;
	}

	public void setAward_list(List<Award> award_list) {
		this.award_list = award_list;
	}

	public List<Education> getEducation_list() {
		return education_list;
	}

	public void setEducation_list(List<Education> education_list) {
		this.education_list = education_list;
	}

	public List<Experience> getExperience_list() {
		return experience_list;
	}

	public void setExperience_list(List<Experience> experience_list) {
		this.experience_list = experience_list;
	}

	public List<ProjectSummaryView> getProject_summary_list() {
		return project_summary_list;
	}

	public void setProject_summary_list(List<ProjectSummaryView> project_summary_list) {
		this.project_summary_list = project_summary_list;
	}

	public List<Skill> getSkill_list() {
		return skill_list;
	}

	public void setSkill_list(List<Skill> skill_list) {
		this.skill_list = skill_list;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}
	
	
}
