package com.sakha.thepta.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sakha.thepta.dao.SubjectDao;
import com.sakha.thepta.dao.Test_detailDao;

import com.sakha.thepta.dto.TestDetailsDto;
import com.sakha.thepta.model.TestDetailModel;
import com.sakha.thepta.model.Test_marksModel;
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
		List<Integer> uniqueSubjectId = new ArrayList<Integer>();
		
		for (TestDetailModel testDetailModel : TestInfoDetailList) {
			if(!uniqueSubjectId.contains(testDetailModel.getSubjectId())){
				newTestDetailsDto = new TestDetailsDto();
				newTestDetailsDto.setStudentId(testDetailModel.getStudentId());
				newTestDetailsDto.setSubjectName(subjectDao.getSubjectBySubjectId(testDetailModel.getSubjectId()));
				newTestDetailsDto.setSubjectId(testDetailModel.getSubjectId());
				newTestDetailsDto.setTestType(testDetailModel.getTestType());
				newTestDetailsDto.setExamDateAndTime(testDetailModel.getExamDateAndTime());
				newTestDetailsDto.setRoomNo(testDetailModel.getRoomNo());
				testDetailList.add(newTestDetailsDto);
				uniqueSubjectId.add(testDetailModel.getSubjectId());
			}
		}
		return testDetailList;

	}

	@Override
	@Transactional
	public int submitTest(HttpServletRequest request, HttpServletResponse response) {
		int subjectId = Integer.parseInt(request.getParameter("subjectId"));
		int testType = Integer.parseInt(request.getParameter("testType"));
		String studentIdAndDate = request.getParameter("studentIdAndDate");
		String studentIdAndTime = request.getParameter("studentIdAndTime");
		String studentIdAndRoomNO = request.getParameter("studentIdAndRoomNO");
/*		ArrayList<String> studentListWithDate = new ArrayList<String>(Arrays.asList(studentIdAndDate.split(",")));
		ArrayList<String> studentListWithTime = new ArrayList<String>(Arrays.asList(studentIdAndTime.split(",")));
		ArrayList<String> studentListWithRoom = new ArrayList<String>(Arrays.asList(studentIdAndRoomNO.split(",")));
		int studentId = 0, examDate = 0, examTime=0, examRoom=0;
		TestDetailModel newTestDetailModel = null;
		int result = 0;
		
		for(String studentObj : studentListWithDate){
			
			if( studentObj.split("_")[0] != null && !"".equals(studentObj.split("_")[0]) &&
					 studentObj.split("_")[1] != null && !"".equals(studentObj.split("_")[1])){

				studentId = Integer.parseInt(studentObj.split("_")[0]);
				obtainedMarks = Integer.parseInt(studentObj.split("_")[1]);
				if(studentId > 0){
					
					newTest_marksModel = new Test_marksModel();
					newTest_marksModel.setTestType(testType);
					newTest_marksModel.setSubjectId(subjectId);
					newTest_marksModel.setStudentId(studentId);
					newTest_marksModel.setObtanedMarks(obtainedMarks);
					
					result = test_marksDao.saveTestMarks(newTest_marksModel);
				}
			}
		}*/
		
		return 0;
	}

}
