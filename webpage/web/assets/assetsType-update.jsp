<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>资产类型</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="assetsTypeController.do?doUpdate" tiptype="1">
					<input id="id" name="id" type="hidden" value="${assetsTypePage.id }">
					<input id="ftypeid" name="ftypeid" type="hidden" value="${assetsTypePage.ftypeid }">
					<input id="sname" name="sname" type="hidden" value="${assetsTypePage.sname }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								类型名称:
							</label>
						</td>
						<td class="value">
						     	 <input id="typename" name="typename" type="text" style="width: 150px" class="inputxt"  
									               datatype="*"
									                 value='${assetsTypePage.typename}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">类型名称</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								所属类:
							</label>
						</td>
						<td class="value">
						     	 <input id="fname" name="fname" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${assetsTypePage.fname}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">所属类</label>
						</td>
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/web/assets/assetsType.js"></script>		