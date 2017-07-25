package com.sakha.thepta.dao;

import java.util.List;

import com.sakha.thepta.model.Test_marksModel;

public interface Test_marksDao {

	public int saveTestMarks(Test_marksModel newTest_marksModel);
	public List<Test_marksModel> getMarksDetailByStudentId(int studentId, int testType);

}