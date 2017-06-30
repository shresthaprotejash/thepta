package com.sakha.thepta.service;

import org.json.JSONObject;

import com.sakha.thepta.model.TeacherSubjectModel;

public interface Teacher_subjectService {

	public TeacherSubjectModel getSubjectByTeacherIdandClassId(String teacherId,String classesId);
	public JSONObject getTeacherSubjectListByTeacherId(int teacherId);

}
