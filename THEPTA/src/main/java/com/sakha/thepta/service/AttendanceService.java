package com.sakha.thepta.service;

import java.util.List;

import com.sakha.thepta.dto.AttendanceDto;
import com.sakha.thepta.model.AttendanceModel;

public interface AttendanceService {

	public AttendanceModel putAttendanceByStudentIdSubjectIdandClassId(int studentId,int subjectId,int classId);
	
	public AttendanceModel viewAttendance(int studentId);
	
	public List<AttendanceDto> getStudentbyClassIdAndSectionIdAndSubjectId(int classId, int sectionId, int subjectId);

	public List<AttendanceDto> getAttendanceDetailsByStudentId(int studentId);
}