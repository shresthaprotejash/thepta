package com.sakha.thepta.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name="teacher_subject")
public class Teacher_subjectModel {
	@Id
	@GeneratedValue
	@Column(name="teacher_subjectId")
	private int teacher_subjectId;
	@Column(name="teacherId")
	private int teacherId;
	@Column(name="classId")
	private int classId;
	@Column(name="sectionId")
	private int sectionId;
	@Column(name="subjectId")
	private int subjectId;
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
	public int getSubjectId() {
		return subjectId;
	}
	public void setSubjectId(int subjectId) {
		this.subjectId = subjectId;
	}
	
	
}
