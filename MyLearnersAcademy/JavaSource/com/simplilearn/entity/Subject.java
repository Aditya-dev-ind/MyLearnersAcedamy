package com.simplilearn.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Subject {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String subjectName;
	


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	
	public Subject(String subjectName, List<ClassRoom> classRoom) {
		super();
		this.subjectName = subjectName;
		
	}

	public Subject(String subjectName) {
		super();
		this.subjectName = subjectName;
	}

	public Subject() {
		super();
	}

	@Override
	public String toString() {
		return "Subject [id=" + id + ", SubjectName=" + subjectName + "]";
	}
	
	
}
