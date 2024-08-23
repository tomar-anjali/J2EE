package org.jsp.UserMngSys;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet(urlPatterns = "/updaterec")
@WebServlet(urlPatterns = "/updaterec")

public class UpdateRecServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		long phone=Long.parseLong(req.getParameter("phone"));
		String address=req.getParameter("address");
		String qry="update usertab set name=?,email=?,phone=?,address=? where id=?";
		try {
			Class.forName("org.postgresql.Driver");
			Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Users", "postgres", "root");
			PreparedStatement ps=con.prepareStatement(qry);
			ps.setInt(5, id);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setLong(3, phone);
			ps.setString(4, address);
			ps.executeUpdate();
			
			ps.close();
			con.close();
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		try {
			Class.forName("org.postgresql.Driver");
			Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Users", "postgres", "root");
			PreparedStatement ps=con.prepareStatement("select * from usertab");
			ResultSet rs=ps.executeQuery();
			
			req.setAttribute("res", rs);
			RequestDispatcher rd=req.getRequestDispatcher("view.jsp");
			rd.forward(req, resp);
			
			ps.close();
			con.close();
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}
}
