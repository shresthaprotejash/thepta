package com.sakha.thepta.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.sakha.thepta.dao.TestTypeDao;
import com.sakha.thepta.model.TestTypeModel;

@Repository
public class TestTypeDaoImpl implements TestTypeDao{

	@Resource
    private SessionFactory sessionFactory;
	
	@Override
	public List<TestTypeModel> getTestTypeList() {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(TestTypeModel.class);
		return criteria.list();
	}

}
