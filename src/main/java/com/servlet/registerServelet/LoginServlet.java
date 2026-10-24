package com.servlet.registerServelet;

import java.io.IOException;
import java.security.Provider.Service;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.servlet.service.EmployeeService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/process-login")
public class LoginServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse reqs) throws ServletException, IOException {
		
		String email = req.getParameter("email");
		
		String password = req.getParameter("password");
		
		EmployeeService service = new EmployeeService();
		
		ResultSet rs = service.login(email,password);
		
		try {
			if(rs.next())
			{
				req.setAttribute("email", rs.getString("email"));
				req.setAttribute("name", rs.getString("name"));
				req.setAttribute("department", rs.getString("department"));
				req.setAttribute("gender", rs.getString("gender"));
				req.setAttribute("address", rs.getString("address"));
				
				
				req.getRequestDispatcher("dashboard.jsp").forward(req, reqs);
			}
			else {
				
				req.setAttribute("errormsg","Invalid email or password");
				req.getRequestDispatcher("login.jsp").include(req, reqs);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
