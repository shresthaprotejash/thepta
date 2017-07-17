package com.sakha.thepta.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sakha.thepta.dao.AttendanceDao;
import com.sakha.thepta.dao.ClassesDao;
import com.sakha.thepta.dao.SectionDao;
import com.sakha.thepta.dao.SubjectDao;
import com.sakha.thepta.dao.Test_marksDao;
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

	@Autowired
	private Test_marksDao testMarksDao;
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
			newAttendanceDto.setAttendaceId(attendanceModel.getAttendanceId());
			newAttendanceDto.setSubjectName(subjectDao.getSubjectBySubjectId(attendanceModel.getSubjectId()));
			newAttendanceDto.setClassId(attendanceModel.getClassId());
			newAttendanceDto.setClassName(classesDao.getClassesByClassId(attendanceModel.getClassId()));
			newAttendanceDto.setSectionId(attendanceModel.getSectionId());
			newAttendanceDto.setSectionName(sectionDao.getSectionBysectionId(attendanceModel.getSectionId()));
			newAttendanceDto.setSubjectId(attendanceModel.getSubjectId());
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
	public int putattendance(String present_student, String absent_student, int subjectId) {	
		List<AttendanceDto> newattendance =new ArrayList<AttendanceDto>();
		AttendanceDto newAttendanceDto = null;
		if(present_student.length()>0) {
			List<String> studentPresentIds = Arrays.asList(present_student.split("\\s*,\\s*"));
			List<Integer> studentPIdno= new ArrayList<Integer>();
			System.out.println(studentPresentIds);	
			for(String studentid : studentPresentIds){
				studentPIdno.add(Integer.parseInt(studentid));
			}
			for(int studentid : studentPIdno){
				System.out.println(studentid);			
				List<AttendanceDto> studentList=getAttendanceDetailsByStudentId(studentid);
				for(AttendanceDto attendanceModel : studentList){
					if (attendanceModel.getSubjectId()==subjectId) {
					newAttendanceDto = new AttendanceDto();
					newAttendanceDto.setAttendaceId(attendanceModel.getAttendaceId());
					newAttendanceDto.setPresentDays(attendanceModel.getPresentDays()+1);
					newAttendanceDto.setAbsentDays(attendanceModel.getAbsentDays());
					newAttendanceDto.setTotalDays(attendanceModel.getTotalDays()+1);				
					newAttendanceDto.setPercentage(((float)newAttendanceDto.getPresentDays()*100/(float)newAttendanceDto.getTotalDays()));
					newattendance.add(newAttendanceDto);
					}
				}
			}
		}
		if(absent_student.length()>0) {
			List<String> studentAbsentIds = Arrays.asList(absent_student.split("\\s*,\\s*"));
			System.out.println(studentAbsentIds);
			List<Integer> studentAIdno= new ArrayList<Integer>();
			for(String studentid : studentAbsentIds){
				studentAIdno.add(Integer.parseInt(studentid));
			}
			for(int studentid : studentAIdno){
				System.out.println(studentid);			
				List<AttendanceDto> studentList=getAttendanceDetailsByStudentId(studentid);
				for(AttendanceDto attendanceModel : studentList){
					if (attendanceModel.getSubjectId()==subjectId) {
					newAttendanceDto = new AttendanceDto();
					newAttendanceDto.setAttendaceId(attendanceModel.getAttendaceId());
					newAttendanceDto.setPresentDays(attendanceModel.getPresentDays());
					newAttendanceDto.setAbsentDays(attendanceModel.getAbsentDays()+1);
					newAttendanceDto.setTotalDays(attendanceModel.getTotalDays()+1);				
					newAttendanceDto.setPercentage(((float)newAttendanceDto.getPresentDays()*100/(float)newAttendanceDto.getTotalDays()));
					newattendance.add(newAttendanceDto);
					}
				}
			}
		}

		for(AttendanceDto students : newattendance){
			int result= attendanceDao.updateStudentAttendance(students);
			if (result==0){
				return 0;
			}
		}
		return 1;
	}

}
