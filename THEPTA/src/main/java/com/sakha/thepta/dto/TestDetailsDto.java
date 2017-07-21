package com.sakha.thepta.dto;


import java.sql.Timestamp;

public class TestDetailsDto {
	private int testType;
	private int subjectId;
	private String subjectName;
	
	private int studentId;
	private Timestamp examDateAndTime;
	private String roomNo;
	
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
	
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}


	public Timestamp getExamDateAndTime() {
		return examDateAndTime;
	}
	public void setExamDateAndTime(Timestamp examDateAndTime) {
		this.examDateAndTime = examDateAndTime;
	}
	public String getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}

}
