package com.servlet.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.servlet.dbConnection.MySQLConnection;
import com.servlet.entity.Employee;

public class EmployeeDao {
	
	

	    // वरून 'Connection con = ...' ही लाईन काढून टाका

	    public String saveEmployee(Employee employee) {
	        String sql = "insert into employee values(?,?,?,?,?,?)";
	        
	        // मेथडच्या आत कनेक्शन मिळवा आणि ते null नाही ना याची खात्री करा
	        Connection con = MySQLConnection.createConnection();
	        
	        if (con == null) {
	            return "Error: Database Connection Failed!";
	        }

	        try {
	            PreparedStatement pst = con.prepareStatement(sql);
	            
	            pst.setString(1, employee.getName());
	            pst.setString(2, employee.getEmail());
	            pst.setString(3, employee.getPassword());
	            pst.setString(4, employee.getDepartment());
	            pst.setString(5, employee.getGender());
	            pst.setString(6, employee.getAddress());
	            
	            int x = pst.executeUpdate();
	            
	            // कनेक्शन काम संपल्यावर बंद करा
	            con.close(); 
	            
	            if (x > 0) {
	                return "Employee Registered Successfully";
	            }
	            
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        
	        return "Registration Failed";
	    }
	    
	    
	    
	    
	    
	    public ResultSet loginEmployee(String email, String password) {
	    	
	    	Connection con = MySQLConnection.createConnection();
	    	
	      	ResultSet rs = null;
	    	
	    
	        String sql = "select * from employee where email=? and password=?";

	        try {
	            PreparedStatement pst = con.prepareStatement(sql);

	            pst.setString(1, email);
	            pst.setString(2, password);

	            rs = pst.executeQuery();

	            

	        } catch (Exception a) {
	            System.out.println(a.getMessage());
	        }
	        
	        return rs;
	    }
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	
}
