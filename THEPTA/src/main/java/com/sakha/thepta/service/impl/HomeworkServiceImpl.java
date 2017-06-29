package com.sakha.thepta.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sakha.thepta.dao.HomeworkDao;
import com.sakha.thepta.model.HomeworkModel;
import com.sakha.thepta.service.HomeworkService;

@Service
public class HomeworkServiceImpl implements HomeworkService{
	
	@Autowired
	private HomeworkDao homeworkDao;

	@Override
	@Transactional
	public HomeworkModel giveHomeworkBysubjectId(int SubjectId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public HomeworkModel viewHomeworkByteacherIdandsubjectId(int teacherId, int SubjectId) {
		// TODO Auto-generated method stub
		return null;
	}

}
