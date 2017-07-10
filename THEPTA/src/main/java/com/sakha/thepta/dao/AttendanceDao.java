package com.sakha.thepta.dao;

import java.util.List;

import com.sakha.thepta.dto.AttendanceDto;
import com.sakha.thepta.model.AttendanceModel;
import com.sakha.thepta.model.StudentModel;

public interface AttendanceDao {

	public int putAttendanceByStudentIdSubjectIdandClassId(int studentId,int subjectId,int classId);
	
	public List<AttendanceModel> viewAttendance(int studentId);

	public List<AttendanceModel> getStudentIdByClassIdAndSectionId(int classId, int sectionId, int subjectId);

	public List<AttendanceModel> getStudentAttendanceDetailByStudentId(int studentId);

	public int updateStudentAttendance(List<AttendanceDto> newattendance);
}
