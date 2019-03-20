<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>电子资源管理</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
	 <script type="text/javascript"  charset="utf-8" src="plug-in/ueditor/ueditor.config.js"></script>
	 <script type="text/javascript"  charset="utf-8" src="plug-in/ueditor/ueditor.all.min.js"></script>

	 <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
	 <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
	 <script type="text/javascript" charset="utf-8" src="plug-in/ueditor/lang/zh-cn/zh-cn.js"></script>
	 <script type="text/javascript">
		 //初始化下标
		 function resetTrNum(tableId) {
			 $tbody = $("#"+tableId+"");
			 $tbody.find('>tr').each(function(i){
				 $(':input, select', this).each(function(){
					 var $this = $(this), name = $this.attr('name'), val = $this.val();
					 if(name!=null){
						 if (name.indexOf("#index#") >= 0){
							 $this.attr("name",name.replace('#index#',i));
						 }else{
							 var s = name.indexOf("[");
							 var e = name.indexOf("]");
							 var new_name = name.substring(s+1,e);
							 $this.attr("name",name.replace(new_name,i));
						 }
					 }
				 });
			 });
		 }
	 </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" callback=" myFunction()" action="dbtabController.do?doAddOrUpdate"  tiptype="1">
					<input id="id" name="id" type="hidden" value="${dbtabPage.id }">
	                <input id="isdelete" name="isdelete" type="hidden" value="0">

	  <c:choose>
          <c:when test="${dbtabPage.hits ==null || dbtabPage.hits ==''}">
              <input id="hits" name="hits" type="hidden" value="0">
          </c:when>
          <c:otherwise>
              <input id="hits" name="hits" type="hidden" value="${dbtabPage.hits }">
          </c:otherwise>
      </c:choose>
					<input id="createDate" name="createDate" type="hidden" value="${dbtabPage.createDate }">
					<input id="createName" name="createName" type="hidden" value="${dbtabPage.createName }">
					<input id="updateName" name="updateName" type="hidden" value="${dbtabPage.updateName }">
		<table  cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right" style="width: 80px">
							<label class="Validform_label">
								<font color="red">*</font>资源名称:
							</label>
						</td>
						<td class="value">
						     	 <input id="cnname" name="cnname" type="text" style="width: 300px" class="inputxt"
									               
									                 value='${dbtabPage.cnname}' datatype="*" >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">资源名称</label>
						</td>
                        <td align="right">
                            <label class="Validform_label">
								<font color="red">*</font>语言:
                            </label>
                        </td>
                        <td class="value">
                            <t:dictSelect field="langcode" id="langcode" typeGroupCode="language" hasLabel="false" defaultVal="${dbtabPage.langcode}"  ></t:dictSelect>
                            <span class="Validform_checktip"></span>
                            <label class="Validform_label" style="display: none;">语言</label>
                        </td>
                        <td align="right">

                        </td>
                        <td class="value">

                        </td>
					</tr>

					<tr>
                        <td align="right" style="width: 80px">
                            <label class="Validform_label">
                                英文名称:
                            </label>
                        </td>
                        <td class="value">
                            <input id="enname" name="enname" type="text" style="width: 300px" class="inputxt"

                                   value='${dbtabPage.enname}'>
                            <span class="Validform_checktip"></span>
                            <label class="Validform_label" style="display: none;">英文名称</label>
                        </td>
						<td align="right">
							<label class="Validform_label" style="">
								<font color="red">*</font>排序:
							</label>
						</td>
						<td class="value">
							<input id="sortid" name="sortid" type="text" style="width: 150px" class="inputxt"

								   value='${dbtabPage.sortid}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">排序</label>
						</td>
						<td align="right">
							<label class="Validform_label">
								<font color="red">*</font>首字母:
							</label>
						</td>
						<td class="value">
							<t:dictSelect field="firstchar" id="firstchar" typeGroupCode="en_letter" hasLabel="false" defaultVal="${dbtabPage.firstchar}"></t:dictSelect>
                            <span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">首字母</label>
						</td>
					</tr>

					<tr>
                        <td align="right">
                            <label class="Validform_label">
                                培训教程链接:
                            </label>
                        </td>
                        <td class="value">
                            <input id="contactinfo" name="contactinfo" type="text" style="width: 300px" class="inputxt"

                                   value='${dbtabPage.contactinfo}'>
                            <span class="Validform_checktip"></span>
                            <label class="Validform_label" style="display: none;">培训教程链接</label>
                        </td>
						<td align="right">
							<label class="Validform_label">
								<font color="red">*</font>订购状态:
							</label>
						</td>
						<td class="value">
							<t:dictSelect field="orderstate" id="orderstate" typeGroupCode="order_status" hasLabel="false" defaultVal="${dbtabPage.orderstate}" ></t:dictSelect>


							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">订购状态</label>
						</td>

						<td align="right">
							<label class="Validform_label">
								试用截止日期:
							</label>
						</td>
						<td class="value">
									  <input id="validtime" name="validtime" type="text" style="width: 150px" 
						      						class="Wdate" onClick="WdatePicker()"
									                
						      						 value='<fmt:formatDate value='${dbtabPage.validtime}' type="date" pattern="yyyy-MM-dd"/>'>    
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">试用截止日期</label>
						</td>
					</tr>
					<tr>

					</tr>
					<tr>
                        <td align="right">
                            <label class="Validform_label">
                                数据库生产商:
                            </label>
                        </td>
                        <td class="value">
                            <input id="dataprovider" name="dataprovider" type="text" style="width: 300px" class="inputxt"

                                   value='${dbtabPage.dataprovider}'>
                            <span class="Validform_checktip"></span>
                            <label class="Validform_label" style="display: none;">数据库生产商</label>
                        </td>
						<td align="right">
							<label class="Validform_label">
								收录时间:
							</label>
						</td>
						<td class="value">
						     	 <input id="period" name="period" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${dbtabPage.period}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">收录时间</label>
						</td>
						<td align="right">
							<label class="Validform_label">
								更新周期:
							</label>
						</td>
						<td class="value">
						     	 <input id="refreshcycle" name="refreshcycle" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${dbtabPage.refreshcycle}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">更新周期</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								<font color="red">*</font>资源首页显示:
							</label>
						</td>
						<td class="value">
                            <t:dictSelect field="isshow" id="isshow" typeGroupCode="yesorno" hasLabel="false" defaultVal="${dbtabPage.isshow}" ></t:dictSelect>
                            <span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">isshow</label>
						</td>
						<td align="right">
							<label class="Validform_label">
								访问方式:
							</label>
						</td>
						<td class="value">
							<input id="accessmode" name="accessmode" type="text" style="width: 150px" class="inputxt"

								   value='${dbtabPage.accessmode}'>

							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">访问方式</label>
						</td>
						<td align="right">
							<label class="Validform_label">
								<font color="red">*</font>使用范围:
							</label>
						</td>
						<td class="value">
							<t:dictSelect field="arealimit" id="arealimit" typeGroupCode="db_range" hasLabel="false" defaultVal="${dbtabPage.arealimit}"></t:dictSelect>


							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">使用范围</label>
						</td>
					</tr>
					<tr>


					</tr>

					<tr>
						<td align="right">
							<label class="Validform_label">
								<font color="red">*</font>是否允许评论:
							</label>
						</td>
						<td class="value">
                            <t:dictSelect field="iscomment" id="iscomment" typeGroupCode="yesorno" hasLabel="false" defaultVal="${dbtabPage.iscomment}" ></t:dictSelect>

                            <span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">是否允许评论</label>
						</td>
						<td align="right">
							<label class="Validform_label">
								收录种数:
							</label>
						</td>
						<td class="value">
						     	 <input id="genusamount" name="genusamount" type="text"  class="inputxt"
									               
									                 value='${dbtabPage.genusamount}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">收录种数</label>
						</td>
						<td align="right">
							<label class="Validform_label">
								收录文章数:
							</label>
						</td>
						<td class="value">
							<input id="articleamount" name="articleamount" type="text"  class="inputxt"

								   value='${dbtabPage.articleamount}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">收录文章数</label>
						</td>
					</tr>
			   <tr>
				<td align="right">
					<label class="Validform_label">
						描述:
					</label>
				</td>
				<td  style="height:300px">
					<textarea name="detailinfo" id="detailinfo" style="height: 300px">${dbtabPage.detailinfo}</textarea>
					<script type="text/javascript">
						var editor = UE.getEditor('detailinfo',{
                            autoHeightEnabled: false, initialFrameHeight:160,minFrameHeight:160});
					</script>

					<span class="Validform_checktip"></span>
					<label class="Validform_label" style="display: none;">描述</label>
				</td>
				<td align="right">
					<label class="Validform_label">
						英文描述:
					</label>
				</td>
				<td  colspan="3" style="height:300px">
					<textarea id="endetailinfo" style="height:300px" name="endetailinfo">${dbtabPage.endetailinfo}</textarea>
					<script type="text/javascript">
						var editor = UE.getEditor('endetailinfo',{
                            autoHeightEnabled: false, initialFrameHeight:160,minFrameHeight:160});
					</script>
					<span class="Validform_checktip"></span>
					<label class="Validform_label" style="display: none;">英文描述</label>
				</td>
			</tr>

			</table>
	  <div style="width: auto; height: 200px;"><%-- 增加一个div，用于调节页面大小，否则默认太小 --%>
		  <div style="width: 690px; height: 1px;"></div>
		  <t:tabs id="tt" iframe="false" tabPosition="top" fit="false">
			  <t:tab href="dbtabController.do?dbtabUrlList&dbid=${dbtabPage.id}" icon="icon-search" title="链接入口" id="Url"></t:tab>
			  <t:tab href="dbtabController.do?dbtabSubjectList&dbid=${dbtabPage.id}" icon="icon-search" title="学科关联" id="SubjectList"></t:tab>
			  <t:tab href="dbtabController.do?dbtabTypeList&dbid=${dbtabPage.id}" icon="icon-search" title="资源类型关联" id="TypeList"></t:tab>

		  </t:tabs></div>
		</t:formvalid>
  <table  style="display: none">

	  <tbody id="add_dbtabUrl_table_template">

		  <tr>
			  <td align="center"><input style="width: 20px;" type="checkbox" name="ck" /></td>
			  <td align="left"><input nullmsg="请输入url！"   name="DburlEntityList[#index#].url" maxlength="100" type="text" value=""style="width: 300px;"></td>
			  <td align="left"><input  name="DburlEntityList[#index#].urltxt" maxlength="10" type="text" value="" style="width: 120px;"></td>
			  <td align="left"><input  name="DburlEntityList[#index#].urltxtEn" maxlength="10" type="text" value="" style="width: 120px;"></td>
			  <td align="left"><t:dictSelect field="DburlEntityList[#index#].urlstate" typeGroupCode="state" hasLabel="false"></t:dictSelect></td>
			  <td align="left"><input  name="DburlEntityList[#index#].urllogin" maxlength="10" type="text" value="" style="width: 120px;"></td>
			  <td align="left"><input  name="DburlEntityList[#index#].urlloginEn" maxlength="10" type="text" value="" style="width: 120px;"></td>
			  <td align="left"><input  name="DburlEntityList[#index#].urlmemo" maxlength="10" type="text" value="" style="width: 120px;"></td>

		  </tr>

	  </tbody>
  </table>

 </body>
  <script src = "webpage/web/esource/dbtab.js"></script>
 <script type="text/javascript">

 function myFunction()
 {
	 var item = $("select[name=orderstate] option[selected]").value;
	 if(item==""||item=="order_trail")
	 {
		 alert("试用");
	 }
	 var x=document.getElementById("orderstate").value;
	 console.log(x);
 }
 </script>