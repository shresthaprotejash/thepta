package com.sakha.thepta.service.impl;

import java.util.Iterator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.sakha.thepta.dao.HomeworkDao;
import com.sakha.thepta.model.HomeworkModel;
import com.sakha.thepta.service.HomeworkService;

@Service
public class HomeworkServiceImpl implements HomeworkService{
	
	@Autowired
	private HomeworkDao homeworkDao;

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
			String homeworkText = request.getParameter("homeworkText").toString();
			
			HomeworkModel newHomeworkModel = new HomeworkModel();
			newHomeworkModel.setSubjectId(subjectId);
			newHomeworkModel.setTeacherId(teacherId);
			newHomeworkModel.setHomeworkText(homeworkText);
			newHomeworkModel.setHomeworkFileContent(fileContent);
			
			
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

}
