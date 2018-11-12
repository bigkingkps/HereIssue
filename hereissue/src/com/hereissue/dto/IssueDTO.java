package com.hereissue.dto;

import java.sql.Date;

public class IssueDTO {
	
	private int ino;
	private int i;
	private Date regdate;
	private String s;
	private String title;
	private String article;
	
	public IssueDTO() {
		
	}

	public IssueDTO(int ino, int i, Date regdate, String s, String title, String article) {
		super();
		this.ino = ino;
		this.i = i;
		this.regdate = regdate;
		this.s = s;
		this.title = title;
		this.article = article;
	}

	public int getIno() {
		return ino;
	}

	public void setIno(int ino) {
		this.ino = ino;
	}

	public int getI() {
		return i;
	}

	public void setI(int i) {
		this.i = i;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getS() {
		return s;
	}

	public void setS(String s) {
		this.s = s;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getArticle() {
		return article;
	}

	public void setArticle(String article) {
		this.article = article;
	}
	
	

}
