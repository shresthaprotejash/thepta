package com.sakha.thepta.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sakha.thepta.dao.AttendanceDao;
import com.sakha.thepta.dao.ClassesDao;
import com.sakha.thepta.dao.SectionDao;
import com.sakha.thepta.dao.SubjectDao;
import com.sakha.thepta.dao.UserDao;
import com.sakha.thepta.dto.AttendanceDto;
import com.sakha.thepta.model.AttendanceModel;
import com.sakha.thepta.service.AttendanceService;
import com.sakha.thepta.util.Util;

@Service
public class AttendanceServiceImpl implements AttendanceService{
	
	@Autowired
	private AttendanceDao attendanceDao;
	
	@Autowired
	private Util util;
	
	@Autowired
	private  UserDao userDao;
	
	@Autowired
	private SubjectDao subjectDao;
	
	@Autowired
	private ClassesDao classesDao;
	
	@Autowired
	private SectionDao sectionDao;

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

	@Override
	@Transactional
	public List<AttendanceDto> getStudentbyClassIdAndSectionIdAndSubjectId(int classId, int sectionId, int subjectId) {
		AttendanceDto newAttendanceDto = null;
		List<AttendanceModel> studentList= attendanceDao.getStudentIdByClassIdAndSectionId(classId,sectionId,subjectId);
		List<AttendanceDto> studentAttendanceList =new ArrayList<AttendanceDto>();
		for(AttendanceModel attendanceModel : studentList){
			newAttendanceDto = new AttendanceDto();
			newAttendanceDto.setStudentId(attendanceModel.getStudentId());
			newAttendanceDto.setStudentName(util.getUserFullName(userDao.getStudentNameByStudentId(attendanceModel.getStudentId())));
			newAttendanceDto.setClassId(classId);
			newAttendanceDto.setSectionId(sectionId);
			newAttendanceDto.setSubjectId(subjectId);
			newAttendanceDto.setPresentDays(attendanceModel.getPresentdays());
			newAttendanceDto.setAbsentDays(attendanceModel.getAbsentdays());
			newAttendanceDto.setTotalDays(attendanceModel.getTotaldays());
			newAttendanceDto.setPercentage(attendanceModel.getAttendancePercentage());
			studentAttendanceList.add(newAttendanceDto);
	}
		return studentAttendanceList;

	}

	@Override
	@Transactional
	public List<AttendanceDto> getAttendanceDetailsByStudentId(int studentId) {
		AttendanceDto newAttendanceDto = null;
		List<AttendanceModel> studentAttendanceDetailList= attendanceDao.getStudentAttendanceDetailByStudentId(studentId);
		List<AttendanceDto> studentAttendanceList =new ArrayList<AttendanceDto>();
		for(AttendanceModel attendanceModel : studentAttendanceDetailList){
			newAttendanceDto = new AttendanceDto();
			newAttendanceDto.setStudentId(attendanceModel.getStudentId());
			newAttendanceDto.setSubjectName(subjectDao.getSubjectBySubjectId(attendanceModel.getSubjectId()));
			newAttendanceDto.setClassId(attendanceModel.getClassId());
			newAttendanceDto.setClassName(classesDao.getClassesByClassId(attendanceModel.getClassId()));
			newAttendanceDto.setSectionId(attendanceModel.getSectionId());
			newAttendanceDto.setSectionName(sectionDao.getSectionBysectionId(attendanceModel.getSectionId()));
			newAttendanceDto.setSubjectName(subjectDao.getSubjectBySubjectId(attendanceModel.getSubjectId()));
			newAttendanceDto.setSubjectId(attendanceModel.getSubjectId());
			newAttendanceDto.setPresentDays(attendanceModel.getPresentdays());
			newAttendanceDto.setAbsentDays(attendanceModel.getAbsentdays());
			newAttendanceDto.setTotalDays(attendanceModel.getTotaldays());
			newAttendanceDto.setPercentage(attendanceModel.getAttendancePercentage());
			studentAttendanceList.add(newAttendanceDto);
	}
		return studentAttendanceList;

	}

}
