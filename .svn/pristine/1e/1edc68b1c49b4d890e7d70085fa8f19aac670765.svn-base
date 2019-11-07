package com.dlyj.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.*;
import javax.servlet.http.*;
import com.sun.image.codec.jpeg.*;//sun公司仅提供了jpg图片文件的编码api
import javax.imageio.stream.*;
import java.awt.*;
import java.awt.image.BufferedImage;

/**
 * Servlet implementation class readHomePageImage
 */
@WebServlet(name = "readHomePageImageServlet", urlPatterns = { "/readHomePageImage" })
public class readHomePageImage extends HttpServlet {
	
	//主页加载时，准备返回主页需要的数据--图片路径
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	try {
		getHomePageImage(request, response);
		getHomePagenews(request, response);
	} catch (Exception e) {
		e.printStackTrace();
	}	
	getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
	
 }

	//得到主页图片的路径方法，在上面doPost方法中调用
	public void getHomePageImage(HttpServletRequest request, HttpServletResponse response) throws Exception  {
		request.setCharacterEncoding("UTF-8");
		String path = this.getServletContext().getRealPath("/uploadImages/shouye/");
		//String path =  "E:\\CodeSpace\\EcipseCode\\dlyj\\WebContent\\uploadImages\\shouye\\";
		File folder = new File(path);
		
		File temp[] = folder.listFiles();
		String[] homePagePicNames = new String[temp.length];
		for(int i=0;i<temp.length;i++) {
			homePagePicNames[i] = temp[i].getName();
		}
		request.setAttribute("homePagePicNames", homePagePicNames);
		
		String picpath =null;
		String[] homePagePicpath = new String[temp.length];
		for(int i=0;i<temp.length;i++) {
			//picpath = this.getServletContext().getRealPath("\\uploadImages\\shouye\\")+"\\"+homePagePicNames[i];
			picpath = request.getContextPath()+"\\"+"uploadImages"+"\\"+"shouye"+"\\"+homePagePicNames[i];
			homePagePicpath[i] = picpath;
		}			
		request.setAttribute("homePagePicpath", homePagePicpath);
	}

	//得到主页新闻列表的方法，在上面doPost方法中调用
		public void getHomePagenews(HttpServletRequest request, HttpServletResponse response) throws Exception{
			
			request.setCharacterEncoding("UTF-8");					
			// 定义一个数组，存储从txt中读取的数据
			List<String> list=new ArrayList<String>();
			
			//读取文件
			String s = "";				
			String pathname = this.getServletContext().getRealPath("/txt/news.txt");
			String encoding = "UTF-8";
		    File file = new File(pathname);	    
		  //  System.out.println(file);
		    int i=0;
		    BufferedReader br = null;
	        try {
	            InputStreamReader reader = new InputStreamReader(new FileInputStream(file));
	             br = new BufferedReader(reader);
	             String lineTxt = "";
	             while ((lineTxt = br.readLine()) != null && i < 8) {                
	                 s += lineTxt + "\r\n";
	                 i = i + 1;
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
	       request.setAttribute("newsnames",newsArray);
			
		}


protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request, response);
}


}
	