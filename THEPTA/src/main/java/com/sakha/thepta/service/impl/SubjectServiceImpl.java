package com.sakha.thepta.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sakha.thepta.dao.SubjectDao;
import com.sakha.thepta.model.SubjectModel;
import com.sakha.thepta.service.SubjectService;

@Service
public class SubjectServiceImpl implements SubjectService{
	
	@Autowired
	private SubjectDao subjectDao;

	@Override
	@Transactional
	public SubjectModel getSubjectBySubjectIdandClassId(int subjectId, int classId) {
		// TODO Auto-generated method stub
		return null;
	}

}
