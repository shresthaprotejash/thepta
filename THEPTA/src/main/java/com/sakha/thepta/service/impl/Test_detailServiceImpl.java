package com.sakha.thepta.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sakha.thepta.dao.SubjectDao;
import com.sakha.thepta.dao.Test_detailDao;

import com.sakha.thepta.dto.TestDetailsDto;
import com.sakha.thepta.model.TestDetailModel;

import com.sakha.thepta.service.Test_DetailService;

@Service
public class Test_detailServiceImpl implements Test_DetailService {

	@Autowired
	private Test_detailDao test_detailDao;

	@Autowired
	private SubjectDao subjectDao;

	@Override
	@Transactional
	public List<TestDetailsDto> getTestDetailList(int studentId, int testType) {
		TestDetailsDto newTestDetailsDto = null;
		List<TestDetailModel> TestInfoDetailList = test_detailDao.getTestDetailByStudentId(studentId, testType);
		List<TestDetailsDto> testDetailList = new ArrayList<TestDetailsDto>();
		for (TestDetailModel testDetailModel : TestInfoDetailList) {
			newTestDetailsDto = new TestDetailsDto();
			newTestDetailsDto.setStudentId(testDetailModel.getStudentId());
			newTestDetailsDto.setSubjectName(subjectDao.getSubjectBySubjectId(testDetailModel.getSubjectId()));
			newTestDetailsDto.setSubjectId(testDetailModel.getSubjectId());
			newTestDetailsDto.setTestType(testDetailModel.getTestType());
			newTestDetailsDto.setExamtime(testDetailModel.getExamtime());
			newTestDetailsDto.setExamdate(testDetailModel.getExamdate());
			newTestDetailsDto.setRoomNo(testDetailModel.getRoomNo());
			testDetailList.add(newTestDetailsDto);
		}
		return testDetailList;

	}

}
