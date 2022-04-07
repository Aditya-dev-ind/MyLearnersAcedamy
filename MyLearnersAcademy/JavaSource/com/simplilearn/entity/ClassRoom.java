package com.simplilearn.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

@Entity
public class ClassRoom {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String className;
	
	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "class_teacher", 
		joinColumns = { @JoinColumn(name = "teacher_id", referencedColumnName = "id") }, 
		inverseJoinColumns = {@JoinColumn(name = "class_id", referencedColumnName = "id") })
	private List<Teacher> teacher;
	
	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "class_subject", 
		joinColumns = { @JoinColumn(name = "subject_id", referencedColumnName = "id") }, 
		inverseJoinColumns = {@JoinColumn(name = "class_id", referencedColumnName = "id") })
	private List<Subject> subjects;

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public List<Teacher> getTeacher() {
		return teacher;
	}

	public void setTeacher(List<Teacher> teacher) {
		this.teacher = teacher;
	}

	public List<Subject> getSubjects() {
		return subjects;
	}

	public void setSubjects(List<Subject> subjects) {
		this.subjects = subjects;
	}

	public ClassRoom(String className, List<Teacher> teacher, List<Subject> subjects) {
		super();
		this.className = className;
		this.teacher = teacher;
		this.subjects = subjects;
	}

	public ClassRoom(String className) {
		super();
		this.className = className;
	}

	public ClassRoom() {
		super();
	}

	@Override
	public String toString() {
		return "ClassRoom [id=" + id + ", className=" + className + ", teacher=" + teacher + ", subjects=" + subjects
				+ "]";
	}

	

}
