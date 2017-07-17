package com.sakha.thepta.service;

import java.util.List;

import com.sakha.thepta.dto.SubjectAndMarksDto;
import com.sakha.thepta.model.Test_marksModel;

public interface Test_marksService {

	public Test_marksModel getMarksBytestIdandsubjectIdandstudentId(String testId,String subjectId,String studentId);

	public List<SubjectAndMarksDto> getobtainedMarksList(int studentId,int testType);

	
    
}
