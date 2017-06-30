package com.sakha.thepta.dao;

import com.sakha.thepta.model.Test_marksModel;

public interface Test_marksDao {

	public Test_marksModel getMarksBytestIdandsubjectIdandstudentId(String testId,String subjectId,String studentId);
}