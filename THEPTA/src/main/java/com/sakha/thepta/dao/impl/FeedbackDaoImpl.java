package com.sakha.thepta.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.sakha.thepta.dao.FeedbackDao;
import com.sakha.thepta.model.AttendanceModel;
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

	@Override
	public List<FeedbackModel> getFeedbackDetailsByStudentId(int studentId) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(FeedbackModel.class);
		criteria.add(Restrictions.eq("studentId", studentId));
		return criteria.list();
		
	}

	@Override
	public String getSubjectByStudentId(int studentId) {
		// TODO Auto-generated method stub
		return null;
	}
}
