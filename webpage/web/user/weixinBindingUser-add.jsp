<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>绑定微信用户</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="weixinBindingUserController.do?doAdd" tiptype="1">
					<input id="id" name="id" type="hidden" value="${weixinBindingUserPage.id }">
					<input id="createName" name="createName" type="hidden" value="${weixinBindingUserPage.createName }">
					<input id="createDate" name="createDate" type="hidden" value="${weixinBindingUserPage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${weixinBindingUserPage.updateName }">
					<input id="updateDate" name="updateDate" type="hidden" value="${weixinBindingUserPage.updateDate }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							微信号:
						</label>
					</td>
					<td class="value">
					     	 <input id="weixinAccount" name="weixinAccount" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">微信号</label>
						</td>
				<tr>
					<td align="right">
						<label class="Validform_label">
							绑定用户:
						</label>
					</td>
					<td class="value">
					     	 <input id="userId" name="userId" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">绑定用户</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							姓名:
						</label>
					</td>
					<td class="value">
					     	 <input id="userName" name="userName" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">姓名</label>
						</td>
				<tr>
					<td align="right">
						<label class="Validform_label">
							卡号:
						</label>
					</td>
					<td class="value">
					     	 <input id="userAccno" name="userAccno" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">卡号</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							专业:
						</label>
					</td>
					<td class="value">
					     	 <input id="userMajor" name="userMajor" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">专业</label>
						</td>
				<tr>
					<td align="right">
						<label class="Validform_label">
							校区:
						</label>
					</td>
					<td class="value">
					     	 <input id="userCampus" name="userCampus" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">校区</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							Email:
						</label>
					</td>
					<td class="value">
					     	 <input id="userEmail" name="userEmail" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">Email</label>
						</td>
				<tr>
					<td align="right">
						<label class="Validform_label">
							电话:
						</label>
					</td>
					<td class="value">
					     	 <input id="userPhone" name="userPhone" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">电话</label>
						</td>
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/web/user/weixinBindingUser.js"></script>		