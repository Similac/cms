<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>微信log</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="weixinLogController.do?doUpdate" tiptype="1">
					<input id="id" name="id" type="hidden" value="${weixinLogPage.id }">
					<input id="createName" name="createName" type="hidden" value="${weixinLogPage.createName }">
					<input id="createDate" name="createDate" type="hidden" value="${weixinLogPage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${weixinLogPage.updateName }">
					<input id="updateDate" name="updateDate" type="hidden" value="${weixinLogPage.updateDate }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								用户微信号:
							</label>
						</td>
						<td class="value">
						     	 <input id="fromUserName" name="fromUserName" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${weixinLogPage.fromUserName}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">用户微信号</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								公众号:
							</label>
						</td>
						<td class="value">
						     	 <input id="toUserName" name="toUserName" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${weixinLogPage.toUserName}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">公众号</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								微信触发类型:
							</label>
						</td>
						<td class="value">
						     	 <input id="msgType" name="msgType" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${weixinLogPage.msgType}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">微信触发类型</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								msgid:
							</label>
						</td>
						<td class="value">
						     	 <input id="msgId" name="msgId" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${weixinLogPage.msgId}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">msgid</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								content:
							</label>
						</td>
						<td class="value">
						     	 <input id="content" name="content" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${weixinLogPage.content}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">content</label>
						</td>
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/weixin/guanjia/log/weixinLog.js"></script>		