package com.wl9322.web.service;

import com.wl9322.web.entity.Portfolio;
import com.wl9322.web.entity.Project;

public interface PortfolioService {
	public Portfolio getPortfolio();
	public Project getProject(String category, String src_title);
}
