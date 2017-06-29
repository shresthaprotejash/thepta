package com.sakha.thepta.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sakha.thepta.dao.AttendanceDao;
import com.sakha.thepta.model.AttendanceModel;
import com.sakha.thepta.service.AttendanceService;

@Service
public class AttendanceServiceImpl implements AttendanceService{
	
	@Autowired
	private AttendanceDao attendanceDao;

	@Override
	@Transactional
	public AttendanceModel putAttendanceByStudentIdSubjectIdandClassId(int studentId, int subjectId, int classId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public AttendanceModel viewAttendance(int studentId) {
		// TODO Auto-generated method stub
		return null;
	}

}
