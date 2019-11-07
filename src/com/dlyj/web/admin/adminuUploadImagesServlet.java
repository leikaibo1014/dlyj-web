package com.dlyj.web.admin;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


/**
 * Servlet implementation class adminuUploadImagesServlet
 */
@WebServlet("/adminuUploadImagesServlet")
public class adminuUploadImagesServlet extends HttpServlet {
	
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");		
	
	FileItemFactory factory = new DiskFileItemFactory();
	 
    // 创建文件上传处理器
    ServletFileUpload upload = new ServletFileUpload(factory);

    // 开始解析请求信息
    List items = null;
    try {
        items = upload.parseRequest(request);
    }
    catch (FileUploadException e) {
        e.printStackTrace();
    }

    // 对所有请求信息进行判断
    Iterator iter = items.iterator();
    while (iter.hasNext()) {
        FileItem item = (FileItem) iter.next();
        // 信息为普通的格式
        if (item.isFormField()) {
            String fieldName = item.getFieldName();
            String value = item.getString();
            request.setAttribute(fieldName, value);
        }
        // 信息为文件格式
        else {
            String fileName = item.getName();
            System.out.println(fileName);
            int index = fileName.lastIndexOf("\\");
            fileName = fileName.substring(index + 1);
            request.setAttribute("realFileName", fileName);

            //String basePath = request.getRealPath("/images");
            
            String basePath = this.getServletContext().getRealPath("/uploadImages/shouye");
            //String basePath =  "E:\\CodeSpace\\EcipseCode\\dlyj\\WebContent\\uploadImages\\shouye";
            
            File file = new File(basePath, fileName);
            try {
                item.write(file);
            }
            catch (Exception e) {
                e.printStackTrace();
            }
        }
        request.setAttribute("msg","文件上传成功!");
        getServletContext().getRequestDispatcher("/admin/uploadImages.jsp").forward(request, response);
    }
}

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request, response);
}


}
	