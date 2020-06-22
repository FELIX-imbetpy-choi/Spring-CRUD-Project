package com.spring.project.dto;

import java.sql.Timestamp;

public class BDto {
	
	// user table
	String user_id;
	String user_pw;
	String name;
	String email;
	int age;
	String education;
	String major;
	
	// post table
	int seq;
	String com_id;
	String contents;
	String title;
	
	// com_user table
	String com_pw;
	String business_num;
	String address;
	String company_name;
	String Company_logo;
	
	//apply table
	String date;
	
	
	// 변수설정 생성자
	public BDto(String user_id, String user_pw, String name, String email , int age , String education, String major
			, int seq,String com_id,String contents,String title,String com_pw,String business_num,String address
			,String company_name,String Company_logo,String date) {
			// TODO Auto-generated constructor stub
			this.user_id = user_id;
			this.user_pw = user_pw;
			this.name = name;
			this.email = email;
			this.age = age;
			this.education = education;
			this.major = major;
			this.seq = seq;
			this.com_id = com_id;
			this.contents = contents;
			this.title = title;
			this.com_pw = com_pw;
			this.business_num = business_num;
			this.address = address;
			this.company_name = company_name;
			this.Company_logo = Company_logo;
			this.date = date;
	}
	
	
	
	public int getSeq() {
		return seq;
	}


	public void setSeq(int seq) {
		this.seq = seq;
	}


	public String getCom_id() {
		return com_id;
	}


	public void setCom_id(String com_id) {
		this.com_id = com_id;
	}


	public String getContents() {
		return contents;
	}


	public void setContents(String contents) {
		this.contents = contents;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getCom_pw() {
		return com_pw;
	}


	public void setCom_pw(String com_pw) {
		this.com_pw = com_pw;
	}


	public String getBusiness_num() {
		return business_num;
	}


	public void setBusiness_num(String business_num) {
		this.business_num = business_num;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getCompany_name() {
		return company_name;
	}


	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}


	public String getCompany_logo() {
		return Company_logo;
	}


	public void setCompany_logo(String company_logo) {
		Company_logo = company_logo;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	// 빈생성자 생성
	public BDto() {
		// TODO Auto-generated constructor stub
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

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
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
	
}
