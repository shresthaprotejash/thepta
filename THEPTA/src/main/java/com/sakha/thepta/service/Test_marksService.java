package com.sakha.thepta.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sakha.thepta.dto.SubjectAndMarksDto;


public interface Test_marksService {

	public List<SubjectAndMarksDto> getobtainedMarksList(int studentId, int testType);

	public int submitMarks(HttpServletRequest request, HttpServletResponse response);

}
