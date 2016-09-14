package train.ticket.dao.vo;

import java.sql.Date;

import train.user.dao.vo.User;

public class Ticket {
	private Integer id;
	
	private Date buydate;
	
	private String sstation;
	
	private String estation;
	
	private Date stime;
	
	private Date etime;
	
	private Date btime;
	
	private int type;
	
	private String seat;
	
	private int price;
	
	private int insurance;
	
	private int state;
	
	private User u;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Date getBuydate() {
		return buydate;
	}

	public void setBuydate(Date buydate) {
		this.buydate = buydate;
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

	public Date getBtime() {
		return btime;
	}

	public void setBtime(Date btime) {
		this.btime = btime;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getSeat() {
		return seat;
	}

	public void setSeat(String seat) {
		this.seat = seat;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getInsurance() {
		return insurance;
	}

	public void setInsurance(int insurance) {
		this.insurance = insurance;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public User getU() {
		return u;
	}

	public void setU(User u) {
		this.u = u;
	}
	
	
}
