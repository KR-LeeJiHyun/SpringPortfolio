package com.wl9322.web.service.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

import com.wl9322.web.entity.Award;
import com.wl9322.web.entity.Education;
import com.wl9322.web.entity.Experience;
import com.wl9322.web.entity.Portfolio;
import com.wl9322.web.entity.ProjectSummaryView;
import com.wl9322.web.entity.Skill;
import com.wl9322.web.entity.Users;
import com.wl9322.web.entity.Project;
import com.wl9322.web.service.PortfolioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class JDBCPortfoiloService implements PortfolioService{

	@Autowired
	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public Portfolio getPortfolio() {
		String award_sql = "SELECT * FROM AWARD ORDER BY AWARD_DATE DESC";
		String education_sql = "SELECT * FROM EDUCATION ORDER BY GRADUATION DESC";
		String experience_sql = "SELECT * FROM EXPERIENCE ORDER BY LEAVE DESC";
		String project_view_sql = "SELECT * FROM PROJECT_SUMMARY_VIEW";
		String skill_sql = "SELECT * FROM SKILL ORDER BY PERCENT DESC";
		String users_sql = "SELECT * FROM users";

		Portfolio porfol = null;

		List<Award> award_list = new ArrayList<>();
		List<Education> education_list = new ArrayList<>();
		List<Experience> experience_list = new ArrayList<>();
		List<ProjectSummaryView> project_summary_view_list = new ArrayList<>();
		List<Skill> skill_list = new ArrayList<>();
		Users user = null;
		try {
			Connection con = dataSource.getConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(users_sql);

			rs.next();
			String name = rs.getString("NAME");
			String category = rs.getString("CATEGORY");
			String url = rs.getString("URL");
			String PHONE = rs.getString("PHONE");
			String email = rs.getString("EMAIL");
			String country = rs.getString("COUNTRY");
			String address = rs.getString("ADDRESS");
			String e_name = rs.getString("E_NAME");
			user = new Users(name, category, category, url, PHONE, email, country, address, e_name);

			rs = st.executeQuery(award_sql);

			while(rs.next()) {
				String award_name = rs.getString("NAME");
				Date award_date = rs.getDate("AWARD_DATE");
				String content = rs.getString("CONTENT");
				award_list.add(new Award(award_name, award_date, content));
			}

			rs = st.executeQuery(education_sql);

			while(rs.next()) {
				String school_name = rs.getString("NAME");
				Date admission = rs.getDate("ADMISSION");
				Date graduation = rs.getDate("GRADUATION");
				String content = rs.getString("CONTENT");
				education_list.add(new Education(school_name, admission, graduation, content));
			}

			rs = st.executeQuery(experience_sql);

			while(rs.next()) {
				String experience_name = rs.getString("NAME");
				Date join = rs.getDate("JOIN");
				Date leave = rs.getDate("LEAVE");
				String content = rs.getString("CONTENT");
				experience_list.add(new Experience(experience_name, join, leave, content));
			}


			rs = st.executeQuery(project_view_sql);

			while(rs.next()) { 
				String title = rs.getString("TITLE"); 
				String rep_image = rs.getString("IMAGE"); 
				String introduce = rs.getString("INTRODUCE");
				String src_title = rs.getString("SRC_TITLE");
				String p_category = rs.getString("CATEGORY");
				project_summary_view_list.add(new ProjectSummaryView(title, rep_image, introduce, src_title, p_category));
			}


			rs = st.executeQuery(skill_sql);

			while(rs.next()) {
				String skill_name = rs.getString("NAME");
				int percent = rs.getInt("PERCENT");
				skill_list.add(new Skill(skill_name, percent));
			}

			porfol = new Portfolio(award_list, education_list, experience_list, project_summary_view_list, skill_list, user);	
		}catch(SQLException e) {
			e.printStackTrace();
		}

		return porfol;
	};
	
	public Project getProject(String category, String src_title) {
		String sql = "SELECT * FROM PROJECT P WHERE P.CATEGORY=? AND P.SRC_TITLE=?";
		Project project = null;
		
		try {
			Connection con = dataSource.getConnection();
			PreparedStatement preparedStatement = con.prepareStatement(sql);
			preparedStatement.setString(1, category);
			preparedStatement.setString(2, src_title);
			ResultSet rs = preparedStatement.executeQuery();
			if (rs.next()) {
				String title = rs.getString("TITLE");
				String image = rs.getString("IMAGE");
				String introduce = rs.getString("INTRODUCE");
				String content = rs.getString("CONTENT");
				String url = rs.getString("URL");
				int img_cnt = rs.getInt("IMG_CNT");
				project = new Project(title, image, introduce, content, url, src_title, category, img_cnt);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return project;
	}
	
}
