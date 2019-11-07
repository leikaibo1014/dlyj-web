<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'left.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="${pageContext.request.contextPath }/css/skin.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath }/js/prototype.lite.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/js/moo.fx.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/js/moo.fx.pack.js" type="text/javascript"></script>
  </head>
  
  <body>
    <table width="100%" height="600px" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB">
  <tr style="background-color: rgb(209, 229, 255)">
    <td width="182" valign="top">
    
    <div id="container" >
   		
 	<h1 class="type"><a href="javascript:void(0)">后台系统管理</a></h1>
   	 <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
      </div>
   
   
      <h1 class="type"><a href="javascript:void(0)">首页轮播图管理</a></h1>
      
      <div class="content">
      
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>
            	<img src="images/menu_topline.gif" width="182" height="5" />
            </td>
          </tr>
        </table>
        
        <ul class="MM"> 
             
	          <li><a href="admin/uploadImages.jsp" target="main">上传图片</a></li>
   
        </ul>
      </div>
      
      
      <h1 class="type"><a href="javascript:void(0)">新闻文档管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">

	          <li><a href="admin/newsTitleAdd.jsp" target="main">添加新闻标题</a></li>
	          <li><a href="admin/newsContentAdd.jsp" target="main">编辑新闻内容</a></li>
        </ul>
      </div>       
	    
	   
      
 </div>
      
        <script type="text/javascript">
			var contents = document.getElementsByClassName('content');
			var toggles = document.getElementsByClassName('type');
			var myAccordion = new fx.Accordion(
				toggles, contents, {opacity: true, duration: 400}
			);
			myAccordion.showThisHideOpen(contents[0]);
		</script>
		
        </td>
       </tr>
       </table>
  </body>
</html>
