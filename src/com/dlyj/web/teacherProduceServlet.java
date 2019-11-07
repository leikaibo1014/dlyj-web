package com.dlyj.web;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;


public class teacherProduceServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");		
		//读取文件
		String content = null;
		
		
		String pathname = this.getServletContext().getRealPath("/txt/peopleProduce/teacher1.txt");
		
		String encoding = "UTF-8";
	    File file = new File(pathname);	    
	    System.out.println(file);
	    
	    BufferedReader br = null;
        try {
            InputStreamReader reader = new InputStreamReader(new FileInputStream(file));
             br = new BufferedReader(reader);
             String line = "";
             while ((line = br.readLine()) != null) {
                 content = content +line;
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
	    		                
        request.setAttribute("content", content);	
		
		request.getRequestDispatcher("/jsp/personProduce/personProduce.jsp").forward(request, response);				
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}


}

