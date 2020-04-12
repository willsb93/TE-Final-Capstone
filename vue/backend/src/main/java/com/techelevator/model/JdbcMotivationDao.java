package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JdbcMotivationDao implements MotivationDao {

	private JdbcTemplate jdbcTemplate;
	
	
	@Autowired
	public JdbcMotivationDao (DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
		
	}

	@Override
	public List<Motivation> getAllMotivation() {
		List<Motivation> allMotivation = new ArrayList<Motivation>();
		
		String sqlGetAllMotivation = "SELECT * from motivation";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetAllMotivation);
		
		while (results.next()) {
			Motivation motivation = null;
			motivation = mapRowToMotivation(results);
			allMotivation.add(motivation);
		}
		
		return allMotivation;
	}

	private Motivation mapRowToMotivation(SqlRowSet results) {
		Motivation motivation = new Motivation();
		motivation.setId(results.getInt("id"));
		motivation.setMessage(results.getString("message"));
		motivation.setAuthor(results.getString("author"));
		

		return motivation;

	}
	
	
	
}
