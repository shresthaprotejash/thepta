package com.sakha.thepta.model;

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
	
	@Column(name="examDateAndTime")
	private String examDateAndTime;
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
	public String getExamDateAndTime() {
		return examDateAndTime;
	}
	public void setExamDateAndTime(String examDateAndTime) {
		this.examDateAndTime = examDateAndTime;
	}
	
	public String getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}
}
