package service;

import java.util.List;

import entity.Student;

public interface StudentService {

	public List<Student> selectStudent();
	public int addStudent(String name,int age,String sex,int number,String patriarch);
	public int delcetStudent(int id);
	public List<Student> selectWhereId(int id);
	public List<Student> joinStudent();
	
}
