package com.sakha.thepta.dao.impl;



import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.sakha.thepta.dao.AttendanceDao;
import com.sakha.thepta.model.AttendanceModel;
import com.sakha.thepta.model.StudentModel;


@Repository
public class AttendanceDaoImpl implements AttendanceDao {

	@Override
	public int putAttendanceByStudentIdSubjectIdandClassId(int studentId, int subjectId, int classId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<AttendanceModel> viewAttendance(int studentId) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Resource
    private SessionFactory sessionFactory;

	@Override
	public List<AttendanceModel> getStudentIdByClassIdAndSectionId(int classId, int sectionId,int subjectId) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(AttendanceModel.class);
		criteria.add(Restrictions.eq("classId", classId)).add(Restrictions.eq("sectionId", sectionId)).add(Restrictions.eq("subjectId", subjectId));
		return criteria.list();
	}

	@Override
	public List<AttendanceModel> getStudentAttendanceDetailByStudentId(int studentId) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(AttendanceModel.class);
		criteria.add(Restrictions.eq("studentId", studentId));
		return criteria.list();
	}
}
