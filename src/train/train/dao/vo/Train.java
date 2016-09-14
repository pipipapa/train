package train.train.dao.vo;

import java.sql.Date;

public class Train {
	private int id;
	
	private String name;
	
	private String sstation;
	
	private String estation;
	
	private Date stime;
	
	private Date etime;

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

	public String getSstation() {
		return sstation;
	}

	public void setSstation(String sstation) {
		this.sstation = sstation;
	}

	public String getEstation() {
		return estation;
	}

	public void setEstation(String estation) {
		this.estation = estation;
	}

	public Date getStime() {
		return stime;
	}

	public void setStime(Date stime) {
		this.stime = stime;
	}

	public Date getEtime() {
		return etime;
	}

	public void setEtime(Date etime) {
		this.etime = etime;
	}
	
	
}
