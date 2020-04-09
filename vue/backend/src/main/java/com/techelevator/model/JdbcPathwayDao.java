package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JdbcPathwayDao implements PathwayDao {

	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JdbcPathwayDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	
	@Override
	public List<Pathway> getAllPathway() {
		List<Pathway> allPathway = new ArrayList<Pathway>();	
		
		String sqlGetAllPathway = "SELECT * FROM pathway" ;
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetAllPathway);
		
		while(results.next()) {
			Pathway pathway = null;
			pathway = mapRowToPathway(results);
			allPathway.add(pathway);
			
		}
		
		return allPathway;
	}

	@Override
	public Pathway getPathWayByName(String pathwayName) {
		Pathway specificTopic = null;
		String getPathwayByTopicName = "SELECT * FROM pathway WHERE topic = ?";
		
		SqlRowSet results = jdbcTemplate.queryForRowSet(getPathwayByTopicName, pathwayName);
		
		if(results.next()) {
			specificTopic = mapRowToPathway(results);
			
		}
		
		return specificTopic;
	}

	private Pathway mapRowToPathway(SqlRowSet results) {
		Pathway pathway = new Pathway();
		pathway.setId(results.getInt("id"));
		pathway.setTopic(results.getString("topic"));
		pathway.setMessage(results.getString("message"));
		pathway.setReadingLink(results.getString("readingLink"));
		pathway.setReadingTitle(results.getString("readingtitle"));
		pathway.setVideoLink(results.getString("videolink"));
		pathway.setVideoTitle(results.getString("videotitle"));
		

		return pathway;

	}
	
	
}
