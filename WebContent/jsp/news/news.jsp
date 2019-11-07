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
        <div class="loc"><div class="locname"> &nbsp;&nbsp;当前位置：<a href="" tppabs="">首页</a>&nbsp;&gt;&nbsp;<a href="news_newslist.htm" tppabs="">新闻动态</a>&nbsp;&gt;&nbsp;项目新闻</div></div>
        <div class="common_table">
            <div class="hd">
                <ul>
                    <li class="on">全部新闻<em></em></li>

                </ul>
            </div>
            <div class="bd">
                <ul class="xwcc">
                    <form id="news_newslist" name="news_newslist" action=""  method="post">
                        
                   <c:forEach items="${names}" var="temp" varStatus="status" >
                            <li>
                            	<span class="date">2019-01-22</span>
                            	<a href="${pageContext.request.contextPath }/newsDetail?idname=${status.index + 1 }"  target="_blank"><img src="<%=request.getContextPath()%>/images/inc2.jpg" />
                            		${temp } 
                            	</a>
                            </li>
                            
                    </c:forEach>            
      
                            </form>
   
					<div id=PageSelectorBar>
						    <div id=PageSelectorMemo>
								        页次：1/1页 &nbsp;
								        每页显示：10条 &nbsp;
								 	  总条数: ${newsNumber }
						    </div>
					    <div id=PageSelectorSelectorArea>
					
					        <a href="javascript: gotoPage(1)" title="首页" style="cursor: hand;">
					            <img src="<%=request.getContextPath()%>/images/pageselect/firstPage.png" />
					        </a>
					   
					                <span class="PageSelectorSelected">1</span>
					             
					                <span class="PageSelectorNum" style="cursor: hand;" onClick="">2</span>
					
					                <span class="PageSelectorNum" style="cursor: hand;" onClick="">3</span>
					
					                <span class="PageSelectorNum" style="cursor: hand;" onClick="">4</span>
					
					                <span class="PageSelectorNum" style="cursor: hand;" onClick="">5</span>
					
					                <span class="PageSelectorNum" style="cursor: hand;" onClick="">6</span>
					
					                <span class="PageSelectorNum" style="cursor: hand;" onClick="">7</span>
					
					                <span class="PageSelectorNum" style="cursor: hand;" onClick="">8</span>
					
					                <span class="PageSelectorNum" style="cursor: hand;" onClick="">9</span>
					
					                <span class="PageSelectorNum" style="cursor: hand;" onClick="">10</span>
					
					        <a href="" title="尾页" style="cursor: hand;">
					            <img src="<%=request.getContextPath()%>/images/pageselect/lastPage.png" />
					        </a>
					
					      
					        <script type="text/javascript">
					            $("#_pn").val("1");
					        </script>
					
					    </div>
					</div>



				<script type="text/javascript">
				    function gotoPage(pageNum) {
				
				        $(document.forms[0]).append("<input type='hidden' name='pageNum' value='" + pageNum + "'>");
				        document.forms[0].submit();
				    }
				</script>
         </ul>

    </div>
                <script type="text/javascript">
                    jQuery(".common_table").slide({effect: "top", trigger: "click"});
                </script>	
</div>

        
<div class="clear"></div>
<div class="container" align="center" style="background-color: ; width: 1190px; height: 100px;">
					<a href="#" style="color: black;">关于我们</a>
					
					<a href="#" style="color: black;">法律声明 </a>
					<a href="#" style="color: black;">友情链接</a>
					<span>
						<font color="black">copyright@2018-2019 版权所有</font>
						<font color="black">郑州大学--by河南农村队列研究</font>
					</span>
					
		</div>
    </body>
</html>