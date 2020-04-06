package com.techelevator.model;

import java.util.List;

public interface TopicDao {

	
	/**
	 * this displays all help_topics options
	 * @return
	 */
	
	public List<Topic> getAllTopics();
	
	
/**
 * Get's help_topic based on user search term
 * @param topicName
 * @return
 */
	
  public Topic getTopicByTopicName(String topicName);
 
	
}
