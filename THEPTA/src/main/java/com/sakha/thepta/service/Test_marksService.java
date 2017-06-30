package com.sakha.thepta.service;

import com.sakha.thepta.model.Test_marksModel;

public interface Test_marksService {

	public Test_marksModel getMarksBytestIdandsubjectIdandstudentId(String testId,String subjectId,String studentId);
}
