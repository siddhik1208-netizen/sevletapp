package com.servlet.registerServelet;

import java.io.IOException;

import com.servlet.entity.Employee;
import com.servlet.service.EmployeeService;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/process-registration")
public class RegisterServelet extends HttpServlet{
	
	//service
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		resp.setContentType("text/html");
//		resp.getWriter().print("<h1 style='color:blue'>registration success..</h1>");
//		
		
		 String name = req.getParameter("name");
		 
		 String email = req.getParameter("email");
		 
		 String password = req.getParameter("password");
		 
		 String department = req.getParameter("department");
		 
		 String gender = req.getParameter("gender");
		 
		 String address = req.getParameter("address");
		 
		 Employee employee = new Employee(name , email , password , department , gender , address);
		 
		 EmployeeService service = new EmployeeService();
		 
		 String msg = service.saveEmp(employee);
		 
		 req.setAttribute("successMsg", msg);
		 
		 req.getRequestDispatcher("register.jsp").include(req, resp);
		 
			}

}
