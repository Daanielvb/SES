package entidades;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="video")
public class Video implements Serializable{
	
	@Id  
	@GeneratedValue(strategy=GenerationType.AUTO)  
	private long id;
	
	@Column(name="link")
	private String link;
	

	@Column(name="name")
	private String name;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "lesson_id", referencedColumnName="id",nullable = false)
	public Lesson lesson;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "subjects_id", referencedColumnName="id",nullable = false)
	private Subject subjects;
	public Video(){
		
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Lesson getLesson() {
		return lesson;
	}

	public void setLesson(Lesson lesson) {
		this.lesson = lesson;
	}

}
