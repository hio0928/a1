package dto;

public class Movie {
	
	private String movie_id;
	private String title;
	private String director;
	private String actor;
	private String country;
	private int runnigTime;
	private String imgFile_name;
	
	public Movie() {
		super();
	}

	public Movie(String movoe_id, String title, String director) {
		this.movie_id = movoe_id;
		this.title = title;
		this.director = director;
	}
	
	public String getMovie_id() {
		return movie_id;
	}
	
	public void setMovie_id(String movie_id) {
		this.movie_id = movie_id;
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getDirector() {
		return director;
	}
	
	public void setDirector(String director) {
		this.director = director;
	}
	
	public String getActor() {
		return actor;
	}
	
	public void setActor(String actor) {
		this.actor = actor;
	}
	
	public String getCountry() {
		return country;
	}
	
	public void setCountry(String country) {
		this.country = country;
	}
	
	public int getRunnigTime() {
		return runnigTime;
	}
	
	public void setRunnigTime(int runnigTime) {
		this.runnigTime = runnigTime;
	}
	
	public String getImgFile_name() {
		return imgFile_name;
	}
	
	public void setImgFile_name(String imgFile_name) {
		this.imgFile_name = imgFile_name;
	}

}
