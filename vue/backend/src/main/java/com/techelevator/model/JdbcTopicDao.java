package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;



@Component
public class JdbcTopicDao implements TopicDao {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JdbcTopicDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	
	@Override
	public List<Topic> getAllTopics() {
		List<Topic> allHelpTopics = new ArrayList<Topic>();

		String sqlGetAllTopics = "SELECT topic_name FROM help_topics";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetAllTopics);

		while (results.next()) {
			Topic topic = null;
			topic = mapRowToTopic(results);
			allHelpTopics.add(topic);

		}
		return allHelpTopics;

	}

	@Override
	public Topic getTopicByTopicName(String topicName) {
		Topic specificTopic = null;
		String getTopicByTopicName = "SELECT topic_name FROM help_topics WHERE topic_name = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(getTopicByTopicName, topicName);

		if (results.next()) {
			specificTopic = mapRowToTopic(results);
		}

		return specificTopic;
	}

	private Topic mapRowToTopic(SqlRowSet results) {
		Topic topic = new Topic();
		topic.setTopicName(results.getString("topic_name"));

		return topic;

	}
}
