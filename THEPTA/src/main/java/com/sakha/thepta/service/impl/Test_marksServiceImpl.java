package com.sakha.thepta.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sakha.thepta.dao.AttendanceDao;
import com.sakha.thepta.dao.Test_marksDao;
import com.sakha.thepta.model.Test_marksModel;
import com.sakha.thepta.service.Test_marksService;


@Service
public class Test_marksServiceImpl implements Test_marksService{
	
	@Autowired
	private Test_marksDao test_marksDao;

	@Override
	@Transactional
	public Test_marksModel getMarksBytestIdandsubjectIdandstudentId(String testId, String subjectId, String studentId) {
		// TODO Auto-generated method stub
		return null;
	}

}
