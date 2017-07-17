package com.sakha.thepta.dao;

import java.util.List;

import com.sakha.thepta.model.Test_marksModel;

public interface Test_marksDao {

	public List<Test_marksModel> getMarksDetailByStudentId(int studentId, int testType);

}