package com.techelevator.model;

public class Curriculum {
	
	private int id;
	private String topic;
	private String message;
	private String readingLink;
	private String readingTitle;
	private String videoLink;
	private String videoTitle;
	
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getReadingLink() {
		return readingLink;
	}
	public void setReadingLink(String readingLink) {
		this.readingLink = readingLink;
	}
	public String getReadingTitle() {
		return readingTitle;
	}
	public void setReadingTitle(String readingTitle) {
		this.readingTitle = readingTitle;
	}
	public String getVideoLink() {
		return videoLink;
	}
	public void setVideoLink(String videoLink) {
		this.videoLink = videoLink;
	}
	public String getVideoTitle() {
		return videoTitle;
	}
	public void setVideoTitle(String videoTitle) {
		this.videoTitle = videoTitle;
	}
	
}