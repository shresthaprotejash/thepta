package com.sakha.thepta.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name="attendance")
public class AttendanceModel {
	@Id
	@GeneratedValue
	@Column(name="attendanceId")
	private int attendanceId;
	@Column(name="studentId")
	private int studentId;
	@Column(name="classId")
	private int classId;
	@Column (name="sectionId")
	private int sectionId;
	@Column(name="subjectId")
	private int subjectId;
	@Column(name="presentdays")
	private int presentdays;
	@Column(name="absentdays")
	private int absentdays;
	@Column(name="totaldays")
	private int totaldays;
	@Column(name="attendancePercentage")
	private float attendancePercentage;
	
	public int getSectionId() {
		return sectionId;
	}
	public void setSectionId(int sectionId) {
		this.sectionId = sectionId;
	}
	public int getPresentdays() {
		return presentdays;
	}
	public void setPresentdays(int presentdays) {
		this.presentdays = presentdays;
	}
	public int getAbsentdays() {
		return absentdays;
	}
	public void setAbsentdays(int absentdays) {
		this.absentdays = absentdays;
	}
	public int getTotaldays() {
		return totaldays;
	}
	public void setTotaldays(int totaldays) {
		this.totaldays = totaldays;
	}
	public int getAttendanceId() {
		return attendanceId;
	}
	public void setAttendanceId(int attendanceId) {
		this.attendanceId = attendanceId;
	}
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
	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}
	public float getAttendancePercentage() {
		return attendancePercentage;
	}
	public void setAttendancePercentage(float attendancePercentage) {
		this.attendancePercentage = attendancePercentage;
	}
	
	
	
}
