/**
 * OOP 2018
 * 
 * @author Udara Samaratunge  Department of Software Engineering, SLIIT 
 * 
 * @version 1.0
 * Copyright: SLIIT, All rights reserved
 * 
 */
package com.oop.model;


public class Video {

	private String videoID;
	
	private String name;

	private String filmCategory;


	private String quantity;
	
	private String subtitleLanguage;
	

	public String getVideoID() {
		return videoID;
	}

	public void setVideoID(String videoID) {
		this.videoID = videoID;
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFilmCategory() {
		return filmCategory;
	}

	public void setFilmCategory(String filmCategory) {
		this.filmCategory = filmCategory;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getSubtitleLanguage() {
		return subtitleLanguage;
	}

	public void setSubtitleLanguage(String subtitleLanguage) {
		this.subtitleLanguage = subtitleLanguage;
	}
	

	

	
}
