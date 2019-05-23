package com.oop.service;

import java.util.ArrayList;
import java.util.logging.Logger;


import com.oop.model.Member;

public interface IMemberService {
	

	public static final Logger log = Logger.getLogger(IMemberService.class.getName());



	public void addMember(Member member);


	public Member getMemberByID(String memberID);
	
	
	public ArrayList<Member> getMembers();
	
	
	public Member updateMember(String memberID, Member member);

	
	public void removeMember(String memberID);

}
