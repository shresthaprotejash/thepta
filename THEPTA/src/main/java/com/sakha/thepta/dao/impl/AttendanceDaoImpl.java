package com.sakha.thepta.dao.impl;



import java.util.List;

import org.springframework.stereotype.Repository;

import com.sakha.thepta.dao.AttendanceDao;
import com.sakha.thepta.model.AttendanceModel;


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

}
