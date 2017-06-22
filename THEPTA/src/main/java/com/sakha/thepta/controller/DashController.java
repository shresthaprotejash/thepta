package com.sakha.thepta.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sakha.thepta.model.UserModel;
import com.sakha.thepta.service.UserService;

@Controller
@RequestMapping("/dashboard")
public class DashController {
	
	@RequestMapping("/uploadattendance")
	public ModelAndView uploadAttendance() {
 
		ModelAndView mv = new ModelAndView("uploadattendance");
		return mv;
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

}
