package entidades;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="subject")
public class Subject implements Serializable{
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String name;
	@Column(name="text_beginner")
	private String textBeginner;
	@Column(name="text_adv")
	private String textAdv;
	private int difficulty;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "lesson_id", referencedColumnName="id",nullable = false)
	private Lesson lesson;
	
	@OneToMany(mappedBy="subjects")
    private List<Video> videos;
	
	@OneToMany(mappedBy="subjects")
    private List<Link> link;
	
	public Subject(){
		
	}

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

	public String getTextBeginner() {
		return textBeginner;
	}

	public void setTextBeginner(String textBeginner) {
		this.textBeginner = textBeginner;
	}

	public String getTextAdv() {
		return textAdv;
	}

	public void setTextAdv(String textAdv) {
		this.textAdv = textAdv;
	}

	public int getDifficulty() {
		return difficulty;
	}

	public void setDifficulty(int difficulty) {
		this.difficulty = difficulty;
	}

	public Lesson getLesson() {
		return lesson;
	}

	public void setLesson(Lesson lesson) {
		this.lesson = lesson;
	}
	
}
