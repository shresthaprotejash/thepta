package com.sakha.thepta.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.sakha.thepta.dao.StudentDao;
import com.sakha.thepta.model.StudentModel;


@Repository
public class StudentDaoImpl implements StudentDao {
	
	@Resource
    private SessionFactory sessionFactory;

	@Override
	public List<StudentModel> getStudentIdByClassIdAndSectionId(int classId, int sectionId) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(StudentModel.class);
		criteria.add(Restrictions.eq("classId", classId)).add(Restrictions.eq("sectionId", sectionId));
		return criteria.list();
	}

}
