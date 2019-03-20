<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>学科分类</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="dbRessubjectController.do?doUpdate" tiptype="1">
					<input id="id" name="id" type="hidden" value="${dbRessubjectPage.id }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								学科名称:
							</label>
						</td>
						<td class="value">
						     	 <input id="name" name="name" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${dbRessubjectPage.name}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">学科名称</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								英文名称:
							</label>
						</td>
						<td class="value">
						     	 <input id="subjectenname" name="subjectenname" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${dbRessubjectPage.subjectenname}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">英文名称</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								状态:
							</label>
						</td>
						<td class="value">

                            <t:dictSelect field="state" id="state" typeGroupCode="state" hasLabel="false" defaultVal="${dbRessubjectPage.state}"></t:dictSelect>

                            <span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">状态</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								排序:
							</label>
						</td>
						<td class="value">
						     	 <input id="sortid" name="sortid" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${dbRessubjectPage.sortid}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">排序</label>
						</td>
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/web/esource/dbRessubject.js"></script>		