package com.sakha.thepta.dao;

import com.sakha.thepta.model.Teacher_subjectModel;

public interface Teacher_subjectDao {

	public Teacher_subjectModel getSubjectByTeacherIdandClassId(String teacherId,String classesId);


}