package com.dlyj.web;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class newsDetailServlet
 */
@WebServlet("/newsDetail")
public class newsDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");		
		
		// 定义一个数组，存储从txt中读取的数据
		
		String idname = request.getParameter("idname");
		System.out.println(idname);
		
		String newsDetail ="";
		String newsTitle = "";
		String basename = "news_" + idname + ".txt";
		String pathname = this.getServletContext().getRealPath("/txt/newsDetail/"+basename);
		String encoding = "UTF-8";
		File file = new File(pathname);	
		System.out.println(file);
		BufferedReader br = null;
	    
        try {
            InputStreamReader reader = new InputStreamReader(new FileInputStream(file));
             br = new BufferedReader(reader);
             String lineTxt = "";
             newsTitle = br.readLine();
             while ((lineTxt = br.readLine()) != newsTitle)  {
            	 newsDetail += lineTxt;
            	 while((lineTxt = br.readLine()) != null){
            		 newsDetail += lineTxt;
            	 }
            	 break;
            	 
             }
             
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            if(br != null){
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

        }
       
        request.setAttribute("newsDetail", newsDetail);	
        request.setAttribute("newsTitle", newsTitle);	
		
		request.getRequestDispatcher("/jsp/news/newsDetail.jsp").forward(request, response);				
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}


}
