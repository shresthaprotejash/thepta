package com.sakha.thepta.service.impl;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.sakha.thepta.dao.HomeworkDao;
import com.sakha.thepta.dao.StudentDao;
import com.sakha.thepta.dao.SubjectDao;
import com.sakha.thepta.dao.UserDao;
import com.sakha.thepta.dto.HomeworkDto;
import com.sakha.thepta.dto.TeacherSubjectDto;
import com.sakha.thepta.model.HomeworkModel;
import com.sakha.thepta.model.StudentModel;
import com.sakha.thepta.model.TeacherSubjectModel;
import com.sakha.thepta.service.HomeworkService;
import com.sakha.thepta.util.Util;


@Service
public class HomeworkServiceImpl implements HomeworkService{
	
	@Autowired
	private HomeworkDao homeworkDao;
	
	@Autowired
	private Util util;
	
	@Autowired
	private StudentDao studentDao;
	
	@Autowired
	private SubjectDao subjectDao;
	
	@Autowired
	private UserDao userDao;
	
	
	@Override
	@Transactional
	public int giveHomeworkBysubjectId(MultipartHttpServletRequest request) {
		
		int homeWorkId = 0;
		try{
			String fileContent = "";
			Iterator<String> itr = request.getFileNames();
			if (itr.hasNext()) {
				MultipartFile mpf = request.getFile(itr.next());
/*				fileName = mpf.getOriginalFilename();
*/				MultipartFile file = request.getFile("homeworkFile");
				fileContent = new String(file.getBytes());
			}
			
			int teacherId = Integer.parseInt(request.getParameter("teacherId").toString());
			int subjectId = Integer.parseInt(request.getParameter("subjectId").toString());
			int classId = Integer.parseInt(request.getParameter("classId").toString());
			int sectionId = Integer.parseInt(request.getParameter("sectionId").toString());
			String homeworkText = request.getParameter("homeworkText").toString();
			
			HomeworkModel newHomeworkModel = new HomeworkModel();
			newHomeworkModel.setSubjectId(subjectId);
			newHomeworkModel.setTeacherId(teacherId);
			newHomeworkModel.setClassId(classId);
			newHomeworkModel.setSectionId(sectionId);
			newHomeworkModel.setHomeworkText(homeworkText);
			newHomeworkModel.setHomeworkFileContent(fileContent);
			newHomeworkModel.setDate(new Date(new java.util.Date().getTime()));
			
			
			homeWorkId = homeworkDao.giveHomeworkBysubjectId(newHomeworkModel);
		}catch(Exception e){
			e.printStackTrace();
		}
		return homeWorkId;
	}

	@Override
	@Transactional
	public HomeworkModel viewHomeworkByteacherIdandsubjectId(int teacherId, int SubjectId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public List<HomeworkDto> getHomeworkListBystudentId(int studentId) {
		HomeworkDto newHomeworkDto =null;
		List<HomeworkDto> subjecthomeworkList = new ArrayList<HomeworkDto>(); 
		StudentModel studentInfo = studentDao.getStudentModelByStudentId(studentId);
		List<HomeworkModel> homeworkList=homeworkDao.getHomeworkListByClassIdAndSecionId(studentInfo.getClassId(),studentInfo.getSectionId());
		for(HomeworkModel homeworkModel : homeworkList){
				newHomeworkDto = new HomeworkDto();
				newHomeworkDto.setSubjectId(homeworkModel.getSubjectId());
				newHomeworkDto.setSubjectName(subjectDao.getSubjectBySubjectId(homeworkModel.getSubjectId()));
				newHomeworkDto.setTeacherId(homeworkModel.getTeacherId());
				newHomeworkDto.setTeacherName(util.getUserFullName(userDao.getUserByUserId(homeworkModel.getTeacherId())));
				newHomeworkDto.setHomeworktext(homeworkModel.getHomeworkText());
				newHomeworkDto.setHomeworkFileContent(homeworkModel.getHomeworkFileContent());
				newHomeworkDto.setDate(homeworkModel.getDate());				
				subjecthomeworkList.add(newHomeworkDto);
		}
		
		return subjecthomeworkList;
	}

}
