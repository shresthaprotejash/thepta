package com.sakha.thepta.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sakha.thepta.dto.FeedbackDto;
import com.sakha.thepta.dto.TeacherSubjectDto;
import com.sakha.thepta.service.FeedbackService;
import com.sakha.thepta.service.Teacher_subjectService;

@Controller
@RequestMapping("/dashboard")
public class DashController {
	
	@Autowired
	private Teacher_subjectService teacherSubjectService;
	
	@Autowired
	private FeedbackService feedbackService;

	
	
	@RequestMapping("/uploadattendance")
	public ModelAndView uploadAttendance(HttpSession session) {
 
		ModelAndView mv = new ModelAndView("uploadattendance");
		int teacherId = (int) session.getAttribute("userId");
		List<TeacherSubjectDto> teacherSubjectList = teacherSubjectService.getTeacherSubjectListByTeacherId(teacherId);
		mv.addObject("teacherSubjectList", teacherSubjectList);
		return mv;
	}
	
	@RequestMapping(value = "/getsectionlistbyteacheridandclassid/{teacherid}/{classid}", method = RequestMethod.GET)
	@ResponseBody
	public String getSectionListByTeacheridAndClassid(@PathVariable("teacherid") int teacherId, 
			@PathVariable("classid") int classId){
		
		JSONObject mainObj = new JSONObject();
		List<TeacherSubjectDto> teacherSubjectList = teacherSubjectService.getSectionListByTeacheridAndClassid(teacherId, classId);
		mainObj.put("teacherSubjectSectionList", teacherSubjectList);
		return mainObj.toString();
	}
	

	
	
	@RequestMapping("/viewattendance")
	public ModelAndView fetchAttendance() {
 
		ModelAndView mv = new ModelAndView("viewattendance");
		return mv;
	}
	
	@RequestMapping("/uploadmarks")
	public ModelAndView uploadMarks() {
 
		ModelAndView mv = new ModelAndView("uploadmarks");
		return mv;
	}
	
	@RequestMapping("/viewmarks")
	public ModelAndView fetchMarks() {
 
		ModelAndView mv = new ModelAndView("viewmarks");
		return mv;
	}

	@RequestMapping("/viewhomework")
	public ModelAndView fetchviewhomework() {
 
		ModelAndView mv = new ModelAndView("viewhomework");
		return mv;
	}
	@RequestMapping("/viewhwandtest")
	public ModelAndView fetchviewhwandtest() {
 
		ModelAndView mv = new ModelAndView("viewhwandtest");
		return mv;
	}
	@RequestMapping("/viewtest")
	public ModelAndView fetchviewtest() {
 
		ModelAndView mv = new ModelAndView("viewtest");
		return mv;
	}
	@RequestMapping("/menu")
	public ModelAndView fetchmenu() {
 
		ModelAndView mv = new ModelAndView("menu");
		return mv;
	}
	@RequestMapping("/english")
	public ModelAndView fetchenglish() {
 
		ModelAndView mv = new ModelAndView("english");
		return mv;
	}
	@RequestMapping("/math")
	public ModelAndView fetchmath() {
 
		ModelAndView mv = new ModelAndView("math");
		return mv;
	}
	@RequestMapping("/computer")
	public ModelAndView fetchcomputer() {
 
		ModelAndView mv = new ModelAndView("computer");
		return mv;
	}
	@RequestMapping("/term")
	public ModelAndView fetchterm() {
 
		ModelAndView mv = new ModelAndView("term");
		return mv;
	}
	@RequestMapping("/classtest")
	public ModelAndView fetchclasstest() {
 
		ModelAndView mv = new ModelAndView("classtest");
		return mv;
	}
	@RequestMapping("/assignments")
	public ModelAndView fetchassignments() {
 
		ModelAndView mv = new ModelAndView("assignments");
		return mv;
	}
	
	
		
	@RequestMapping(value="/feedback",method=RequestMethod.GET)
	public ModelAndView feedback(HttpSession session) { 
		ModelAndView mv = new ModelAndView("feedback");
		int teacherId = (int) session.getAttribute("userId");
		List<TeacherSubjectDto> teacherSubjectList = teacherSubjectService.getSubjectListByTeacherid(teacherId);
		mv.addObject("teacherSubjectList",teacherSubjectList);
		return mv;
	}
	
	@RequestMapping(value = "/submitfeedback", method = RequestMethod.GET)
	@ResponseBody
	public int submitfeedback(HttpServletRequest request, HttpServletResponse response,HttpSession session){
		int teacherId = (int) session.getAttribute("userId");
		int subjectId = Integer.parseInt(request.getParameter("subjectId"));
		int studentId = Integer.parseInt(request.getParameter("studentId"));
		String feedText = request.getParameter("feedback");
		System.out.println(teacherId);
		System.out.println(subjectId);
		System.out.println(studentId);
		int success = feedbackService.postFeedbackBySubjectIdAndStudentId(teacherId,subjectId,studentId,feedText);
		return success;
	}
	

	@RequestMapping("/viewfeedback")
	public ModelAndView viewfeedback(HttpSession session) {
		 
		ModelAndView mv = new ModelAndView("viewfeedback");
		int studentId = (int) session.getAttribute("userId");
		List<FeedbackDto> feedbackList = feedbackService.getSubjectListByStudentId(studentId);
		mv.addObject("feedbackList", feedbackList);
		return mv;
	}

	@RequestMapping("/viewcircular")
	public ModelAndView viewcircular() {
 
		ModelAndView mv = new ModelAndView("viewcircular");
		return mv;
	}
	@RequestMapping("/uploadcircular")
	public ModelAndView uploadcircular() {
 
		ModelAndView mv = new ModelAndView("uploadcircular");
		return mv;
	}
	
	@RequestMapping("/uploadhomework")
	public ModelAndView uploadhomework() {
 
		ModelAndView mv = new ModelAndView("uploadhomework");
		return mv;
	}
	@RequestMapping("/uploadtestandhomework")
	public ModelAndView uploadtestandhomework() {
 
		ModelAndView mv = new ModelAndView("uploadtestandhomework");
		return mv;
	}
	@RequestMapping("/uploadtest")
	public ModelAndView uploadtest() {
 
		ModelAndView mv = new ModelAndView("uploadtest");
		return mv;
	}
	

}
