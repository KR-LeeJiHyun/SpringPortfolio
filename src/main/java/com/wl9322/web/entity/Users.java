package com.wl9322.web.entity;

public class Users {
	
	//private String id;
	private String name;
	private String category;
	private String image_path;
	private String url;
	private String phone;
	private String email;
	private String country;
	private String address;
	private String e_name;
	
	public Users() {}
	
	public Users( String name, String category, String image_path, String url, String phone, String email,
			String country, String address, String e_name) {
		this.name = name;
		this.category = category;
		this.image_path = image_path;
		this.url = url;
		this.phone = phone;
		this.email = email;
		this.country = country;
		this.address = address;
		this.e_name = e_name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getImage_path() {
		return image_path;
	}

	public void setImage_path(String image_path) {
		this.image_path = image_path;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getaddress() {
		return address;
	}

	public void setaddress(String address) {
		this.address = address;
	}
	
	public String getE_name() {
		return e_name;
	}

	public void setE_name(String e_name) {
		this.e_name = e_name;
	}
	
}
