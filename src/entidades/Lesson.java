package entidades;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="lessons")
public class Lesson {
	
	@Id  
	@GeneratedValue(strategy=GenerationType.AUTO)  
	private long id;
	
	@Column(name="theme")
	private String theme;
	
	@OneToMany(mappedBy="lesson")
    private Set<Video> videos;
	
	public Lesson(){
	
	}
	
	public long getId() {
		return id;
	}
	
	public String getTheme() {
		return theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}

	public Set<Video> getVideos() {
		return videos;
	}

	public void setVideos(Set<Video> videos) {
		this.videos = videos;
	}

	public void setId(long id) {
		this.id = id;
	}
	
	
	
	
	
	
	

}