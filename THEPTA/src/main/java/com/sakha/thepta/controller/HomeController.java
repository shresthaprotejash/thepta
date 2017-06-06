package com.sakha.thepta.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping("/login")
	public ModelAndView showMessage() {
 
		ModelAndView mv = new ModelAndView("login");
		return mv;
	}
}
