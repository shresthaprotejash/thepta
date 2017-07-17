package com.sakha.thepta.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sakha.thepta.dao.SubjectDao;
import com.sakha.thepta.dao.TestTypeDao;
import com.sakha.thepta.dao.Test_marksDao;
import com.sakha.thepta.dto.AttendanceDto;
import com.sakha.thepta.dto.SubjectAndMarksDto;
import com.sakha.thepta.model.AttendanceModel;
import com.sakha.thepta.model.Test_marksModel;
import com.sakha.thepta.service.Test_marksService;
import com.sakha.thepta.util.Util;

@Service
public class Test_marksServiceImpl implements Test_marksService {

	@Autowired
	private Test_marksDao test_marksDao;
	@Autowired
	private SubjectDao subjectDao;

	@Override
	@Transactional
	public Test_marksModel getMarksBytestIdandsubjectIdandstudentId(String testId, String subjectId, String studentId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public List<SubjectAndMarksDto> getobtainedMarksList(int studentId, int testType) {
		SubjectAndMarksDto newSubjectAndMarksDto = null;
		List<Test_marksModel> obtainedMarksDetailList = test_marksDao.getMarksDetailByStudentId(studentId, testType);
		List<SubjectAndMarksDto> obtainedMarksList = new ArrayList<SubjectAndMarksDto>();
		for (Test_marksModel testMarksModel : obtainedMarksDetailList) {
			newSubjectAndMarksDto = new SubjectAndMarksDto();
			newSubjectAndMarksDto.setStudentId(testMarksModel.getStudentId());
			newSubjectAndMarksDto.setSubjectName(subjectDao.getSubjectBySubjectId(testMarksModel.getSubjectId()));
			newSubjectAndMarksDto.setSubjectId(testMarksModel.getSubjectId());
			newSubjectAndMarksDto.setTestType(testMarksModel.getTestType());
			newSubjectAndMarksDto.setObtanedMarks(testMarksModel.getObtanedMarks());
			obtainedMarksList.add(newSubjectAndMarksDto);
		}
		return obtainedMarksList;

	}

}
