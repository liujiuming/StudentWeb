package entity;

import java.util.List;

public class Squad {
	private String name;
	private int id;
	private List<Teacher> teaid;
	private List<College> collid;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public List<Teacher> getTeaid() {
		return teaid;
	}
	public void setTeaid(List<Teacher> teaid) {
		this.teaid = teaid;
	}
	public List<College> getCollid() {
		return collid;
	}
	public void setCollid(List<College> collid) {
		this.collid = collid;
	}
}
