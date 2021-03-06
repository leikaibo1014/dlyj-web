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
 * Servlet implementation class readerNewsServlet
 */

public class readerNewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");		
		
		// 定义一个数组，存储从txt中读取的数据
		List<String> list=new ArrayList<String>();
		
		//读取文件
		String s = "";				
		String pathname = this.getServletContext().getRealPath("/txt/news.txt");
		String encoding = "UTF-8";
	    File file = new File(pathname);	    
	    //System.out.println(file);
	    
	    BufferedReader br = null;
        try {
            InputStreamReader reader = new InputStreamReader(new FileInputStream(file));
             br = new BufferedReader(reader);
             String lineTxt = "";
             while ((lineTxt = br.readLine()) != null) {                
                 s += lineTxt + "\r\n";
                 list.add(lineTxt);
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
	   
	   String[] newsArray=new String[list.size()];
   		list.toArray(newsArray);
       
       String newsNumber = Integer.toString(newsArray.length);
       
       request.setAttribute("names",newsArray);
       request.setAttribute("newsNumber",newsNumber);
		
		request.getRequestDispatcher("/jsp/news/news.jsp").forward(request, response);				
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}


}

