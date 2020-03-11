package com.tms.TMS.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//import javax.persistence.JoinColumn;
//import javax.persistence.ManyToOne;
//import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="adminusertask")
public class AdminUserTask {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	//@OneToOne
	private Long taskid;
	//@OneToOne
	private Long adminid;
	//@ManyToOne
	//@JoinColumn
	//private Member member;
	
	private Long memberid;
	
	private AdminUserTask() {
		
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getTaskid() {
		return taskid;
	}
	public void setTask_id(Long taskid) {
		this.taskid = taskid;
	}
	public Long getAdminid() {
		return adminid;
	}
	public void setAdminid(Long adminid) {
		this.adminid = adminid;
	}
	public Long getMemberid() {
		return memberid;
	}
	public void setMemberid(Long memberid) {
		this.memberid = memberid;
	}

}
