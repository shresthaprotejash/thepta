package com.sakha.thepta.dto;

public class SubjectAndMarksDto {
	private int studentId;
	private int subjectId;
	private String subjectName;
	private int testType;
	private int obtanedMarks;
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public int getSubjectId() {
		return subjectId;
	}
	public void setSubjectId(int subjectId) {
		this.subjectId = subjectId;
	}
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	public int getTestType() {
		return testType;
	}
	public void setTestType(int testType) {
		this.testType = testType;
	}
	public int getObtanedMarks() {
		return obtanedMarks;
	}
	public void setObtanedMarks(int obtanedMarks) {
		this.obtanedMarks = obtanedMarks;
	}

}
