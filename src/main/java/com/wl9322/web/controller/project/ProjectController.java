package com.wl9322.web.controller.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wl9322.web.entity.Portfolio;
import com.wl9322.web.entity.Project;
import com.wl9322.web.service.jdbc.JDBCPortfoiloService;

@Controller
@RequestMapping("/")
public class ProjectController {
	
	@Autowired
	JDBCPortfoiloService jdbcPortfoiloService;
	
	@RequestMapping("project")
	public String project(String category, String src_title, Model model) {
		Project project = jdbcPortfoiloService.getProject(category, src_title);
		model.addAttribute("project", project);
		return "project/project";
	}
	
}
