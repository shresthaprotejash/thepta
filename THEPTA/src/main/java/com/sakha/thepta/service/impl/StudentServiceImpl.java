package com.sakha.thepta.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sakha.thepta.dao.StudentDao;
import com.sakha.thepta.model.StudentModel;
import com.sakha.thepta.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService{
	
	@Autowired
	private StudentDao studentDao;

	@Override
	@Transactional
	public StudentModel getStudentByStudentId(int studentId) {
		// TODO Auto-generated method stub
		return null;
	}

}
