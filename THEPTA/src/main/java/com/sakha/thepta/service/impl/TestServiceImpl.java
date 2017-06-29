package com.sakha.thepta.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sakha.thepta.dao.TestDao;
import com.sakha.thepta.model.TestModel;
import com.sakha.thepta.service.TestService;

@Service
public class TestServiceImpl implements TestService{
	
	@Autowired
	private TestDao testDao;

	@Override
	@Transactional
	public TestModel giveTestBysubjectId(int SubjectId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TestModel viewTestByteacherIdandsubjectId(int teacherId, int SubjectId) {
		// TODO Auto-generated method stub
		return null;
	}

}
