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
import com.sakha.thepta.dao.Teacher_subjectDao;
import com.sakha.thepta.dao.UserDao;
import com.sakha.thepta.dto.TeacherSubjectDto;
import com.sakha.thepta.model.TeacherSubjectModel;
import com.sakha.thepta.model.UserModel;
import com.sakha.thepta.service.Teacher_subjectService;

@Service
public class Teacher_subjectServiceImpl implements Teacher_subjectService{
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private ClassesDao classesDao;
	
	@Autowired
	private SectionDao sectionDao;
	
	@Autowired
	private SubjectDao subjectDao;
	
	
	
	@Autowired
	private Teacher_subjectDao teacher_subjectDao;

	@Override
	@Transactional
	public TeacherSubjectModel getSubjectByTeacherIdandClassId(String teacherId, String classesId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public List<TeacherSubjectDto> getTeacherSubjectListByTeacherId(int teacherId) {
		
		String teacherName = getUserFullName(userDao.getUserByUserId(teacherId));
		TeacherSubjectDto newTeacherSubjectDto = null;
		List<TeacherSubjectDto> teacherSujectDtoList = new ArrayList<TeacherSubjectDto>();
		List<TeacherSubjectModel> teacherSubjectModelList = teacher_subjectDao.getTeacherSubjectListByTeacherId(teacherId);
		List<Integer> uniqueClassIdList = new ArrayList<Integer>();
		
		for(TeacherSubjectModel teacherModel : teacherSubjectModelList){
			
			if(!uniqueClassIdList.contains(teacherModel.getClassId())){

				uniqueClassIdList.add(teacherModel.getClassId());
				newTeacherSubjectDto = new TeacherSubjectDto();
				newTeacherSubjectDto.setTeacherName(teacherName);				
				newTeacherSubjectDto.setClassName(classesDao.getClassesByClassId(teacherModel.getClassId()));
				newTeacherSubjectDto.setSectionName(sectionDao.getSectionBysectionId(teacherModel.getSectionId()));
				newTeacherSubjectDto.setSubjectName(subjectDao.getSubjectBySubjectId(teacherModel.getSubjectId()));
				
				teacherSujectDtoList.add(newTeacherSubjectDto);
			}
		}
		return teacherSujectDtoList;
	}

	public String getUserFullName(UserModel userModel){
		
		if(userModel.getfName() != null && userModel.getlName() != null){
			return userModel.getfName() + " " + userModel.getlName();
		}else if(userModel.getfName() != null){
			return userModel.getfName();
		}else{
			return userModel.getlName();
		}
	}
	
}
