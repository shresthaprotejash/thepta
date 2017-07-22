package com.sakha.thepta.dto;

import java.util.Date;

public class HomeworkDto {
	private int homeworkId;
	private int studentId;
	private String studentName;
	private int classId;
	private String ClassName;
	private int sectionId;
	private String sectionName;
	private int subjectId;
	private int teacherId;
	private String TeacherName;
	private String subjectName;
	private String homeworktext;
	private String homeworkFileContent;
	private Date date;
	
	
	public int getHomeworkId() {
		return homeworkId;
	}
	public int getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}
	public String getTeacherName() {
		return TeacherName;
	}
	public void setTeacherName(String teacherName) {
		TeacherName = teacherName;
	}
	public void setHomeworkId(int homeworkId) {
		this.homeworkId = homeworkId;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}
	public String getClassName() {
		return ClassName;
	}
	public void setClassName(String className) {
		ClassName = className;
	}
	public int getSectionId() {
		return sectionId;
	}
	public void setSectionId(int sectionId) {
		this.sectionId = sectionId;
	}
	public String getSectionName() {
		return sectionName;
	}
	public void setSectionName(String sectionName) {
		this.sectionName = sectionName;
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
	public String getHomeworktext() {
		return homeworktext;
	}
	public void setHomeworktext(String homeworktext) {
		this.homeworktext = homeworktext;
	}
	public String getHomeworkFileContent() {
		return homeworkFileContent;
	}
	public void setHomeworkFileContent(String homeworkFileContent) {
		this.homeworkFileContent = homeworkFileContent;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	
}


