package com.sakha.thepta.dto;


public class TeacherSubjectDto {

	private int teacher_subjectId;
	private int teacherId;
	private String teacherName;
	private String className;
	private String sectionName;
	private String subjectName;
	public int getTeacher_subjectId() {
		return teacher_subjectId;
	}
	public void setTeacher_subjectId(int teacher_subjectId) {
		this.teacher_subjectId = teacher_subjectId;
	}
	public int getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getSectionName() {
		return sectionName;
	}
	public void setSectionName(String sectionName) {
		this.sectionName = sectionName;
	}
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	
	
}
