package com.tms.TMS.controllers;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tms.TMS.entities.AdminUserTask;
import com.tms.TMS.entities.Tasks;
import com.tms.TMS.repos.AdminUserTaskRepository;
import com.tms.TMS.repos.TasksRepository;

@Controller
public class TasksController {
	
	@Autowired
	TasksRepository tasksRepository;
	
	@Autowired
	AdminUserTaskRepository adminusertaskRepository;
	
	@RequestMapping("createTask")
	public String createTasks() {
		return "createTask";	
	}
	
	@RequestMapping(value="createTask", method=RequestMethod.POST)
	public String createTask(@ModelAttribute("tasks") Tasks tasks ) {
		tasksRepository.save(tasks);
		return "dashboard";
	}

	
	@RequestMapping("assignTask")
	public String assignTask() {
		return "adminAssign";	
	}
	
	@RequestMapping(value="tsk", method=RequestMethod.POST)
	public String assignTask(@ModelAttribute("adminusertask") AdminUserTask adminusertask ) {
		adminusertaskRepository.save(adminusertask);
		return "dashboard";
	}
	
	
	@RequestMapping("viewTask")
	public String viewTasks() {
		return "viewTask";	
	}
	
	
	@RequestMapping(value="viewTask", method=RequestMethod.GET)
	public String viewTask(@ModelAttribute("adminusertask") AdminUserTask adminusertask ) {
		//adminusertaskRepository.save(adminusertask);
		return "viewTask";
	}
	
	

}
