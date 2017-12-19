package entity;

import java.util.List;

/**
 * 学生表
 * squid，班级表id
 * @author 79392
 *
 */
public class Student {
	private int id;
	private String name;
	private String sex;
	private int age;
	private int number;
	private String patriarch;
	private List<Squad> squid;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getPatriarch() {
		return patriarch;
	}
	public void setPatriarch(String patriarch) {
		this.patriarch = patriarch;
	}
	public List<Squad> getSquid() {
		return squid;
	}
	public void setSquid(List<Squad> squid) {
		this.squid = squid;
	}

}
