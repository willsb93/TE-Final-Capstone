package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;


@Component

public class JdbcTopicDao implements TopicDao {
	private jdbcTemplate; 

	public JdbcTopicDao() {
		
		
		
		
		// TODO Auto-generated constructor stub
	}

	@Override
	public List<Topic> getAllTopics() {
		List<Topic> allhelpTopics = new ArrayList<Topic>();	
		
		String sqlGetAllTopics = "SELECT id, topic_name FROM help_topics";
	 	
		
		
		return null;
	}

	@Override
	public Topic getTopicByTopicName(String topicName) {
		// TODO Auto-generated method stub
		return null;
	}

}
