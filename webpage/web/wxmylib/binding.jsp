<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<title>华农图书馆</title>
		<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="format-detection" content="telephone=no">
  		<link type="text/css" rel="stylesheet" href="plug-in/weixin/css/weixin_cms.css" />
	    <script type='text/javascript' src='plug-in/jquery/jquery-1.8.3.js'></script>
	    <style type="text/css">
	    body {
			padding: 0;
			font-family: '宋体';
			background: #fff;
		}
	    .title{
		    display: block;
			font-size: 2em;
			-webkit-margin-before: 0.67em;
			-webkit-margin-after: 0.67em;
			-webkit-margin-start: 0px;
			-webkit-margin-end: 0px;
			font-weight: bold;
			text-align:center;
	    }
	    .activity-info {
			border-top: 1px dotted #ccc;
			text-align:center;
	    }
	    .activity-meta {
			display: inline-block;
			line-height: 16px;
			vertical-align: middle;
			text-align:center;
			margin-left: 8px;
			padding-top: 2px;
			padding-bottom: 2px;
			color: #8c8c8c;
			font-size: 11px;
		}
		.text{
			margin: 0 auto;
			padding: 5px 5px;
		}
	    </style>
	</head>
	<body>
		<header class="w-header" mon="type=header">
			
			<div class="text">微信号与读者账号绑定</div>
		</header>
<form name="formBinding" id="formBinding" action="mylibController.do?dobinding" method="post">
		
		<div class="detail-area bulk_order_details">
		<input id="openid" name="openid" type="hidden" value="${openid}">
		<font color=#FF0000>${message}</font>
		  <div class="text" >
			<label class="Validform_label">
				读者证件号:
			</label>	
		  </div>
		  <div class="text" >
			<tr>
					<td align="right">
										
					     <input id="personnelno" name="personnelno" type="text" style="width: 180px;height: 25px" class="inputxt" nullmsg="请输入用户名!">													
						</td>
				</tr>
		 </div>
		 <div class="text" >
		 
		    <label class="Validform_label">
							密码:
			</label>
		 </div>
		 <div class="text" >	
				<tr>
					<td align="right">
											
					     <input id="password" name="password" type="password" style="width: 180px;height: 25px" class="inputxt" datatype="*" nullmsg="请输入密码!默认密码是001或读者证件号">
						</td>
				</tr>
		</div>
		<div class="text" >
		 
               <input type="submit" class="btn" value="绑定">															
               		
		 </div>	
		</div>
		</form>
	</body>
</html>