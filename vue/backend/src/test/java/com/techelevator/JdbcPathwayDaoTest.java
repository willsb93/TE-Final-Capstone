package com.techelevator;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.SingleConnectionDataSource;

import com.techelevator.model.JdbcPathwayDao;
import com.techelevator.model.Pathway;
import com.techelevator.model.PathwayDao;







public class JdbcPathwayDaoTest {
	private static final String TEST_TOPIC = "JavaGreenTest";
	private static final String TEST_MESSAGE = "A Simple Test";
	private static final String TEST_READINGLINK = "book";
	private static final String TEST_READINGTITLE = "Student Book";
	private static final String TEST_VIDEOLINK = "Youtube";
	private static final String TEST_VIDEOTITLE = "Evolution Of Dancing";
	private PathwayDao dao;
	
	/* Using this particular implementation of DataSource so that
	 * every database interaction is part of the same database
	 * session and hence the same database transaction */
	public static SingleConnectionDataSource dataSource;

	/* Before any tests are run, this method initializes the datasource for testing. */
	@BeforeClass
	public static void setupDataSource() {
		dataSource = new SingleConnectionDataSource();
		dataSource.setUrl("jdbc:postgresql://localhost:5432/chatbot");
		dataSource.setUsername("postgres");
		dataSource.setPassword("postgres1");
		/* The following line disables autocommit for connections
		 * returned by this DataSource. This allows us to rollback
		 * any changes after each test */
		dataSource.setAutoCommit(false);
	}

	/* After all tests have finished running, this method will close the DataSource */
	@AfterClass
	public static void closeDataSource() throws SQLException {
		dataSource.destroy();
	}

	/* After each test, we rollback any changes that were made to the database so that
	 * everything is clean for the next test */
	@After
	public void rollback() throws SQLException {
		dataSource.getConnection().rollback();
	}

	/* This method provides access to the DataSource for subclasses so that
	 * they can instantiate a DAO for testing */
	public DataSource getDataSource() {
		return dataSource;
	}
	
	
	@Before
	public void setup() {
		String sqlInsertNewPathway = "INSERT INTO pathway (topic, message, readinglink, readingtitle, videolink, videotitle ) VALUES (?,?,?,?,?,?)";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		jdbcTemplate.update(sqlInsertNewPathway, TEST_TOPIC, TEST_MESSAGE, TEST_READINGLINK, TEST_READINGTITLE, TEST_VIDEOLINK, TEST_VIDEOTITLE ) ;
		dao = new JdbcPathwayDao(dataSource);
		
	}
	
	@Test
	public void getAllPathway() {
		List<Pathway> pathwayTest = dao.getAllPathway();
		for(Pathway pathway : pathwayTest){
			if(pathway.getTopic().equals(TEST_TOPIC))
			assertEquals(TEST_TOPIC, pathway.getTopic());
			
		}
	}
	
	
	@Test 
	public void getCurriculumByTopicName() {
		Pathway pathway = dao.getPathWayByName(TEST_TOPIC);
		
		assertEquals(pathway.getTopic(), TEST_TOPIC);
		
	}
  
}

