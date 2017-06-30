package com.sakha.thepta.service.impl;

import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sakha.thepta.dao.AttendanceDao;
import com.sakha.thepta.dao.Teacher_subjectDao;
import com.sakha.thepta.dao.UserDao;
import com.sakha.thepta.model.TeacherSubjectModel;
import com.sakha.thepta.model.UserModel;
import com.sakha.thepta.service.Teacher_subjectService;

@Service
public class Teacher_subjectServiceImpl implements Teacher_subjectService{
	
	@Autowired
	private UserDao userDao; 
	
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
	public JSONObject getTeacherSubjectListByTeacherId(int teacherId) {
		
		String teacherName = getUserFullName(userDao.getUserByUserId(teacherId));
		JSONObject jsonObject = new JSONObject();
		JSONArray jsonArr = new JSONArray();
		List<TeacherSubjectModel> teacherSubjectModelList = teacher_subjectDao.getTeacherSubjectListByTeacherId(teacherId);
		for(TeacherSubjectModel teacherModel : teacherSubjectModelList){
			
			jsonObject.put("teacherName", teacherName);
			jsonObject.put("classId", teacherModel.getClassId());
			jsonObject.put("subjectId", teacherModel.getSubjectId());
			jsonObject.put("sectionId", teacherModel.getSectionId());
			jsonArr.put(jsonObject);
		}
		
		return jsonObject.put("teacherList", jsonArr);
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
