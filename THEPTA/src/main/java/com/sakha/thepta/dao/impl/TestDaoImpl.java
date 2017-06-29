package com.sakha.thepta.dao.impl;

import org.springframework.stereotype.Repository;

import com.sakha.thepta.dao.TestDao;
import com.sakha.thepta.model.TestModel;


@Repository
public class TestDaoImpl implements TestDao {

	@Override
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
