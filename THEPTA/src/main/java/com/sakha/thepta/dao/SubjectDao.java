package com.sakha.thepta.dao;

import com.sakha.thepta.model.SubjectModel;

public interface SubjectDao {

	public SubjectModel getSubjectBySubjectIdandClassId(int subjectId,int classId);
	
	
}
