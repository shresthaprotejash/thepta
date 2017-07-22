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
@Table(name="homework")
public class HomeworkModel {

	@Id
	@GeneratedValue
	@Column(name="homeworkId")
	private int homeworkId;
	@Column(name="classId")
	private int classId;
	@Column(name="sectionId")
	private int sectionId;
	@Column(name="subjectId")
	private int subjectId;		
	@Column(name="teacherId")
	private int teacherId;
	@Column(name="homeworkText")
	private String homeworkText;
	@Column(name="homeworkFileContent")
	private String homeworkFileContent;
	@Column (name="date")
	private Date date;
	
	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}
	public int getSectionId() {
		return sectionId;
	}
	public void setSectionId(int sectionId) {
		this.sectionId = sectionId;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getHomeworkId() {
		return homeworkId;
	}
	public void setHomeworkId(int homeworkId) {
		this.homeworkId = homeworkId;
	}
	public int getSubjectId() {
		return subjectId;
	}
	public void setSubjectId(int subjectId) {
		this.subjectId = subjectId;
	}
	public int getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}
	public String getHomeworkText() {
		return homeworkText;
	}
	public void setHomeworkText(String homeworkText) {
		this.homeworkText = homeworkText;
	}
	
	public String getHomeworkFileContent() {
		return homeworkFileContent;
	}
	public void setHomeworkFileContent(String homeworkFileContent) {
		this.homeworkFileContent = homeworkFileContent;
	}
	
}