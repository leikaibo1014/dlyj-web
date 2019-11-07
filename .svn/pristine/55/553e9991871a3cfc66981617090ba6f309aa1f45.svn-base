package com.dlyj.web.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class adminLoginServlet
 */
@WebServlet("/adminLogin")
public class adminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	HttpSession session = request.getSession();

	//获得输入的用户名和密码
	String username = request.getParameter("username");
	String password = request.getParameter("password");

	System.out.println(username+password);
	
	if(username.equals("admin") && password.equals("admin")){
		//将username password存到session中
		session.setAttribute("username", username);
		session.setAttribute("password", password);
		//重定向到首页
		response.sendRedirect(request.getContextPath()+"/admin/adminindex.jsp");
	}else{
		request.setAttribute("loginError", "用户名或密码错误");
		request.getRequestDispatcher("/admin/adminlogin.jsp").forward(request, response);
	}
	        
    
}

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request, response);
}


}