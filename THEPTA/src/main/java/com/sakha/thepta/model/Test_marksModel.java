package com.sakha.thepta.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name="test_marks")
public class Test_marksModel {

	@Id
	@GeneratedValue
	@Column(name="test_marksId")
	private int test_marksId;
	@Column(name="testId")
	private int testId;
	@Column(name="studentId")
	private int studentId;
	@Column(name="subjectId")
	private int subjectId;
	@Column(name="obtainedMarks")
	private int obtainedMarks;
	@Column(name="result")
	private int result;
	public int getTest_marksId() {
		return test_marksId;
	}
	public void setTest_marksId(int test_marksId) {
		this.test_marksId = test_marksId;
	}
	public int getTestId() {
		return testId;
	}
	public void setTestId(int testId) {
		this.testId = testId;
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
	public int getObtainedMarks() {
		return obtainedMarks;
	}
	public void setObtainedMarks(int obtainedMarks) {
		this.obtainedMarks = obtainedMarks;
	}
	public int getResult() {
		return result;
	}
	public void setResult(int result) {
		this.result = result;
	}
	
	
	
}
