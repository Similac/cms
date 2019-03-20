<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>IP段管理</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="dbIpController.do?doAdd" tiptype="1">
					<input id="id" name="id" type="hidden" value="${dbIpPage.id }">
					<input id="createName" name="createName" type="hidden" value="${dbIpPage.createName }">
					<input id="createDate" name="createDate" type="hidden" value="${dbIpPage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${dbIpPage.updateName }">
					<input id="updateDate" name="updateDate" type="hidden" value="${dbIpPage.updateDate }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							起始IP:
						</label>
					</td>
					<td class="value">
					     	 <input id="startIp" name="startIp" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">起始IP</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							终止IP:
						</label>
					</td>
					<td class="value">
					     	 <input id="endIp" name="endIp" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">终止IP</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							备注:
						</label>
					</td>
					<td class="value">
					     	 <input id="remark" name="remark" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">备注</label>
						</td>
				</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/web/esource/dbIp.js"></script>		