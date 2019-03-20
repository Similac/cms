<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
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
	
	 <script type="text/javascript">

	    	$(function(){
	    		
	    	    //返回顶部按钮逻辑
	    	    $('#j-gotop').on("click", function () {
	    	        window.scrollTo(0, 0); 
	    	    });

		    });
	
	    </script>
	</head>
	<body>
		<header class="w-header" mon="type=header">
			<a class="arrow-wrap" href="javascript:history.back()" mon="content=back">
			<span class="arrow-left"></span>
			</a>
			
			<a href="http://m.nuomi.com/" class="home" mon="content=home"></a>
			<div class="text">${column.name }</div>
		</header>
		<article class="p-list" mon="action=click">
		<div id="j-goods-container">
		</div>
		    <c:forEach items="${newslist}" var="news">
               <section class="w-goods " mon="action=click&amp;type=item">	
               <a href="libcmsController.do?news&amp;id=${news.id}" class="clearfix">
               <ul>	
               <li class="title">						
               <span class="item-name">${news.cn_title}</span>
               </li>					
               <span class="store ">${news.createtime}</span>
               </ul>			
               </a>
               </section>
           </c:forEach>
		<div class="w-viewmore clearfix" mon="action=click">
		<c:if test="${page!='1'}">
	     <a id="next" href="libcmsController.do?newslist&subjectid=${subjectid}&page=${page-1}" class="op-btn more"
				mon="type=more">上一页</a>
	      </c:if>

			<a id="next" href="libcmsController.do?newslist&subjectid=${subjectid}&page=${page+1}" class="op-btn more"
				mon="type=next">下一页</a>

		</div>
		</article>
	</body>
</html>