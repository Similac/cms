<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<title>首页</title>
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
		.content{
		    display: block;
            height: auto;
            max-width: 95%;
			width: 95%;
			margin: 0 auto;
			padding: 5px 5px;
		}
	
       img { 
            border: 0;
		    height: auto; 
		    width: auto\9!important; 
		    width:95%!important; 
		    
	   } 
		
	    </style>
	</head>
	<body>
		<header class="w-header" mon="type=header">
			<a class="arrow-wrap" href="javascript:history.back()" mon="content=back">
			<span class="arrow-left"></span>
			</a>
			<div class="text">文章详情</div>
		</header>
		<div class="detail-area bulk_order_details">
			<div class="title">${news.cn_title }</div>
			
			<div class="content">${news.cn_content}</div>
		</div>
	</body>
</html>