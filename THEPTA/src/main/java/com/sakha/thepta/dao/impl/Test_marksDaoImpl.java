package com.sakha.thepta.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.sakha.thepta.dao.Test_marksDao;
import com.sakha.thepta.model.Test_marksModel;

@Repository
public class Test_marksDaoImpl implements Test_marksDao {

	@Resource
	private SessionFactory sessionFactory;

	@Override
	public List<Test_marksModel> getMarksDetailByStudentId(int studentId, int testType) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Test_marksModel.class);
		criteria.add(Restrictions.eq("studentId", studentId));
		criteria.add(Restrictions.eq("testType", testType));
		return criteria.list();
	}

	@Override
	public int saveTestMarks(Test_marksModel newTest_marksModel) {
		Session session  = sessionFactory.getCurrentSession();
		int result = (Integer)session.save(newTest_marksModel);
		return result;
	}

}
