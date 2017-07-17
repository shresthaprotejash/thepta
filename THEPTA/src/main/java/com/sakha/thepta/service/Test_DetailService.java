package com.sakha.thepta.service;

import java.util.List;

import com.sakha.thepta.dto.SubjectAndMarksDto;
import com.sakha.thepta.dto.TestDetailsDto;

public interface Test_DetailService {

	public List<TestDetailsDto> getTestDetailList(int studentId, int testType);
		
	

}
