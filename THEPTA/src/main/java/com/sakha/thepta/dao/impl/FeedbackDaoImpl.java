package com.sakha.thepta.dao.impl;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.sakha.thepta.dao.FeedbackDao;
import com.sakha.thepta.model.FeedbackModel;


@Repository
public class FeedbackDaoImpl implements FeedbackDao {
	
	@Resource
    private SessionFactory sessionFactory;

	@Override
	public FeedbackModel giveFeedbackByStudentIdandSubjectId(int StudentId, int SubjectId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FeedbackModel getFeedbackByStudentIdandSubjectId(int StudentId, int SubjectId) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public int saveFeedback(FeedbackModel studentFeedback) {
		Session session  = sessionFactory.getCurrentSession();
		int result = (Integer)session.save(studentFeedback);
		return result;
	}
}
