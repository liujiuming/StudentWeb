package entity;

import java.util.List;

public class College {
	private int id;
	private String name;
	private List<School> schid;
	
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

	public List<School> getSchid() {
		return schid;
	}

	public void setSchid(List<School> schid) {
		this.schid = schid;
	}
}
