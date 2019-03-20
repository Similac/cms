<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>失物招领</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
	 <!--UEditor-->
	 <script type="text/javascript"  charset="utf-8" src="plug-in/ueditor/ueditor.config.js"></script>
	 <script type="text/javascript"  charset="utf-8" src="plug-in/ueditor/ueditor.all.js"></script>

	 <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
	 <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
	 <script type="text/javascript" charset="utf-8" src="plug-in/ueditor/lang/zh-cn/zh-cn.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="lostFoundController.do?doUpdate" tiptype="1">
					<input id="id" name="id" type="hidden" value="${lostFoundPage.id }">
					<input id="createName" name="createName" type="hidden" value="${lostFoundPage.createName }">
					<input id="createDate" name="createDate" type="hidden" value="${lostFoundPage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${lostFoundPage.updateName }">
					<input id="updateDate" name="updateDate" type="hidden" value="${foundtime.updateDate }">
	  <table style="width: 1024px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								失物名称:
							</label>
						</td>
						<td class="value">
						     	 <input id="title" name="title" type="text" style="width: 300px" class="inputxt"
									               
									                 value='${lostFoundPage.title}' datatype="*">
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">失物名称</label>
						</td>
					<tr>
						<td align="right">
							<label class="Validform_label">
								详细信息:
							</label>
						</td>
						<td class="value">
						  	 	<textarea id="content" style="width:700px;" class="inputxt" rows="6" name="content">${lostFoundPage.content}</textarea>
							<script type="text/javascript">
								var editor = UE.getEditor('content',{
									autoHeightEnabled: false, initialFrameHeight:300,minFrameHeight:300,
									toolbars: [[
										'fullscreen', 'source', '|', 'undo', 'redo', '|',
										'bold', 'italic', 'underline', 'fontborder', 'strikethrough', 'superscript', 'subscript', 'removeformat', 'formatmatch', 'autotypeset', 'blockquote', 'pasteplain', '|', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist', 'selectall', 'cleardoc', '|',
										'customstyle', 'paragraph', 'fontfamily', 'fontsize', '|',
										'simpleupload', 'insertimage', 'scrawl', 'insertvideo', 'music', 'attachment', 'map', 'insertframe', 'insertcode'
									]]
								});
							</script>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">详细信息</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								捡拾地点:
							</label>
						</td>
						<td class="value">
						     	 <input id="foundaddress" name="foundaddress" type="text" style="width: 300px" class="inputxt"
									               
									                 value='${lostFoundPage.foundaddress}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">捡拾地点</label>
						</td>
					<tr>
						<td align="right">
							<label class="Validform_label">
								捡拾时间:
							</label>
						</td>
						<td class="value">
									  <input id="foundtime" name="foundtime" type="text" style="width: 150px"
						      						class="Wdate" onClick="WdatePicker()" datatype="*"

						      						 value='<fmt:formatDate value='${lostFoundPage.foundtime}' type="date" pattern="yyyy-MM-dd"/>'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">捡拾时间</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								捡拾人:
							</label>
						</td>
						<td class="value">
						     	 <input id="name" name="name" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${lostFoundPage.name}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">捡拾人</label>
						</td>
					<tr>
						<td align="right">
							<label class="Validform_label">
								领取地点:
							</label>
						</td>
						<td class="value">
									<t:dictSelect field="address" type="list"
										typeGroupCode="lost" defaultVal="${lostFoundPage.address}" hasLabel="false"  title="领取地点"></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">领取地点</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								状态:
							</label>
						</td>
						<td class="value">
									<t:dictSelect field="statenow" type="list"
										typeGroupCode="lostst" defaultVal="${lostFoundPage.statenow}" hasLabel="false"  title="状态"></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">状态</label>
						</td>

					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/web/lostfound/lostFound.js"></script>