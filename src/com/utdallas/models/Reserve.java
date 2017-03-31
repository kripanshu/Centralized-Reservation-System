package com.utdallas.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.utdallas.classes.Facility;

public class Reserve {
	
	private Connection connection = null;
	private Statement statement = null;
	
	public void reserve(String department, String facilityId, String id,String userName){
		DBConnector dbConnector = new DBConnector();
		connection = dbConnector.getDBConnector();
		
		try {
			statement = connection.createStatement();

			statement.execute("UPDATE "+department+"_facility_"+facilityId+" SET Reserved='1', Username='"+userName+"' WHERE id='"+id+"';");
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
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	}
	
}
