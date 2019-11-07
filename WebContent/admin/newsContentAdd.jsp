<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'welcom.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
        <link href="images/skin.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="js/formValidator/style/validator.css" type="text/css"></link>
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/common.js"></script>
        <script type="text/javascript" src="js/formValidator/formValidator.js"></script>
        <script type="text/javascript" src="js/TQEditor/TQEditor.min.js"></script>
        <script type="text/javascript"><!--
$(document).ready(function(){
  $.formValidator.initConfig( {
		formid : "addForm",
		onerror : function(msg) {
			return false;
		},
		wideword : false,//一个汉字占一个字符,即max : 50就是50个英文或50个汉字
		onsuccess : function() {
			      document.getElementById("button").click();
				  return true;
			    
		}
	});
  $("#name").formValidator( {
	    empty:false,
		onshow : "请输入1-50个字符,不可以为空",
		onfocus : "请输入1-50个字符,不可以为空",
		oncorrect : "输入正确"
	}).inputValidator( {
	    min: 1,
		max : 50,
		onerror : "请输入1-50个字符,不可以为空",
		empty:{leftempty:false,rightempty:false,emptyerror:"标题两边不能有空符号"}
	});
  $("#smNote").formValidator( {
	    empty:false,
		onshow : "不可为空",
		onfocus : "不可以为空",
		oncorrect : "输入正确"
	}).inputValidator( {
	    min: 1,
		onerror : "请输入文字"
	});
});
	</script>
	</head>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="17" valign="top" background="images/mail_leftbg.gif">
					<img src="images/left-top-right.gif" width="17" height="29" />
				</td>
				<td valign="top" width="100%" background="images/content-bg.gif">
					<table width="100%" height="31" border="0" cellpadding="0"
						cellspacing="0" class="left_topbg" id="table2">
						<tr>
							<td height="31">
								<div class="titlebt">
									公告管理
								</div>
							</td>
						</tr>
					</table>
				</td>
				<td width="16" valign="top" background="images/mail_rightbg.gif">
					<img src="images/nav-right-bg.gif" width="16" height="29" />
				</td>
			</tr>
			<tr>
				<td height="71" valign="middle" background="images/mail_leftbg.gif">
					&nbsp;
				</td>
				<td valign="top" bgcolor="#F7F8F9" width="100%">
					<table width="100%" height="138" border="0" cellpadding="0"
						cellspacing="0">
						<tr>
							<td height="13" valign="top" colspan="4">
								&nbsp;
							</td>
						</tr>
						<tr>
							<td valign="top" colspan="4">
								<table width="98%" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td class="left_txt">
											当前位置：公告管理&gt;&gt;添加公告
										</td>
									</tr>
									<tr>
										<td height="20">
											<table width="100%" height="1" border="0" cellpadding="0"
												cellspacing="0" bgcolor="#CCCCCC">
												<tr>
													<td></td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td>
										   <form action="content!addContent.action?flag=add" method="post" id="addForm">
											<table width="100%" class="infoTable" cellspacing="0" border="0" cellpadding="0">
												<tr>
													<td width="15%" align="right" class="left_txt2">
														标题：
													</td>
													<td width="85%" colspan="2">
														<input type="text" name="name" id="name" value="" /><span style="vertical-align: top" id="nameTip"></span>
													</td>
												</tr>
												<tr>
													<td class="left_txt2" align="right">
														新闻介绍：
													</td>
													<td>
														<textarea name="content" id="smNote"
															cols="70" rows="8">
														</textarea>
														<span style="vertical-align: top;" id="smNoteTip"></span>
															 <script type="text/javascript" defer="true"> 
																new  tqEditor('smNote',{toolbar:'default'});
																//tqEditor.loadSkin('')
												             </script>
														
													</td>
													
												</tr>
												<tr>
													<td colspan="2" align="center">
														<input type="submit" id="button" value="添加" />
														&nbsp;&nbsp;&nbsp;
														<input type="reset" id="reset" value="重置">
													</td>
												</tr>
											</table>
											</form>
										</td>
									</tr>
									<tr>
										<td height="5" >
											&nbsp;
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
				<td background="images/mail_rightbg.gif">
					&nbsp;
				</td>
			</tr>
			<tr>
				<td valign="bottom" background="images/mail_leftbg.gif">
					<img src="images/buttom_left2.gif" width="17" height="17" />
				</td>
				<td background="images/buttom_bgs.gif">
					<img src="images/buttom_bgs.gif" width="17" height="17">
				</td>
				<td valign="bottom" background="images/mail_rightbg.gif">
					<img src="images/buttom_right2.gif" width="16" height="17" />
				</td>
			</tr>
		</table>
	</body>
</html>
