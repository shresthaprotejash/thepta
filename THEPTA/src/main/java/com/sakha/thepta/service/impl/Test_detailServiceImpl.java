package com.sakha.thepta.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sakha.thepta.dao.AttendanceDao;
import com.sakha.thepta.dao.SubjectDao;
import com.sakha.thepta.dao.Test_detailDao;
import com.sakha.thepta.dto.TestDetailsDto;
import com.sakha.thepta.model.AttendanceModel;
import com.sakha.thepta.model.TestDetailModel;
import com.sakha.thepta.service.Test_DetailService;

@Service
public class Test_detailServiceImpl implements Test_DetailService {

	@Autowired
	private Test_detailDao test_detailDao;

	@Autowired
	private SubjectDao subjectDao;
	
	@Autowired
	private AttendanceDao attendanceDao;

	@Override
	@Transactional
	public List<TestDetailsDto> getTestDetailList(int studentId, int testType) {
		TestDetailsDto newTestDetailsDto = null;
		List<TestDetailModel> TestInfoDetailList = test_detailDao.getTestDetailByStudentId(studentId, testType);
		List<TestDetailsDto> testDetailList = new ArrayList<TestDetailsDto>();
		List<Integer> uniqueSubjectId = new ArrayList<Integer>();

		for (TestDetailModel testDetailModel : TestInfoDetailList) {
			
			if(!uniqueSubjectId.contains(testDetailModel.getStudentId())){
				newTestDetailsDto = new TestDetailsDto();
				newTestDetailsDto.setStudentId(testDetailModel.getStudentId());
				newTestDetailsDto.setSubjectName(subjectDao.getSubjectBySubjectId(testDetailModel.getSubjectId()));
				newTestDetailsDto.setSubjectId(testDetailModel.getSubjectId());
				newTestDetailsDto.setTestType(testDetailModel.getTestType());
				newTestDetailsDto.setExamDateAndTime(testDetailModel.getExamDateAndTime());
				newTestDetailsDto.setRoomNo(testDetailModel.getRoomNo());
				testDetailList.add(newTestDetailsDto);
				uniqueSubjectId.add(testDetailModel.getSubjectId());	
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
		
		int teacherId = Integer.parseInt(request.getParameter("teacherId"));
		int classId = Integer.parseInt(request.getParameter("classId"));
		int sectionId = Integer.parseInt(request.getParameter("sectionId"));
		int testType = Integer.parseInt(request.getParameter("testType"));
		String testsDetail = request.getParameter("testsDetail");

		TestDetailModel newTestDetailModel = null;
		int subjectId = 0, result = 0;
		String testDate = "", testTime = "", roomNo = "";
		ArrayList<String> subjectListWithDateTimeAndRoomNo = new ArrayList<String>(Arrays.asList(testsDetail.split(",")));
		List<AttendanceModel> studentList = null;
		
		for(String subjectObj : subjectListWithDateTimeAndRoomNo){	//1001_1_02-07-2017_12:30am
			
			if( subjectObj.split("_")[0] != null && !"".equals(subjectObj.split("_")[0]) &&
					 subjectObj.split("_")[1] != null && !"".equals(subjectObj.split("_")[1])&&
					 subjectObj.split("_")[2] != null && !"".equals(subjectObj.split("_")[2]) &&
					 subjectObj.split("_")[3] != null && !"".equals(subjectObj.split("_")[3])){

				subjectId = Integer.parseInt(subjectObj.split("_")[0]);
				roomNo = subjectObj.split("_")[1];
				testDate = subjectObj.split("_")[2];
				testTime = subjectObj.split("_")[3];
				if(subjectId > 0){
					
					studentList = attendanceDao.getStudentIdByClassIdAndSectionId(classId,sectionId,subjectId);
					for(AttendanceModel attendanceModel : studentList){

						newTestDetailModel = new TestDetailModel();
						newTestDetailModel.setTestType(testType);
						newTestDetailModel.setSubjectId(subjectId);
						newTestDetailModel.setRoomNo(roomNo);
						newTestDetailModel.setExamDateAndTime(testDate + " " + testTime);
						newTestDetailModel.setStudentId(attendanceModel.getStudentId());
						result = test_detailDao.saveTestDetail(newTestDetailModel);
					}

				}
			}
		}
		return result;
	}

}
