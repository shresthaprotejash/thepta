package com.sakha.thepta.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sakha.thepta.dao.FeedbackDao;
import com.sakha.thepta.model.FeedbackModel;
import com.sakha.thepta.service.FeedbackService;

@Service
public class FeedbackServiceImpl implements FeedbackService{
	
	@Autowired
	private FeedbackDao feedbackDao;

	@Override
	@Transactional
	public FeedbackModel giveFeedbackByStudentIdandSubjectId(int StudentId, int SubjectId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FeedbackModel getFeedbackByStudentIdandSubjectId(int StudentId, int SubjectId) {
		// TODO Auto-generated method stub
		return null;
	}

}
