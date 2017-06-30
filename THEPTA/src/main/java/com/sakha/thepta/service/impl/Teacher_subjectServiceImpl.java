package com.sakha.thepta.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sakha.thepta.dao.AttendanceDao;
import com.sakha.thepta.dao.Teacher_subjectDao;
import com.sakha.thepta.model.Teacher_subjectModel;
import com.sakha.thepta.service.Teacher_subjectService;

@Service
public class Teacher_subjectServiceImpl implements Teacher_subjectService{
	
	@Autowired
	private Teacher_subjectDao teacher_subjectDao;

	@Override
	@Transactional
	public Teacher_subjectModel getSubjectByTeacherIdandClassId(String teacherId, String classesId) {
		// TODO Auto-generated method stub
		return null;
	}

}
