package com.tms.TMS.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name="Tasks")
public class Tasks {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@NotNull
	private Long id;
	
	@Column(name="title")
	@NotNull
	private String title;
	
	@Column(name="description")
	@NotNull
	private String description;
	
	@JsonFormat(pattern="YYYY/dd/MM")
	@Column(name="creationDate")
	@NotNull
	private Date creationDate;
	
	@JsonFormat(pattern="YYYY/dd/MM")
	@Column(name="dueDate")
	@NotNull
	private Date dueDate;
	
	@Column(name="completed")
	@NotNull
	private int completed;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}

	public Date getDueDate() {
		return dueDate;
	}

	public void setDueDate(Date dueDate) {
		this.dueDate = dueDate;
	}

	public int getCompleted() {
		return completed;
	}

	public void setCompleted(int completed) {
		this.completed = completed;
	}

	public Tasks(@NotNull Long id, @NotNull String title, @NotNull String description, @NotNull Date creationDate,
			@NotNull Date dueDate, @NotNull int completed) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.creationDate = creationDate;
		this.dueDate = dueDate;
		this.completed = completed;
	}
	
	
	
	

}
