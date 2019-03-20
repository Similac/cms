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
			
			<div class="text">跳转OPAC</div>
		</header>
    <form name="goopac" id="goopac" action="http://202.116.174.108:8080/reader/redr_verify.php" method="post">
		
		<div class="detail-area bulk_order_details">
		    <input name="number" type="hidden" value="${userEntity.personnelno}">
			<input  name="passwd" type="hidden" value="${userEntity.pw}">
			<input  name="select" type="hidden" value="cert_no">
			<input name="returnUrl" type="hidden" value="${returnUrl}" >
		  <div class="text" >
			<label class="Validform_label" >
				验证码:
			</label>	
		  </div>
		  <div class="text" >
			<tr>
					<td align="right">
										
					     <input id="captcha" name="captcha" type="text" style="width: 180px;height: 25px" class="inputxt" nullmsg="请输入验证码"> <img title="点击刷新" src="http://202.116.174.108:8080/reader/captcha.php" align="absbottom">
						</td>
				</tr>
		 </div>

		<div class="text" >
		 
               <input type="submit" class="btn" value="跳转">
               		
		 </div>	
		</div>
		</form>
	</body>
</html>