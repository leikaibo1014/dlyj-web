<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>河南农村队列研究后台管理平台</title>
  <meta name="description" content="particles.js is a lightweight JavaScript library for creating particles.">
  <meta name="author" content="Vincent Garreau" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath }/css/adminlogin/style.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/adminlogin/loginstyle.css"/>
</head>
<body>

<div id="particles-js">		
 <div class="login">
		
			<div class="login-top"><center>
				河南农村队列研究后台管理平台
			</div>
			
			
		<form id="login" method="post" action="${pageContext.request.contextPath }/adminLogin">
			
			<div class="login-center clearfix">
				
				<div class="login-center-img"><img src="<%=request.getContextPath()%>/img/username.png" />
					
				</div>
				<div style="float: left;width: 50px; margin-top: 8px;margin-left: auto ;font-size: 15px;">用户名:</div>
				<div class="login-center-input">
				<input type="text" id="name" name="username" value="" placeholder="请输入用户名"  />
					
				</div>
			</div>
			
			<div class="login-center clearfix">
				<div class="login-center-img"><img src="<%=request.getContextPath()%>/img/password.png"/>
					
				</div>
				<div style="float: left;width: 50px; margin-top: 8px;margin-left: auto ;font-size: 15px;">密&nbsp;&nbsp;码:</div>
				<div class="login-center-input">
					<input type="password" id="password" name="password" value="" placeholder="请输入密码"  />
					
				</div>
			</div>
			<div style="margin-left: 200px;">
				<input type="submit" width="100" value="登录" name="submit"
									style="background: dodgerblue ;no-repeat scroll 0 0 rgba(0, 0, 0, 0); height: 35px; width: 150px; color: white;">
			</div>
			
		</form>
		
			
			<div class="login-top1"><center>
				郑州大学-公共卫生学院
			</div>
	</div>
		
	
</div>

</body>
</html>