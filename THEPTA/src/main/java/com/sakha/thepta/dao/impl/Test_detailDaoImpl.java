package com.sakha.thepta.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.sakha.thepta.dao.Test_detailDao;
import com.sakha.thepta.model.TestDetailModel;

@Repository
public class Test_detailDaoImpl implements Test_detailDao {

	@Resource
	private SessionFactory sessionFactory;

	@Override
	public List<TestDetailModel> getTestDetailByStudentId(int studentId, int testType) {

		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(TestDetailModel.class);
		criteria.add(Restrictions.eq("studentId", studentId));
		criteria.add(Restrictions.eq("testType", testType));
		return criteria.list();

	}

}
