package controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.College;
import entity.School;
import entity.Squad;
import entity.Student;
import entity.Teacher;
import service.StudentService;

@Controller
public class StudentController {
	
	@Autowired
	StudentService stu;
	
	@RequestMapping(value = "student")
	public ModelAndView backgroundshow(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView("student/student");
	    List<Student> stud = stu.joinStudent();
	    for (int i = 0; i < stud.size(); i++) {
	    	List<Squad> squ = stud.get(i).getSquid();
	    	for (int j = 0; j < squ.size(); j++) {
	    		System.out.println(squ.get(j).getName());
	    		List<Teacher> teachers = squ.get(j).getTeaid();
	    		List<College> College = squ.get(j).getCollid();
	    		for(Teacher telist : teachers ){
	    			System.out.println(telist.getName());
	    		}
	    		for(College list : College ){
	    			System.out.println(list.getName());
	    			List<School> schlist =	list.getSchid();
	    			for(School listschool : schlist){
	    				System.out.println(listschool.getName());
	    			}
	    		}
	    		
			}
	    	System.out.println(stud.get(i).getName());
	    	System.out.println(stud.get(i).getAge());
	    	System.out.println(stud.get(i).getNumber());
	    	System.out.println(stud.get(i).getPatriarch());
		}
	    mv.addObject("stud",stud);
		return mv;
	}
	
	@RequestMapping(value = "modStudent")
	public ModelAndView modStudent(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView("student/ModStudent");
		
		return mv;
	}
	
	@RequestMapping(value = "addStudent")
	public String addStudent(HttpServletRequest request) {
		String name = null;
		String sex = null;
		String patriarch = null;
		try {
			name = new String( request.getParameter("name").getBytes("ISO-8859-1"),"utf-8");
			sex = new String( request.getParameter("sex").getBytes("ISO-8859-1"),"utf-8");
			patriarch = new String( request.getParameter("patriarch").getBytes("ISO-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int age  = Integer.parseInt(request.getParameter("age"));
		int number = Integer.parseInt(request.getParameter("number"));
		int a = stu.addStudent(name, age, sex, number, patriarch);
		System.out.println(a);
		return "redirect:student";
	}
	
	@RequestMapping(value = "delcetStudent")
	public String delectStudent(HttpServletRequest request,int id) {
		
		int a = stu.delcetStudent(id);
		System.out.println(a);
		return "redirect:student";
	}
	
	@RequestMapping(value = "updeatStudent")
	public ModelAndView updeatStudent(HttpServletRequest request,int id) {
		
		ModelAndView mv = new ModelAndView("student/ModStudent");
		List<Student> student =  stu.selectWhereId(id);
		mv.addObject("student",student);
		mv.addObject("id",id);
		
		return mv;
	}
}
