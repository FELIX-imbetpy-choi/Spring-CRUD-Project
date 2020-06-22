package com.spring.project.dto;

public class UserDto {

	private int age;
	private String user_id;
	private String user_pw;
	private String name;
	private String email;
	private String education;
	private String major;
	

	public UserDto() {
		// TODO Auto-generated constructor stub
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public String getUser_pw() {
		return user_pw;
	}


	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getEducation() {
		return education;
	}


	public void setEducation(String education) {
		this.education = education;
	}


	public String getMajor() {
		return major;
	}


	public void setMajor(String major) {
		this.major = major;
	}


	public UserDto(int age, String user_id, String user_pw, String name, String email, String education, String major) {
		super();
		this.age = age;
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.name = name;
		this.email = email;
		this.education = education;
		this.major = major;
	}

	
	

}
