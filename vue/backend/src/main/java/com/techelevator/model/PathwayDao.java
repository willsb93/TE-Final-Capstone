package com.techelevator.model;

import java.util.List;

public interface PathwayDao {

	public List<Pathway> getAllPathway();
	
	public Pathway getPathWayByName(String pathwayName);
}
  