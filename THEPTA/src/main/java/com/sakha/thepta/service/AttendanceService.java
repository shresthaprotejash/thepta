package com.sakha.thepta.service;

import com.sakha.thepta.model.AttendanceModel;

public interface AttendanceService {

	public AttendanceModel putAttendanceByStudentIdSubjectIdandClassId(int studentId,int subjectId,int classId);
	
	public AttendanceModel viewAttendance(int studentId);
}