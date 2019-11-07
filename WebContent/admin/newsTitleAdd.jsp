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
									新闻管理
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
											当前位置：新闻管理&gt;&gt;添加新闻标题
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
														新闻标题：
													</td>
													<td width="85%" colspan="2">
														<input type="text" name="name" id="titlename" value="" /><span style="vertical-align: top" id="nameTip"></span>
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
				
			</tr>
			
		</table>
	</body>
</html>
