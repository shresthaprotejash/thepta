package com.sakha.thepta.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sakha.thepta.dto.SubjectAndMarksDto;
import com.sakha.thepta.dto.TestDetailsDto;

public interface Test_DetailService {

	public List<TestDetailsDto> getTestDetailList(int studentId, int testType);

	public int submitTest(HttpServletRequest request, HttpServletResponse response);
		
	

}
