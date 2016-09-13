package train.bstation.dao.vo;

import org.springframework.stereotype.Repository;

@Repository
public class Bstation {

	
	private int id;
	private int time;
	private int selfstation;
	private String selfname;
	private int nextstation;
	private String nextname;
	private int money0;
	private int money1;
	private int money2;
	private int money3;
	
	
	public String getSelfname() {
		return selfname;
	}
	public void setSelfname(String selfname) {
		this.selfname = selfname;
	}
	public String getNextname() {
		return nextname;
	}
	public void setNextname(String nextname) {
		this.nextname = nextname;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	public int getNextstation() {
		return nextstation;
	}
	public void setNextstation(int nextstation) {
		this.nextstation = nextstation;
	}
	public int getmoney0() {
		return money0;
	}
	public void setmoney0(int money0) {
		this.money0 = money0;
	}
	public int getmoney1() {
		return money1;
	}
	public void setmoney1(int money1) {
		this.money1 = money1;
	}
	public int getmoney2() {
		return money2;
	}
	public void setmoney2(int money2) {
		this.money2 = money2;
	}
	public int getmoney3() {
		return money3;
	}
	public void setmoney3(int money3) {
		this.money3 = money3;
	}
	public int getSelfstation() {
		return selfstation;
	}
	public void setSelfstation(int selfstation) {
		this.selfstation = selfstation;
	}
	
	
}
