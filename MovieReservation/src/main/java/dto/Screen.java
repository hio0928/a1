package dto;

public class Screen {
	
	private String screen_id;
	private String movie_id;
	private int theater_num;
	private String screen_start;
	private String screen_end;
	private int cost;
	
	public Screen() {
		super();
	}
	
	public Screen(String screen_id, String movie_id, int theater_num) {
		this.screen_id = screen_id;
		this.movie_id = movie_id;
		this.theater_num = theater_num;
	}
	
	public String getScreen_id() {
		return screen_id;
	}
	
	public void setScreen_id(String screen_id) {
		this.screen_id = screen_id;
	}
	
	public String getMovie_id() {
		return movie_id;
	}
	
	public void setMovie_id(String movie_id) {
		this.movie_id = movie_id;
	}
	
	public int getTheater_num() {
		return theater_num;
	}
	
	public void setTheater_num(int theater_num) {
		this.theater_num = theater_num;
	}
	
	public String getScreen_start() {
		return screen_start;
	}
	
	public void setScreen_start(String screen_start) {
		this.screen_start = screen_start;
	}
	
	public String getScreen_end() {
		return screen_end;
	}
	
	public void setScreen_end(String screen_end) {
		this.screen_end = screen_end;
	}
	
	public int getCost() {
		return cost;
	}
	
	public void setCost(int cost) {
		this.cost = cost;
	}
}
