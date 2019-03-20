<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>日志</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="weblogController.do?doAdd" tiptype="1">
					<input id="id" name="id" type="hidden" value="${weblogPage.id }">
					<input id="createName" name="createName" type="hidden" value="${weblogPage.createName }">
					<input id="createDate" name="createDate" type="hidden" value="${weblogPage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${weblogPage.updateName }">
					<input id="updateDate" name="updateDate" type="hidden" value="${weblogPage.updateDate }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							访问页面:
						</label>
					</td>
					<td class="value">
					     	 <input id="logPage" name="logPage" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">访问页面</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							ip地址:
						</label>
					</td>
					<td class="value">
					     	 <input id="ipAddress" name="ipAddress" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">ip地址</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							访问方式:
						</label>
					</td>
					<td class="value">
					     	 <input id="logType" name="logType" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">访问方式</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							访问站点:
						</label>
					</td>
					<td class="value">
					     	 <input id="logSite" name="logSite" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">访问站点</label>
						</td>
				</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/web/log/weblog.js"></script>		