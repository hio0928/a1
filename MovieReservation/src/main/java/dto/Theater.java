package dto;

public class Theater {
	
	private int theater_num; 
	private String seat;
	private boolean res_check;
	
	public Theater() {
		super();
	}
	
	public Theater(int theater_num, String seat) {
		this.theater_num = theater_num;
		this.seat = seat;
	}
	
	public int getTheater_num() {
		return theater_num;
	}
	
	public void setTheater_num(int theater_num) {
		this.theater_num = theater_num;
	}
	
	public String getSeat() {
		return seat;
	}
	
	public void setSeat(String seat) {
		this.seat = seat;
	}
	
	
	public boolean isRes_check() {
		return res_check;
	}
	
	public void setRes_check(boolean res_check) {
		this.res_check = res_check;
	}
}
