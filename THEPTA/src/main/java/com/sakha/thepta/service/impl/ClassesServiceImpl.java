package com.sakha.thepta.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sakha.thepta.dao.AttendanceDao;
import com.sakha.thepta.dao.ClassesDao;
import com.sakha.thepta.model.ClassesModel;
import com.sakha.thepta.service.ClassesService;

@Service
public class ClassesServiceImpl implements ClassesService {
	
	@Autowired
	private ClassesDao classesDao;
	
	@Override
	@Transactional
	public ClassesModel getClassesByClassId(int classesId) {
		// TODO Auto-generated method stub
		return null;
	}

}
