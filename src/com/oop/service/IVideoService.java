

package com.oop.service;

import com.oop.model.Video;

import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactoryConfigurationError;


public interface IVideoService {

	/** Initialize logger */
	public static final Logger log = Logger.getLogger(IVideoService.class.getName());


	/**
	 * Add employees for employee table
	 * @param employee
	 */
	public void addVideo(Video video);

	/**
	 * Get a particular Employee
	 * 
	 * @param empoyeeID
	 * @return Employee
	 */
	public Video getVideoByID(String videoID);
	
	/**
	 * Get all list of employees
	 * 
	 * @return ArrayList<Employee>
	 */
	public ArrayList<Video> getVideos();
	
	/**
	 * Update existing employee
	 * @param employeeID
	 * @param employee
	 * 
	 * @return
	 */
	public Video updateVideo(String videoID, Video video);

	/**
	 * Remove existing employee
	 * 
	 * @param employeeID
	 */
	public void removeVideo(String videoID);

}
