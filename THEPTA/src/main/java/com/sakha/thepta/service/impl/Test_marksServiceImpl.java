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
import com.sakha.thepta.dao.Test_marksDao;
import com.sakha.thepta.dto.SubjectAndMarksDto;
import com.sakha.thepta.model.Test_marksModel;
import com.sakha.thepta.service.Test_marksService;

@Service
public class Test_marksServiceImpl implements Test_marksService {

	@Autowired
	private Test_marksDao test_marksDao;
	@Autowired
	private SubjectDao subjectDao;

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

	@Override
	@Transactional
	public int submitMarks(HttpServletRequest request, HttpServletResponse response) {
		
		int subjectId = Integer.parseInt(request.getParameter("subjectId"));
		int testType = Integer.parseInt(request.getParameter("testType"));
		String studentIdAndMarks = request.getParameter("studentIdAndMarks");
		ArrayList<String> studentListWithMarks = new ArrayList<String>(Arrays.asList(studentIdAndMarks.split(",")));
		int studentId = 0, obtainedMarks = 0;
		Test_marksModel newTest_marksModel = null;
		int result = 0;
		
		for(String studentObj : studentListWithMarks){
			
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
		}
		
		return result;
	}

}
