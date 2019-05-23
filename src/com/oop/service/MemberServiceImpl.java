package com.oop.service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;




import com.oop.model.Video;
import com.oop.model.Member;
import com.oop.util.CommonConstants;
import com.oop.util.CommonUtil;
import com.oop.util.DBConnectionUtil;
import com.oop.util.QueryUtil;

public class MemberServiceImpl implements IMemberService   {

	
	
	
	public static final Logger log = Logger.getLogger(MemberServiceImpl.class.getName());

	private static Connection connection;

	private static Statement statement;

	static{
		//create table or drop if exist
		createMemberTable();
	}

	private PreparedStatement preparedStatement;
	public static void createMemberTable() {

		try {
			connection = DBConnectionUtil.getDBConnection();
			statement = connection.createStatement();
			// Drop table if already exists and as per SQL query available in
			// Query.xml
			statement.executeUpdate(QueryUtil.queryMemByID(CommonConstants.QUERY_ID_DROP_MEMBER_TABLE));
			// Create new employees table as per SQL query available in
			// Query.xml
			statement.executeUpdate(QueryUtil.queryMemByID(CommonConstants.QUERY_ID_CREATE_MEMBER_TABLE));

		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		}
	}

	
	@Override
	public void addMember(Member member) {

		String memberID = CommonUtil.generateMemberIDs(getMemberIDs());
		
		try {
			connection = DBConnectionUtil.getDBConnection();
			/*
			 * Query is available in EmployeeQuery.xml file and use
			 * insert_employee key to extract value of it
			 */
			preparedStatement = connection.prepareStatement(QueryUtil.queryMemByID(CommonConstants.QUERY_ID_INSERT_MEMBER_));
			connection.setAutoCommit(false);
						//Generate employee IDs
			member.setMemberID(memberID);
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, member.getMemberID());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, member.getFirstName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, member.getLastName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, member.getAddress());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FIVE, member.getCity());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_SIX, member.getPhoneNo());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_SEVEN, member.getEmail());


			// Add employee
			preparedStatement.execute();
			connection.commit();

		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of
			 * transaction
			 */
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
	}

	/**
	 * Employee details can be retrieved based on the provided employee ID
	 * 
	 * @param employeeID
	 *            - Employee details are filtered based on the ID
	 * 
	 * @see #actionOnEmployee()
	 */
	@Override
	public Member getMemberByID(String memberID) {

		return actionOnMember(memberID).get(0);
	}
	
	/**
	 * Get all list of employees
	 * 
	 * @return ArrayList<Employee> 
	 * 						- Array of employee list will be return
	 * 
	 * @see #actionOnEmployee()
	 */
	@Override
	public ArrayList<Member> getMembers() {
		
		return actionOnMember(null);
	}

		@Override
	public void removeMember(String memberID) {

		// Before deleting check whether employee ID is available
		if (memberID != null && !memberID.isEmpty()) {
			/*
			 * Remove employee query will be retrieved from EmployeeQuery.xml
			 */
			try {
				connection = DBConnectionUtil.getDBConnection();
				preparedStatement = connection
						.prepareStatement(QueryUtil.queryMemByID(CommonConstants.QUERY_ID_REMOVE_MEMBER));
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_MEMBER_ONE, memberID);
				preparedStatement.executeUpdate();
			} catch (SQLException | SAXException | IOException | ParserConfigurationException
					| ClassNotFoundException e) {
				log.log(Level.SEVERE, e.getMessage());
			} finally {
				/*
				 * Close prepared statement and database connectivity at the end
				 * of transaction
				 */
				try {
					if (preparedStatement != null) {
						preparedStatement.close();
					}
					if (connection != null) {
						connection.close();
					}
				} catch (SQLException e) {
					log.log(Level.SEVERE, e.getMessage());
				}
			}
		}
	}

	
	
		private ArrayList<Member> actionOnMember(String memberID) {

			ArrayList<Member> memberList = new ArrayList<Member>();
			try {
				connection = DBConnectionUtil.getDBConnection();
				/*
				 * Before fetching employee it checks whether employee ID is
				 * available
				 */
				if (memberID != null && !memberID.isEmpty()) {
					/*
					 * Get employee by ID query will be retrieved from
					 * EmployeeQuery.xml
					 */
					preparedStatement = connection
							.prepareStatement(QueryUtil.queryMemByID(CommonConstants.QUERY_ID_GET_MEMBER));
					preparedStatement.setString(CommonConstants.COLUMN_INDEX_MEMBER_ONE, memberID);
				}
				/*
				 * If employee ID is not provided for get employee option it display
				 * all employees
				 */
				else {
					preparedStatement = connection
							.prepareStatement(QueryUtil.queryMemByID(CommonConstants.QUERY_ID_ALL_MEMBERS));
				}
				ResultSet resultSet = preparedStatement.executeQuery();

				while (resultSet.next()) {
					Member member  = new Member();
					member.setMemberID(resultSet.getString(CommonConstants.COLUMN_INDEX_MEMBER_ONE));
					member.setFirstName(resultSet.getString(CommonConstants.COLUMN_INDEX_MEMBER_TWO));
					member.setLastName(resultSet.getString(CommonConstants.COLUMN_INDEX_MEMBER_THREE));
					member.setAddress(resultSet.getString(CommonConstants.COLUMN_INDEX_MEMBER_FOUR));
					member.setCity(resultSet.getString(CommonConstants.COLUMN_INDEX_MEMBER_FIVE));
					member.setEmail(resultSet.getString(CommonConstants.COLUMN_INDEX_MEMBER_SIX));
					member.setPhoneNo(resultSet.getString(CommonConstants.COLUMN_INDEX_MEMBER_SEVEN));
					
					memberList.add(member);
				}

			} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
				log.log(Level.SEVERE, e.getMessage());
			} finally {
				/*
				 * Close prepared statement and database connectivity at the end of
				 * transaction
				 */
				try {
					if (preparedStatement != null) {
						preparedStatement.close();
					}
					if (connection != null) {
						connection.close();
					}
				} catch (SQLException e) {
					log.log(Level.SEVERE, e.getMessage());
				}
			}
			return memberList;
		}
	/**
	 * Get the updated employee
	 * 
	 * @param employeeID
	 *            ID of the employee to remove or select from the list
	 * 
	 * @return return the Employee object
	 * 
	 */
	@Override
	public Member updateMember(String memberID, Member member) {

		/*
		 * Before fetching employee it checks whether employee ID is available
		 */
		if (memberID != null && !memberID.isEmpty()) {
			/*
			 * Update employee query will be retrieved from EmployeeQuery.xml
			 */
			try {
				connection = DBConnectionUtil.getDBConnection();
				preparedStatement = connection
						.prepareStatement(QueryUtil.queryMemByID(CommonConstants.QUERY_ID_UPDATE_MEMBER));
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_MEMBER_ONE, member.getFirstName());
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_MEMBER_TWO, member.getLastName());
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_MEMBER_THREE, member.getAddress());
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_MEMBER_FOUR, member.getCity());
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_MEMBER_FIVE, member.getEmail());
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_MEMBER_SIX, member.getPhoneNo());
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_MEMBER_SEVEN, member.getMemberID());
				
				preparedStatement.executeUpdate();

			} catch (SQLException | SAXException | IOException | ParserConfigurationException
					| ClassNotFoundException e) {
				log.log(Level.SEVERE, e.getMessage());
			} finally {
				/*
				 * Close prepared statement and database connectivity at the end
				 * of transaction
				 */
				try {
					if (preparedStatement != null) {
						preparedStatement.close();
					}
					if (connection != null) {
						connection.close();
					}
				} catch (SQLException e) {
					log.log(Level.SEVERE, e.getMessage());
				}
			}
		}
		// Get the updated employee
		return getMemberByID(memberID);
	}
	
	/**
	 *
	 * @return ArrayList<String> Array of employee id list will be return
	 * 
	 * @throws SQLException
	 *             - Thrown when database access error occurs or this method is
	 *             called on a closed connection
	 * @throws ClassNotFoundException
	 *             - Thrown when an application tries to load in a class through
	 *             its string name using
	 * @throws SAXException
	 *             - Encapsulate a general SAX error or warning
	 * @throws IOException
	 *             - Exception produced by failed or interrupted I/O operations.
	 * @throws ParserConfigurationException
	 *             - Indicates a serious configuration error.
	 * @throws NullPointerException
	 *             - Service is not available
	 */
private ArrayList<String> getMemberIDs(){
		
		ArrayList<String> arrayList = new ArrayList<String>();
		/*
		 * List of employee IDs will be retrieved from EmployeeQuery.xml
		 */
		try {
			connection = DBConnectionUtil.getDBConnection();
			preparedStatement = connection
					.prepareStatement(QueryUtil.queryMemByID(CommonConstants.QUERY_ID_GET_MEMBER_IDS));
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				arrayList.add(resultSet.getString(CommonConstants.COLUMN_INDEX_MEMBER_ONE));
			}
		} catch (SQLException | SAXException | IOException | ParserConfigurationException
				| ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of
			 * transaction
			 */
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		return arrayList;
	}
	
}
