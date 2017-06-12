package com.sakha.thepta.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sakha.thepta.model.UserModel;
import com.sakha.thepta.service.UserService;

@Controller
public class HomeController {

	@Autowired
	private UserService userService;

	@RequestMapping("/login")
	public ModelAndView showMessage() {
 
		ModelAndView mv = new ModelAndView("login");
		UserModel userModel = userService.getUserByMailIdOrPhoneNo("raushan.kumar@sakhatech.com");
		mv.addObject("userName", userModel.getlName());
		return mv;
	}
	
	@RequestMapping("/dashboard")
	public ModelAndView fetchdashboard() {
 
		ModelAndView mv = new ModelAndView("dashboard");
		return mv;
	}
	
	@RequestMapping("/userprofile")
	public ModelAndView fetchuser() {
 
		ModelAndView mv = new ModelAndView("user");
		return mv;
	}
}
