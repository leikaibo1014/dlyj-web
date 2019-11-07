<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<meta charset="UTF-8">
		<title>新闻</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->	
	<meta charset="utf-8">
		<!--声明文档兼容模式，表示使用IE浏览器的最新模式-->
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

		<!-- 引入Bootstrap核心样式文件 -->
	
		<!--	<link href="css/bootstrap.min.css" rel="stylesheet">-->
		<link href="${pageContext.request.contextPath }/css/bootstrap.css" rel="stylesheet">
		<!-- 引入jQuery核心js文件 -->
		<script src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
		<!-- 引入BootStrap核心js文件 -->
		<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
		
		
		<meta name="Author" content="chenge" />
		<link rel="shortcut icon" href="" />
		<link href="${pageContext.request.contextPath }/css/common.css" tppabs="../css/common.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath }/css/index.css" tppabs="../css/index.css" rel="stylesheet" type="text/css" />
		<script src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js" ></script>
		<script src="${pageContext.request.contextPath }/js/jquery.SuperSlide.2.1.1.js" ></script>
		<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
		
	</head>
    <body>
        

<jsp:include   page="../../header.jsp" flush="true"/>

	<div class="banner_top"></div>
	<div class="clear"></div>
	        <div class="loc"><div class="locname">&nbsp;&nbsp;当前位置：<a href="" tppabs="">首页</a>&nbsp;&gt;&nbsp;<a href="news_newslist.htm" >新闻动态</a>&nbsp;&gt;&nbsp;<a href="news_newslist.htm" >项目新闻</a></div></div>
	
	        <input type="hidden" name="newsId" value="1080" id="newsId"/>
	        <div class="news_body">
	            <h1>${newsTitle }</h1>
	            <span class="date1">发布时间：201-01-20 00:00:00</span>
	
	                <div class="news_cc">
	                <p class="MsoNormal" style="text-align:left;text-indent:26.25pt;">
							${newsDetail }
	                </p>
			</div>
			</div>



        
<div class="clear"></div>

<!-- 引入footer.jsp -->
			<jsp:include page="/footer.jsp"></jsp:include>

<!-- <div class="container" align="center" style="background-color: ; width: 1190px; height: 100px;">
					<a href="#" style="color: black;">关于我们</a>
					
					<a href="#" style="color: black;">法律声明 </a>
					<a href="#" style="color: black;">友情链接</a>
					<span>
						<font color="black">copyright@2018-2019 版权所有</font>
						<font color="black">郑州大学--by河南农村队列研究</font>
					</span>
					
</div> -->


    </body>
</html>



