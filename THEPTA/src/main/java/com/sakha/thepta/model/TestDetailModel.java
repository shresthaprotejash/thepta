package com.sakha.thepta.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name="testdetails")
public class TestDetailModel {

	@Id
	@GeneratedValue
	@Column(name="viewTestId")
	private int viewTestId;
	@Column(name="testType")
	private int testType;
	@Column(name="subjectId")
	private int subjectId;
	@Column(name="studentId")
	private int studentId;
	@Column(name="examtime")
	private String examtime;
	@Column(name="examdate")
	private Date examdate;
	@Column(name="roomNo")
	private String roomNo;
	public int getViewTestId() {
		return viewTestId;
	}
	public void setViewTestId(int viewTestId) {
		this.viewTestId = viewTestId;
	}
	public int getTestType() {
		return testType;
	}
	public void setTestType(int testType) {
		this.testType = testType;
	}
	public int getSubjectId() {
		return subjectId;
	}
	public void setSubjectId(int subjectId) {
		this.subjectId = subjectId;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public String getExamtime() {
		return examtime;
	}
	public void setExamtime(String examtime) {
		this.examtime = examtime;
	}
	public Date getExamdate() {
		return examdate;
	}
	public void setExamdate(Date examdate) {
		this.examdate = examdate;
	}
	public String getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}
}
