package com.sakha.thepta.dao.impl;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.sakha.thepta.dao.HomeworkDao;
import com.sakha.thepta.model.HomeworkModel;


@Repository
public class HomeworkDaoImpl implements HomeworkDao {

	@Resource
    private SessionFactory sessionFactory;
	
	@Override
	public int giveHomeworkBysubjectId(HomeworkModel newHomeworkModel) {
		Session session  = sessionFactory.getCurrentSession();
		int result = (Integer)session.save(newHomeworkModel);
		return result;
	}

	@Override
	public HomeworkModel viewHomeworkByteacherIdandsubjectId(int teacherId, int SubjectId) {
		// TODO Auto-generated method stub
		return null;
	}

}
