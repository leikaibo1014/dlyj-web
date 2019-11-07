<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<meta charset="UTF-8">
		<title>河南农村队列研究</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<meta charset="utf-8">
		<!--声明文档兼容模式，表示使用IE浏览器的最新模式-->
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
	
		<link href="css/bootstrap.css" rel="stylesheet">
		<!-- 引入jQuery核心js文件 -->
		<script src="js/jquery-1.11.3.min.js"></script>
		<!-- 引入BootStrap核心js文件 -->
		<script src="js/bootstrap.js"></script>
		
		
		<meta name="Author" content="chenge" />
		<link rel="shortcut icon" href="" />
		<link href="css/common.css" tppabs="css/common.css" rel="stylesheet" type="text/css" />
		<link href="css/index.css" tppabs="css/index.css" rel="stylesheet" type="text/css" />
		<script src="js/jquery-1.11.3.min.js" ></script>
		<script src="js/jquery.SuperSlide.2.1.1.js" ></script>
		<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
		
	</head>
	
	
	<!--新闻列表-->
<style type="text/css">

#news{
				border: 0px solid black;
				height: 450px;
				width: 1000px;
				margin: auto;
			}
			#news1{
				border: 0px solid black;
				height: 398px;
				width: 600px;
				background: white;
				float: left;
			}
			
			
			#news2{
				border: 0px solid black;
				height: 398px;
				width: 399px;
				background: white;
				float: left;
			/*	background: url(img/map20150414.jpg);*/
				background-repeat: no-repeat;
			/*	background-position: center top;*/
				   background-size: cover;
			}


    *{
        padding: 0;
        margin: 0;
    }
    .box{
        width: 588px;
        height: 351px;
        border: 1px solid #d8d8d8;
        margin: 5px auto;
        overflow: hidden;
    }
    .box .line{
        width:560px;
        height: 50px;
        margin: 0 auto;
        border-bottom: 1px solid #ddd;
        line-height: 50px;

    }
    .box span{
        font: bold 20px '微软雅黑';
        color: #000;
        padding: 10px;
        border-bottom: 2px solid red;
     }
     .box #more{
        float: right;
        font-weight: bold;
        color: #9f9f9f;
        text-decoration: none;
     }
     .box #more:hover{
        color: red;
     }
     .box ul{
        list-style: none;
        width:560px;
        height: 238px;
        padding:0;
        margin: 7px auto 0;
    }
    .box ul li{
        height:36px;
        border-bottom: 1px solid #ddd;
        background: url(dot.gif) left center no-repeat;
     }
    .box ul a{
        float:left;
        height:36px;
        font: bold 14px/36px '微软雅黑';
        text-decoration: none;
        text-indent: 30px;
        color: #000;
        background: url(icon.jpg) 5px center no-repeat;
    }
    .box ul a:hover{
        color: red;
    }
    .box ul p{
        float: right;
        height: 16px;
        font:bold 14px/36px '微软雅黑';
        color: #000;
        margin-top: 1px;
    }
</style>
	
<!-- 轮播图效果 -->

    <style type="text/css">
        *{ padding:0; margin:0; list-style:none; border:0;}
        .all{
            width:1000px;
            height:606px;
            padding:7px;
            border:1px solid #ccc;
            margin:5px auto;
            position:relative;
        }
        .screen{
            width:990px;
            height:600px;
            overflow:hidden;
            position:relative;
        }
        .screen li{ width:990px; height:600px; overflow:hidden; float:left;}
        /* 此处需要注意宽度，如果是width:10000px;值过小，照片多的时候，容易显示不出来 */
        .screen ul{ position:absolute; left:0; top:0px; width:10000px;}
        .all ol{ position:absolute; right:10px; bottom:10px; line-height:20px; text-align:center;}
        .all ol li{ float:left; width:20px; height:20px; background:#fff; border:1px solid #ccc; margin-left:10px; cursor:pointer;}
        .all ol li.current{ background:yellow;}
 
        #arr {display: none;}
        #arr span{ width:40px; height:40px; position:absolute; left:5px; top:50%; margin-top:-20px; background:#000; cursor:pointer; line-height:40px; text-align:center; font-weight:bold; font-family:'黑体'; font-size:30px; color:#fff; opacity:0.3; border:1px solid #fff;}
        #arr #right{right:5px; left:auto;}
    </style>
 	
	<!-- 	<script>
		window.location.href="${pageContext.request.contextPath }/readHomePageImage";
	</script> -->
 
    <script>
        window.onload = function () {
        	
            //需求：轮播图连续滚动
            //思路：赋值第一张图片放到ul的最后，然后当图片切换到第3张的时候
            //     直接切换第4章，再次从第一张切换到第二张的时候先瞬间切换到
            //     第1张图片，然后滑动到第2张
            //1.获取事件源及相关元素。
            var screen = document.getElementById("screen");
            var ul = screen.children[0];
            var ol = screen.children[1];
            var div = screen.children[2];
            var imgWidth = screen.offsetWidth;
 
            //2 复制第一张图片所在的li,添加到ul的最后面。
            var tempLi = ul.children[0].cloneNode(true);
            ul.appendChild(tempLi);
            //3 给ol中添加li，ul中的个数-1个，并点亮第一个按钮。
            for(var i = 0; i < ul.children.length - 1; i++) {
                var newOlLi = document.createElement("li");
                newOlLi.innerHTML = i + 1;
                ol.appendChild(newOlLi);
            }
            var olLiArr = ol.children;
            olLiArr[0].className = "current";
            //4 鼠标放到ol的li上切换图片
            for(var i = 0, len = olLiArr.length; i < len; i++) {
                olLiArr[i].index = i;
                olLiArr[i].onmouseover = function (ev) {
                    for(var j = 0; j < len; j++) {
                        olLiArr[j].className = "";
                    }
                    this.className = "current";
                    key = square = this.index;
                    animate(ul, -this.index * imgWidth);
                }
            }
            //5 添加定时器
            var key = 0;
            var square = 0;
            var timer = setInterval(autoPlay, 3000);
            screen.onmouseover = function (ev) {
                clearInterval(timer);
                div.style.display = "block";
            }
            screen.onmouseout = function (ev) {
                timer = setInterval(autoPlay, 3000);
                div.style.display = "none";
            }
            //6 左右切换图片（鼠标放上去隐藏，移开显示）
            var divArr = div.children;
            divArr[0].onclick = function (ev) {
                key--;
                if(key < 0) {
                    ul.style.left = -(ul.children.length-1) * imgWidth + "px";
                    key = 4;
                }
                animate(ul, -key * imgWidth);
                square--;
                if(square < 0) {
                    square = 4;
                }
                for(var k = 0; k < len; k++) {
                    olLiArr[k].className = "";
                }
                olLiArr[square].className = "current";
            }
            divArr[1].onclick = autoPlay;
            function autoPlay() {
                key++;
                //当不满足下面的条件是时候，轮播图到了最后一个孩子，进入条件中后，瞬移到
                //第一张，继续滚动。
                if(key > ul.children.length - 1) {
                    ul.style.left = 0;
                    key = 1;
                }
                animate(ul, -key * imgWidth);
                square++;
                if(square > 4) {
                    square = 0;
                }
                for(var k = 0; k < len; k++) {
                    olLiArr[k].className = "";
                }
                olLiArr[square].className = "current";
            }
            function animate(ele,target){
                    clearInterval(ele.timer);
                    var speed = target>ele.offsetLeft?10:-10;
                    ele.timer = setInterval(function () {
                        var val = target - ele.offsetLeft;
                        ele.style.left = ele.offsetLeft + speed + "px";
                        if(Math.abs(val)<Math.abs(speed)){
                            ele.style.left = target + "px";
                            clearInterval(ele.timer);
                        }
                    },10)  
            }
            
            function animateY(ele, target) {
                //bug2 能够返回
                clearInterval(ele.timer);
                var speed = target > ele.offsetTop ? 10 : -10;
             
                ele.timer = setInterval(function () {
                    var val = target - ele.offsetTop;
                    ele.style.top = ele.offsetTop + speed + "px";
                    if(Math.abs(val) <= 10) {
                        ele.style.top = target + "px";
                        clearInterval(timer);
                    }
                }, 20)
            }
            
 
        }       
        
    </script>

<!-- 以上轮播图效果 -->


	
<body>
  
<div class="container" style="height: 20px;width: 1000px;background: ;">
				<table>
				<tr height="20px" bgcolor="black">
				<div >
					<font color="white" >欢迎来到郑州大学河南农村队列研究</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span id="time1" style="color:white;"></span>
				</div>
								
			</tr>
			</table>
</div> 
	<script type="text/javascript">
				 setInterval("document.getElementById('time1').innerHTML = new Date().toLocaleString();", 1000);
	</script>


	<!--logo部分-->
	 <div >
			<div  style="background-color: #66AFE9;height: 100px; margin-left: 0px;margin-right: 0px">
				
			</div>

	</div>
  

<div class="dlyj_head" style="background-color: rgb(209, 223, 255);">
    <div class="container">
        <div class="logo" >
        	<!--<img src="images/logo.jpg" style="height: 25px;width: 25px;"/>-->
        	河南农村队列研究
        </div>
       <ul id="nav" class="nav container_loc" style="height: 40px; margin-top: 4px;">            
            <li  class="nLi on">
                <h3><a href="#" >首页</a></h3>                          
             </li>
            
            <li  class="nLi on">
                <h3><a href="#">队列概况<b class="caret"></b></a></h3>
				        <ul class="sub">
                            <li><a href="jsp/queueintroduction/queueintroduction.jsp" >队列简介</a></li>
                            <li><a href="jsp/queueintroduction/leaderteam.jsp" >领导队伍</a></li>
                            <li><a href="jsp/queueintroduction/teamStructure.jsp" >组织结构</a></li>
                    	</ul>
             </li>
            
                <li  class="nLi on">
                    <h3><a href="#">专题工作<b class="caret"></b></a></h3>                                                        
                        <ul class="sub">
                                <li><a href="jsp/specialWork/baselineSurvey.jsp" >基线调查</a></li>
                                <li><a href="jsp/specialWork/caseAudit.jsp" >病例审核</a></li>
                                <li><a href="" >随访监测</a></li>
                                <li><a href="jsp/specialWork/qualityControl.jsp" >质量控制</a></li> 
                                <li><a href="" >样本管理</a></li>                                
                        </ul>
                </li>
            
                <li  class="nLi on">
                    <h3><a href="#">科学研究<b class="caret"></b></a></h3>
                        <ul class="sub">
                                <li><a href="" >发表文章</a></li>
                                <li><a href="" >申报专利</a></li>
                                <li><a href="" >科技成果</a></li>
                                <li><a href="" >著作</a></li>                               
                        </ul>
                 </li>
                 
                 <li  class="nLi on">
                    <h3><a href="#">团队介绍<b class="caret"></b></a></h3>
                        <ul class="sub">
                                <li><a href="${pageContext.request.contextPath }/teacherProduce" >教师</a></li>
                                <li><a href="" >博士生</a></li>
                                <li><a href="" >研究生</a></li>                                
                        </ul>
                 </li>
            
                <li  class="nLi on">
                    <h3><a href="#">合作交流<b class="caret"></b></a></h3>
                      <ul class="sub">
                       			<li><a href="" >交流培训</a></li>                         
                                <li><a href="" >合作申请</a></li>                                           
                        </ul>
                </li>
            
            	<li  class="nLi on">
                    <h3><a href="#">现场掠影<b class="caret"></b></a></h3>
                      <ul class="sub">
                       			<li><a href="" >现场掠影</a></li>                                                              
                        </ul>
                </li>
            	
            	 <li  class="nLi on" >
                    <h3><a href="#">联系我们<b class="caret"></b></a></h3>
                      <ul class="sub">
                       			<li><a href="" >联系方式</a></li>                         
                                <li><a href="" >招贤纳士</a></li>                                                    
                        </ul>
                </li>
              
              <li  class="nLi on" >
                    <h3><a href="#">English</a></h3>
                     
                </li>
            
        </ul>

    </div>
</div>



<script type="text/javascript">
    jQuery(".nav").slide({type: "menu", titCell: ".nLi", targetCell: ".sub", delayTime: 300, triggerTime: 0, returnDefault: true});

</script>



<!--以上菜单-->


<!--以下内容-->

	<!-- 轮播图部分 -->								
	<div class="all" id='all'>
	    <div class="screen" id="screen">
	        <ul id="ul">
		           <c:forEach items="${homePagePicpath }" var="picname" varStatus="status" >
		            <li><img src="${picname }" width="989" height="590" /></li>
		           </c:forEach>         
			 </ul>
	        <ol>
	 			
	        </ol>
	        <div id="arr">
	            <span id="left"><</span>
	            <span id="right">></span>
	        </div>
		</div>
	</div>


        
        <!--新闻页面-->
        
      <div id="news"  >
		<div id="title" style="width: 1000px;height: 40px;background-color: #f4f4f4;">			
						<!--颜色条-->
		</div>
		
					<div id="news1">		
						<div class="box">
							<div class='line'><span>新闻列表</span><a id='more' href="${pageContext.request.contextPath }/readerNews" style="font-size: 18px;">更多>></a></div>
							
							<ul>
							<c:forEach items="${newsnames }" var="temp" varStatus="status" >
							    <li><a  href= "${pageContext.request.contextPath }/newsDetail?idname=${status.index + 1 }" >${temp }</a><p>2018-01-19</p></li>							    
							</c:forEach>							
							    
							</ul>
						</div>
					
				</div>

				<div id="news2">						
				</div>
	</div>

	
	<div style="height: 50px;">
		
	</div>
        
        
        
        
        
	<!--底部声明-->
	

	    <div class="container" align="center" style="background-color: ; width: 1190px; height: 100px;">
					<div>
					<a href="#" style="color: black;">关于我们</a>
					<a href="#" style="color: black;">法律声明 </a>
					<a href="#" style="color: black;">友情链接</a>
					</div>
					
					<div>
						<font color="black">copyright@2018-2019 </font>
					</div>
					
					<div>
						<font color="black">版权所有@郑州大学--河南农村队列研究</font>
					</div>
	
					
		</div>


    </body>
</html>