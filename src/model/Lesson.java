package model;

import java.util.List;
import java.io.Serializable;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="lesson")
public class Lesson implements Serializable{
	
	@Id  
	@GeneratedValue(strategy=GenerationType.AUTO)  
	private long id;
	
	@OneToMany(mappedBy="lesson")
    private List<Video> videos;
	
	@OneToMany(mappedBy="lesson")
    private List<Subject> subjects;

	@OneToMany(mappedBy="lesson")
    private List<Quiz> quizzes;
	
	@OneToMany(mappedBy="lesson")
    private List<Link> link;

	private String theme;
	
	public String getTheme() {
		return theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}

	public Lesson(){
	
	}
	
	public long getId() {
		return id;
	}

	public List<Video> getVideos() {
		return videos;
	}

	public void setVideos(List<Video> videos) {
		this.videos = videos;
	}

	public List<Subject> getSubjects() {
		return subjects;
	}

	public void setSubjects(List<Subject> subjects) {
		this.subjects = subjects;
	}

	public void setId(long id) {
		this.id = id;
	}
	
	
	
	
	
	
	

}