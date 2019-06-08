//데이터로부터 게시글을 읽는 자바빈 클래스
package member;

import java.io.*;
import javax.servlet.*;
import java.sql.*;

public class BoardItem {
	private int seqNo; //순번
	private String title; //제목
	private String content; //내용
	private String writer; //작성자
	private	String date; //저장일자
	private int heart; //좋아요
	private int master; //방장권한'
	private int attend_max; //참여인원수
	private int attend_min;	//현재 참여인원수
	private int close; //마감여부
	
	public BoardItem() {
	}
	public int getSeqNo() {
		return seqNo;
	}
	public void setSeqNo(int seqNo) {
		this.seqNo = seqNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getHeart() {
		return heart;
	}
	public void setHeart(int heart) {
		this.heart = heart;
	}
	public int getMaster() {
		return master;
	}
	public void setMaster(int master) {
		this.master = master;
	}
	public int getAttend_max() {
		return attend_max;
	}
	public void setAttend_max(int attend_max) {
		this.attend_max = attend_max;
	}
	public int getAttend_min() {
		return attend_min;
	}
	public void setAttend_min(int attend_min) {
		this.attend_min = attend_min;
	}
	public int getClose() {
		return close;
	}
	public void setClose(int close) {
		this.close = close;
	}
}
