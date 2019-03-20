<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>用户列表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="webUserController.do?doAdd" tiptype="1">
					<input id="id" name="id" type="hidden" value="${webUserPage.id }">
					<input id="password" name="password" type="hidden" value="${webUserPage.password }">
					<input id="pw" name="pw" type="hidden" value="${webUserPage.pw }">
					<input id="accno" name="accno" type="hidden" value="${webUserPage.accno }">
					<input id="lastlogintime" name="lastlogintime" type="hidden" value="${webUserPage.lastlogintime }">
					<input id="lastloginip" name="lastloginip" type="hidden" value="${webUserPage.lastloginip }">
					<input id="nickname" name="nickname" type="hidden" value="${webUserPage.nickname }">
					<input id="regtime" name="regtime" type="hidden" value="${webUserPage.regtime }">
					<input id="vip" name="vip" type="hidden" value="${webUserPage.vip }">
					<input id="roleid" name="roleid" type="hidden" value="${webUserPage.roleid }">
					<input id="isbind" name="isbind" type="hidden" value="${webUserPage.isbind }">
					<input id="pidcode" name="pidcode" type="hidden" value="${webUserPage.pidcode }">
					<input id="state" name="state" type="hidden" value="${webUserPage.state }">
					<input id="identity" name="identity" type="hidden" value="${webUserPage.identity }">
					<input id="createtime" name="createtime" type="hidden" value="${webUserPage.createtime }">
					<input id="userflag" name="userflag" type="hidden" value="${webUserPage.userflag }">
					<input id="ident" name="ident" type="hidden" value="${webUserPage.ident }">
					<input id="college" name="college" type="hidden" value="${webUserPage.college }">
					<input id="department" name="department" type="hidden" value="${webUserPage.department }">
					<input id="major" name="major" type="hidden" value="${webUserPage.major }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							读者证件号:
						</label>
					</td>
					<td class="value">
					     	 <input id="personnelno" name="personnelno" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">读者证件号</label>
						</td>
				<tr>
					<td align="right">
						<label class="Validform_label">
							姓名:
						</label>
					</td>
					<td class="value">
					     	 <input id="accname" name="accname" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">姓名</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							电话:
						</label>
					</td>
					<td class="value">
					     	 <input id="phone" name="phone" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">电话</label>
						</td>
				<tr>
					<td align="right">
						<label class="Validform_label">
							email:
						</label>
					</td>
					<td class="value">
					     	 <input id="email" name="email" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">email</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							性别:
						</label>
					</td>
					<td class="value">
                               <t:dictSelect field="sex" id="sex" typeGroupCode="sex" hasLabel="false"></t:dictSelect>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">性别</label>
						</td>
				<tr>
					<td align="right">
						<label class="Validform_label">
							部门:
						</label>
					</td>
					<td class="value">
					     	 <input id="dept" name="dept" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">部门</label>
						</td>
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/web/user/webUser.js"></script>		