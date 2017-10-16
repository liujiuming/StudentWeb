package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.StudentDao;
import entity.Student;
import service.StudentService;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	StudentDao stu;

	@Override
	public List<Student> selectStudent() {
		// TODO Auto-generated method stub
		return stu.selectStudent();
	}

	@Override
	public int addStudent(String name, int age, String sex, int number,
			String patriarch) {
		// TODO Auto-generated method stub
		return stu.addStudent(name, age, sex, number, patriarch);
	}

	@Override
	public int delcetStudent(int id) {
		// TODO Auto-generated method stub
		return stu.delcetStudent(id);
	}

	@Override
	public List<Student> selectWhereId(int id) {
		// TODO Auto-generated method stub
		return stu.selectWhereId(id);
	}

	@Override
	public List<Student> joinStudent() {
		// TODO Auto-generated method stub
		return stu.joinStudent();
	}




	
	


	
//	@Autowired
//	ShoppingCartDao shoppcardao;
//
//	@Override
//	public List<ShoppingCart> seachcart() {
//		// TODO Auto-generated method stub
//		return shoppcardao.seachcart();
//	}
//
//	@Override
//	public int addcart(int idname) {
//		// TODO Auto-generated method stub
//		return shoppcardao.addcart(idname);
//	}
//
//	@Override
//	public int addcartnumandtatal(int tatal, int number, int idname) {
//		// TODO Auto-generated method stub
//		return shoppcardao.addcartnumandtatal(tatal, number, idname);
//	}
//
//	@Override
//	public int delectcart(int type) {
//		// TODO Auto-generated method stub
//		return shoppcardao.delectcart(type);
//	}
//
//	@Override
//	public int updeattatal(int tatal, int number, int idname) {
//		// TODO Auto-generated method stub
//		return shoppcardao.updeattatal(tatal, number, idname);
//	}
//
//	@Override
//	public NoteBook seachbycount(int sid) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	
//
//
//	@Override
//	public int addtext(int sid, int number, int tatal) {
//		
//		int result = 0;
//		if (shoppcardao.seachbycount(sid) == 0) {
//			result = shoppcardao.addtext(sid, number, tatal);
//		}else {
//			result = shoppcardao.updeatcarttext(number, sid);
//		}
//		
//		return result;
//	}
//	
	

}
