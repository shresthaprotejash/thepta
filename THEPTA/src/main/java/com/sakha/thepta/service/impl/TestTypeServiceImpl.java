package com.sakha.thepta.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sakha.thepta.dao.TestTypeDao;
import com.sakha.thepta.model.TestTypeModel;
import com.sakha.thepta.service.TestTypeService;

@Service
public class TestTypeServiceImpl implements TestTypeService{

	@Autowired
	TestTypeDao testTypeDao;
	
	@Override
	@Transactional
	public List<TestTypeModel> getListOfTestTypes() {
		return testTypeDao.getTestTypeList();
	}

}
