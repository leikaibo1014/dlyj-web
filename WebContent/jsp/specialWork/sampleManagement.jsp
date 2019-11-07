<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<meta charset="UTF-8">
		<title>样本管理</title>
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



<!--以下内容-->

	<div class="banner_top">
		
	</div>
	
	<div class="clear">
		
	</div>

	<!--当前位置展示层-->
    <div class="loc">
    	<div class="locname">&nbsp;&nbsp;当前位置：
    		<a href="" tppabs="">首页</a>&nbsp;&gt;&nbsp;专题工作&nbsp;&gt;&nbsp;
    		<a href="#" >样本管理</a>
    	</div>
    </div>
        
         <input type="hidden" name="id" value="2" id="id"/>
                
    <!--导航栏下当前位置下内容  主体内容  -->            
    <div class="common_table">
            <div class="hd">
                <ul>
                
                    <li><em></em>样本管理概述</li>
                    <li><em></em>样本管理</li>
                    <li><em></em>样本管理步骤</li>                                   
                        
            	</ul>
        	</div>
        	
        	<div class="bd">
        		<!--教师详细介绍-->
                        <ul>
                            <li>
                                <h1>概述</h1>
                                
                                <div class="contentb">
                                	<p style="text-indent: 0em;">
                                		<span style="FONT-SIZE: 20px; FONT-FAMILY: 宋体, SimSun">
                                			<!-- <strong>
                                				<img  style="height: 160px; width: 160px; float: right;margin-left: 15px;" border="0"  src=""  width="160" height="160"/>
                                			</strong> -->
                                		</span>
                                		
                                		<span style="font-family: 宋体, SimSun; font-size: 16px;">这是样本管理的内容展示界面。
                                		</span>
                                	</p>
                                </div>
                                
                            </li>
                        </ul>
                        
                        
                         <ul>
                            <li>
                                <h1>样本管理</h1>
                                
                                <div class="contentb">
                                	<p style="text-indent: 0em;">
                                		
                                		<span style="FONT-SIZE: 20px; FONT-FAMILY: 宋体, SimSun">
                                			<!-- <strong>
                                				<img  style="height: 160px; width: 160px; float: right;margin-left: 15px;" border="0"  src=""  width="160" height="160"/>
                                			</strong> -->
                                		</span>
                                		
                                		<span style="font-family: 宋体, SimSun; font-size: 16px;">这是样本管理介绍。
                                		</span>
                                	</p>
                                </div>
                                
                            </li>
                        </ul>
                        
                        
                        <ul>
                            <li>
                                <h1>样本管理3</h1>
                                
                                <div class="contentb">
                                	<p style="text-indent: 0em;">
                                		<span style="FONT-SIZE: 20px; FONT-FAMILY: 宋体, SimSun">
                                			<!-- <strong>
                                				<img  style="height: 160px; width: 160px; float: right;margin-left: 15px;" border="0"  src=""  width="160" height="160"/>
                                			</strong> -->
                                		</span>
                                		
                                		<span style="font-family: 宋体, SimSun; font-size: 16px;">这是样本管理的步骤。
                                		</span>
                                	</p>
                                </div>
                                
                            </li>
                        </ul>
              
        	</div>
        	
	</div>
        	
        	
        <script type="text/javascript">
            jQuery(".common_table").slide({effect: "fold", trigger: "click"});
        </script>
        
        
        <div class="clear">
        	
        </div>
        
        
	<!--底部声明-->
	
	<div class="footer">

	    <%@ include file="../../footer.jsp"%>
	</div>

    </body>
</html>