package com.wl9322.web.entity;

public class Project {
	
	//private String id;
	private String title;
	private String image;
	private String introduce;
	private String content;
	private String url;
	private String src_title;
	private String category;
	private int img_cnt;
	
	public Project() {}

	public Project(String title, String image, String introduce, String content, String url, String src_title,
			String category, int img_cnt) {
		this.title = title;
		this.image = image;
		this.introduce = introduce;
		this.content = content;
		this.url = url;
		this.src_title = src_title;
		this.category = category;
		this.img_cnt = img_cnt;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
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

	public int getImg_cnt() {
		return img_cnt;
	}

	public void setImg_cnt(int img_cnt) {
		this.img_cnt = img_cnt;
	}

}
