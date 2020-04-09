package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JdbcCurriculumDao implements CurriculumDao{
	
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JdbcCurriculumDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	

	@Override
	public List<Curriculum> getAllCurriculum() {
		List<Curriculum> allCurriculum = new ArrayList<Curriculum>();

		String sqlGetAllCurriculum = "SELECT * FROM curriculum";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetAllCurriculum);

		while (results.next()) {
			Curriculum curriculum = null;
			curriculum = mapRowToCurriculum(results);
			allCurriculum.add(curriculum);

		}
		return allCurriculum;

	}

	@Override
	public Curriculum getCurriculumByName(String curriculumName) {
		Curriculum specificTopic = null;
		String getCurriculumByTopicName = "SELECT * FROM curriculum WHERE topic = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(getCurriculumByTopicName, curriculumName);

		if (results.next()) {
			specificTopic = mapRowToCurriculum(results);
		}

		return specificTopic;
	}
	
	
	private Curriculum mapRowToCurriculum(SqlRowSet results) {
		Curriculum curriculum = new Curriculum();
		curriculum.setId(results.getInt("id"));
		curriculum.setTopic(results.getString("topic"));
		curriculum.setMessage(results.getString("message"));
		curriculum.setReadingLink(results.getString("readingLink"));
		curriculum.setReadingTitle(results.getString("readingtitle"));
		curriculum.setVideoLink(results.getString("videolink"));
		curriculum.setVideoTitle(results.getString("videotitle"));
		

		return curriculum;

	}

}
