package com.techelevator.controller;

import com.techelevator.authentication.AuthProvider;
import com.techelevator.authentication.UnauthorizedException;
import com.techelevator.model.Curriculum;
import com.techelevator.model.CurriculumDao;
import com.techelevator.model.Pathway;
import com.techelevator.model.PathwayDao;
import com.techelevator.model.Topic;
import com.techelevator.model.TopicDao;
import com.techelevator.model.Motivation;
import com.techelevator.model.MotivationDao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * ApiController
 */
@RestController
@RequestMapping("/api")
@CrossOrigin 
public class ApiController {

    @Autowired
    private AuthProvider authProvider;
    @Autowired
    private TopicDao topicDao;
    @Autowired
    private CurriculumDao curriculumDao;
    @Autowired
    private PathwayDao pathwayDao;  
    @Autowired
    private MotivationDao motivationDao;
    
    
   
    @GetMapping(path = "/topic")
    	public List<Topic> getAllTopics(){
    		return topicDao.getAllTopics();
    	}
    
    @GetMapping(path = "/curriculum")
	public List<Curriculum> getAllCurriculum(){

    	
    	return curriculumDao.getAllCurriculum();
	}
    
    
    @GetMapping(path = "/pathway")
	public List<Pathway> getAllPathway(){
		return pathwayDao.getAllPathway();
	}

    
    @GetMapping(path = "/motivation")
	public List<Motivation> getAllMotivation(){
    	
		return motivationDao.getAllMotivation();
	}
}
