package com.smhrd.entity;

import java.sql.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class Board {
	// 게시글 정보를 하나로 묶을 수 있는 클래스
	// 이 클래스 형태 그대로 DataBase에 Table 생성
	@Id // primary key 설정
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idx; // 번호
	
	private String title; // 제목
	
	@Column(length = 2000) // 길이지정 안할 시 기본 255
	private String contents; // 내용
	
	private String writer; // 작성자
	
	@Column(insertable = false, updatable = false, columnDefinition = "datetime default now()")
	private Date indate; // 날짜
	
	@Column(insertable = false, updatable = false, columnDefinition = "int default 0")
	private Long count; // 조회수

	public Long getIdx() {
		return idx;
	}

	public void setIdx(Long idx) {
		this.idx = idx;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public Date getIndate() {
		return indate;
	}

	public void setIndate(Date indate) {
		this.indate = indate;
	}

	public Long getCount() {
		return count;
	}

	public void setCount(Long count) {
		this.count = count;
	}

	
	
}





