<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>图书荐购</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="weixinRecommendbookController.do?doUpdate" tiptype="1">
					<input id="id" name="id" type="hidden" value="${weixinRecommendbookPage.id }">
					<input id="createName" name="createName" type="hidden" value="${weixinRecommendbookPage.createName }">
					<input id="createDate" name="createDate" type="hidden" value="${weixinRecommendbookPage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${weixinRecommendbookPage.updateName }">
					<input id="updateDate" name="updateDate" type="hidden" value="${weixinRecommendbookPage.updateDate }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								人事编号学号:
							</label>
						</td>
						<td class="value">
						     	 <input id="userId" name="userId" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${weixinRecommendbookPage.userId}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">人事编号学号</label>
						</td>
					<tr>
						<td align="right">
							<label class="Validform_label">
								姓名:
							</label>
						</td>
						<td class="value">
						     	 <input id="userName" name="userName" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${weixinRecommendbookPage.userName}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">姓名</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								卡号:
							</label>
						</td>
						<td class="value">
						     	 <input id="userAccno" name="userAccno" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${weixinRecommendbookPage.userAccno}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">卡号</label>
						</td>
					<tr>
						<td align="right">
							<label class="Validform_label">
								题名:
							</label>
						</td>
						<td class="value">
						     	 <input id="bookTitle" name="bookTitle" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${weixinRecommendbookPage.bookTitle}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">题名</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								作者:
							</label>
						</td>
						<td class="value">
						     	 <input id="bookAuthor" name="bookAuthor" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${weixinRecommendbookPage.bookAuthor}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">作者</label>
						</td>
					<tr>
						<td align="right">
							<label class="Validform_label">
								ISBN:
							</label>
						</td>
						<td class="value">
						     	 <input id="bookIsbn" name="bookIsbn" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${weixinRecommendbookPage.bookIsbn}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">ISBN</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								出版社:
							</label>
						</td>
						<td class="value">
						     	 <input id="bookOther" name="bookOther" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${weixinRecommendbookPage.bookOther}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">出版社</label>
						</td>
					<tr>
						<td align="right">
							<label class="Validform_label">
								Email:
							</label>
						</td>
						<td class="value">
						     	 <input id="userEmail" name="userEmail" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${weixinRecommendbookPage.userEmail}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">Email</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								电话:
							</label>
						</td>
						<td class="value">
						     	 <input id="userPhone" name="userPhone" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${weixinRecommendbookPage.userPhone}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">电话</label>
						</td>
				<td align="right">
					<label class="Validform_label">
					</label>
				</td>
				<td class="value">
				</td>
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/web/user/weixinRecommendbook.js"></script>		