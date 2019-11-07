package com.dlyj.web.admin;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class adminUpdateNewsTitleServlet
 */
@WebServlet("/updateNewsTitleServlet")
public class adminUpdateNewsTitleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");		

		//String idname = request.getParameter("idname");
		String path =  "E:\\CodeSpace\\EcipseCode\\dlyj\\WebContent\\txt\\news2.txt";
		//String path = this.getServletContext().getRealPath("/txt/news2.txt");
		String content = "第二个标题";
		writeFile(path,content);
	
	
		request.getRequestDispatcher("/jsp/news/newsDetail.jsp").forward(request, response);	
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}


    public static void writeFile(String fileFullPath,String content) {
        FileOutputStream fos = null;
        try {
            //true不覆盖已有内容
            fos = new FileOutputStream(fileFullPath, true);  
            //写入
            fos.write(content.getBytes());
            // 写入一个换行
            fos.write("\r\n".getBytes());
                       
        } catch (IOException e) {
            e.printStackTrace();
        }finally{
            if(fos != null){
                try {
                    fos.flush();
                    fos.close(); 
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
	
	

}
