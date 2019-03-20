<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<title>暨大图书馆</title>
		<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="format-detection" content="telephone=no">
  		<link type="text/css" rel="stylesheet" href="plug-in/weixin/css/weixin_cms.css" />
	    <script type='text/javascript' src='plug-in/jquery/jquery-1.8.3.js'></script>
	    
 
	    
	    <style type="text/css">

	    </style>
	</head>
	<body>
		<header class="w-header" mon="type=header">
			
			<div class="text">失物招领</div>
		</header>
<form name="formBinding" id="formBinding" action="mylibController.do?recommendbook_save" method="post">
		
		<div class="detail-area bulk_order_details">
		

 
    <c:forEach items="${list}" var="test">	
        <fieldset style="white-space: normal; margin: 10px 0 10px 0; padding: 5px; border: 1px solid rgb(141,225,163); max-width: 100%; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 12px; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom-right-radius: 5px; border-bottom-left-radius: 5px; background-color: rgb(239, 239, 239); word-wrap: break-word !important; box-sizing: border-box !important;">
          <legend style="padding: 0px; max-width: 100%; margin: 0px 10px; word-wrap: break-word !important; box-sizing: border-box !important;">
             <span style="max-width: 100%; padding: 5px 10px;  font-weight: bold; font-size: 16px; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom-right-radius: 5px; border-bottom-left-radius: 5px; background-color: rgb(141,225,163); word-wrap: break-word !important; box-sizing: border-box !important;">${test.title}</span>
          </legend>
              <blockquote style="max-width: 100%; margin: 0px; word-wrap: break-word !important; box-sizing: border-box !important;">
              <p style="margin-top: 0px; margin-bottom: 0px; max-width: 100%; word-wrap: normal; min-height: 1em; box-sizing: border-box !important;">
               <strong style="max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important;">
                <span style="max-width: 100%; font-size: 14px; word-wrap: break-word !important; box-sizing: border-box !important;line-height:1.7em">捡拾地点：${test.lost_place}，领取地址：${test.do_place}</span>
               </strong>
              </p>
             </blockquote>
         </fieldset>
     </c:forEach>
   
		</div>

		</form>
	</body>

</html>