package com.sakha.thepta.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name="Homework")
public class HomeworkModel {

	@Id
	@GeneratedValue
	@Column(name="homeworkId")
	private int homeworkId;
	@Column(name="subjectId")
	private int subjectId;
	@Column(name="teacherId")
	private int teacherId;
	@Column(name="homeworkText")
	private String homeworkText;
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
	
	
	
}