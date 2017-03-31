package com.utdallas.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.utdallas.classes.Facility;

public class GetFacilities {

	private ArrayList<Facility> FacilityList = new ArrayList<>();
	private Connection connection = null;
	private Statement statement = null;
	private ResultSet resultSet = null;
	
	public ArrayList<Facility> getFacilityList (String departmentName){
		DBConnector dbConnector = new DBConnector();
		connection = dbConnector.getDBConnector();
		
		try {
			statement = connection.createStatement();
			resultSet = statement.executeQuery("select * from "+departmentName+"_facility;");
			
			while(resultSet.next()){
				Facility temp = new Facility();
				String facilityId = resultSet.getString(1);
				String facilityName = resultSet.getString(2);
				String dpt = resultSet.getString(3);
				String dptId = resultSet.getString(4);
				String restrictionLevel = resultSet.getString(5);
				String description = resultSet.getString(6);
				temp.setFacility(facilityName, facilityId, dpt, dptId, restrictionLevel,description);
				FacilityList.add(temp);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		finally {
			try {
				if(connection!=null){
					connection.close();
					connection=null;
				}
				if(statement != null){
					statement.close();
					statement=null;
				}
				if(resultSet != null){
					resultSet.close();
					resultSet=null;
				}
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		
		System.out.println("department list size: " +FacilityList.size());
		
		return this.FacilityList;
	}
	
}
