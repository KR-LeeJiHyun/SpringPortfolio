package com.wl9322.web.entity;

public class ProjectSummaryView {

	private String title;
	private String rep_image;
	private String introduce;
	private String src_title;
	private String category;
	
	public ProjectSummaryView() {}

	public ProjectSummaryView(String title, String rep_image, String introduce, String src_title, String category) {
		super();
		this.title = title;
		this.rep_image = rep_image;
		this.introduce = introduce;
		this.src_title = src_title;
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getRep_image() {
		return rep_image;
	}

	public void setRep_image(String rep_image) {
		this.rep_image = rep_image;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getSrc_title() {
		return src_title;
	}

	public void setSrc_title(String src_title) {
		this.src_title = src_title;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
}
