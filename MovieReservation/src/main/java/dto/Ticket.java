package dto;

public class Ticket {

	private String res_id;  
	private String user_id;
	private String title;
	private int theater_num;
	private String seat; 
	private int cost;
	
	public Ticket() {
		super();
	}
	
	public Ticket(String res_id) {
		this.res_id = res_id;
	}
	
	public String getRes_id() {
		return res_id;
	}
	
	public void setRes_id(String res_id) {
		this.res_id = res_id;
	}
	
	public String getUser_id() {
		return user_id;
	}
	
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getSeat() {
		return seat;
	}
	
	public void setSeat(String seat) {
		this.seat = seat;
	}
	
	public int getCost() {
		return cost;
	}
	
	public void setCost(int cost) {
		this.cost = cost;
	}
	
}
