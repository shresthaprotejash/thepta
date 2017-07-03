package com.sakha.thepta.dao.impl;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.sakha.thepta.dao.SubjectDao;
import com.sakha.thepta.model.SubjectModel;


@Repository
public class SubjectDaoImpl implements SubjectDao{
		@Resource
	    private SessionFactory sessionFactory;

		@Override
		public String getSubjectBySubjectId(int subjectId) {
			Criteria criteria = sessionFactory.getCurrentSession().createCriteria(SubjectModel.class);
			criteria.add(Restrictions.eq("subjectId", subjectId));
			if(criteria.list().size() > 0){
				SubjectModel subjectNames=new SubjectModel();
				subjectNames=(SubjectModel) criteria.uniqueResult();
				return subjectNames.getSubjectName();
			}else{
				return null;
			}
		}

}
