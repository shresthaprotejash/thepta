package com.sakha.thepta.dao;

import java.util.List;

import com.sakha.thepta.model.AttendanceModel;

public interface AttendanceDao {

	public int putAttendanceByStudentIdSubjectIdandClassId(int studentId,int subjectId,int classId);
	
	public List<AttendanceModel> viewAttendance(int studentId);
}
