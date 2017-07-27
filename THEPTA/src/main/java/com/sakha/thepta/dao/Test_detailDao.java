package com.sakha.thepta.dao;

import java.util.List;

import com.sakha.thepta.model.TestDetailModel;


public interface Test_detailDao {
	
	public int saveTestDetail(TestDetailModel newTestDetailModel);
	public List<TestDetailModel> getTestDetailByStudentId(int studentId, int testType);

}
