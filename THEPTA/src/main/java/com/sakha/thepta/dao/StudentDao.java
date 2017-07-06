package com.sakha.thepta.dao;

import java.util.List;

import com.sakha.thepta.model.StudentModel;

public interface StudentDao {

	public List<StudentModel> getStudentIdByClassIdAndSectionId(int classId, int sectionId);
	
	
}
