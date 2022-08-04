package com.wl9322.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wl9322.web.entity.Portfolio;
import com.wl9322.web.service.PortfolioService;

@Controller
@RequestMapping("/")

public class HomeController {
	
	@Autowired
	private PortfolioService jdbcPortfoiloService;
	
	@RequestMapping(value = {"index",""})
	public String index(Model model) {
		Portfolio porfol = jdbcPortfoiloService.getPortfolio();
		model.addAttribute("porfol", porfol);
		return "index";
	}
	
}
