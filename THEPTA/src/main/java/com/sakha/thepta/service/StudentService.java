package com.sakha.thepta.service;

import java.util.List;

import com.sakha.thepta.dto.AttendanceDto;

public interface StudentService {

	public List<AttendanceDto> getStudentbyClassIdAndSectionIdAndSubjectId(int classId, int sectionId, int subjectId);
	
	
}
