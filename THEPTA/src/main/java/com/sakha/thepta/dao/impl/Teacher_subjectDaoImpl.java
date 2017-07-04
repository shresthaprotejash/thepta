package com.sakha.thepta.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.sakha.thepta.dao.Teacher_subjectDao;
import com.sakha.thepta.model.TeacherSubjectModel;

@Repository
public class Teacher_subjectDaoImpl implements Teacher_subjectDao{

    @Resource
    private SessionFactory sessionFactory;

	@Override
	public TeacherSubjectModel getSubjectByTeacherIdandClassId(String teacherId, String classesId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<TeacherSubjectModel> getTeacherSubjectListByTeacherId(int teacherId) {
		
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(TeacherSubjectModel.class);
		criteria.add(Restrictions.eq("teacherId", teacherId));
		return criteria.list();
	}

	@Override
	public List<TeacherSubjectModel> getTeacherSubjectListByTeacherIdAndClassId(int teacherId, int classId) {
		
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(TeacherSubjectModel.class);
		criteria.add(Restrictions.eq("teacherId", teacherId)).add(Restrictions.eq("classId", classId));
		return criteria.list();
	}

}
