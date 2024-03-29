package com.user.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.User;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;

import javax.servlet.http.HttpSession;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			UserDAOImpl dao=new UserDAOImpl(DBConnect.getConn());
			HttpSession session=(HttpSession) req.getSession();
			
			
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			System.out.println(email+" "+password);
			
			if("admin@gmail.com".equals(email)&& "admin".equals(password))
			{
				User us=(User) dao.login(email, password);
				session.setAttribute("userobj", us);
				resp.sendRedirect("admin/home.jsp");
			}else {
				
				User us=(User) dao.login(email, password);
				if(us!=null)
				{
					session.setAttribute("userobj", us);
					resp.sendRedirect("home.jsp");
				}else {
					session.setAttribute("failedMsg", "Email & Password Invalid");
					resp.sendRedirect("login.jsp");
				}
				resp.sendRedirect("home.jsp");
			}
			
		}catch (Exception e) {
			e.printStackTrace();
	}
	
	
}
}
