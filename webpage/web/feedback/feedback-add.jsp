<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>留言评论</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="feedbackController.do?doAdd" tiptype="1">
					<input id="id" name="id" type="hidden" value="${feedbackPage.id }">
					<input id="sysid" name="sysid" type="hidden" value="${feedbackPage.sysid }">
					<input id="quoteid" name="quoteid" type="hidden" value="${feedbackPage.quoteid }">
					<input id="lastreply" name="lastreply" type="hidden" value="${feedbackPage.lastreply }">
					<input id="parentid" name="parentid" type="hidden" value="${feedbackPage.parentid }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							标题:
						</label>
					</td>
					<td class="value">
					     	 <input id="title" name="title" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">标题</label>
						</td>
            </tr>
            <tr>
                <td align="right">
                    <label class="Validform_label">
                        内容:
                    </label>
                </td>
                <td class="value">
                    <textarea  name="content" rows="3" cols="90"></textarea>

                    <span class="Validform_checktip"></span>
                    <label class="Validform_label" style="display: none;">内容</label>
                </td>
            </tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							发布时间:
						</label>
					</td>
					<td class="value">
							   <input id="createtime" name="createtime" type="text" style="width: 150px" 
					      						class="Wdate" onClick="WdatePicker()"
								                
								               >    
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">发布时间</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							发布者证件号:
						</label>
					</td>
					<td class="value">
					     	 <input id="postuser" name="postuser" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">发布者证件号</label>
						</td>
				<tr>
					<td align="right">
						<label class="Validform_label">
							发布者姓名:
						</label>
					</td>
					<td class="value">
					     	 <input id="postusername" name="postusername" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">发布者姓名</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							审核:
						</label>
					</td>
					<td class="value">
							  <t:dictSelect field="checked" type="list"
									typeGroupCode="yesorno" defaultVal="${feedbackPage.checked}" hasLabel="false"  title="审核"></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">审核</label>
						</td>
				<tr>
					<td align="right">
						<label class="Validform_label">
							是否馆员:
						</label>
					</td>
					<td class="value">
							  <t:dictSelect field="adminreply" type="list"
									typeGroupCode="yesorno" defaultVal="${feedbackPage.adminreply}" hasLabel="false"  title="是否馆员"></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">是否馆员</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							评论点:
						</label>
					</td>
					<td class="value">
					     	 <input id="sysname" name="sysname" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">评论点</label>
						</td>
				<tr>
					<td align="right">
						<label class="Validform_label">
							点击数:
						</label>
					</td>
					<td class="value">
					     	 <input id="hits" name="hits" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">点击数</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							是否置顶:
						</label>
					</td>
					<td class="value">
							  <t:dictSelect field="keeptop" type="list"
									typeGroupCode="yesorno" defaultVal="${feedbackPage.keeptop}" hasLabel="false"  title="是否置顶"></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">是否置顶</label>
						</td>
				<tr>
					<td align="right">
						<label class="Validform_label">
							回复数:
						</label>
					</td>
					<td class="value">
					     	 <input id="replys" name="replys" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">回复数</label>
						</td>
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/web/feedback/feedback.js"></script>		