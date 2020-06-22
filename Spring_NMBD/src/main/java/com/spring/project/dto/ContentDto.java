package com.spring.project.dto;

public class ContentDto {

	private int seq;
	private String com_id;
	private String contents;
	private String title;

	public ContentDto() {
		// TODO Auto-generated constructor stub
	}

	public ContentDto(int seq, String com_id, String contents, String title) {
		super();
		this.seq = seq;
		this.com_id = com_id;
		this.contents = contents;
		this.title = title;
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
	
	

}
