package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Show {
	
	@RequestMapping(value = "stu")
	public ModelAndView backgroundshow(HttpServletRequest request) {

		ModelAndView mv = new ModelAndView("Student");

		return mv;
	}
	
	@RequestMapping(value = "top")
	public ModelAndView topStudent(HttpServletRequest request) {

		ModelAndView mv = new ModelAndView("top");

		return mv;
	}
	
	@RequestMapping(value = "left")
	public ModelAndView left(HttpServletRequest request) {

		ModelAndView mv = new ModelAndView("Left");

		return mv;
	}
	
	@RequestMapping(value = "index")
	public ModelAndView index(HttpServletRequest request) {

		ModelAndView mv = new ModelAndView("Index");

		return mv;
	}
	
}
