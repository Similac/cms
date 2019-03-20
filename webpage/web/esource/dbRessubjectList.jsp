<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="dbRessubjectList" checkbox="true" fitColumns="false" title="学科分类" actionUrl="dbRessubjectController.do?datagrid" sortName="sortid" sortOrder="asc" idField="id" fit="true" queryMode="group">
   <t:dgCol title="id"  field="id"  hidden="false"  queryMode="group"  width="40"></t:dgCol>
   <t:dgCol title="学科名称"  field="name"  hidden="true"  queryMode="group"  width="210"></t:dgCol>
   <t:dgCol title="英文名称"  field="subjectenname"  hidden="true"  queryMode="group"  width="280"></t:dgCol>
   <t:dgCol title="状态"  field="state"  hidden="true"  queryMode="group" dictionary="state" width="40"></t:dgCol>
   <t:dgCol title="排序"  field="sortid"  hidden="true"  queryMode="group"  width="40"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="dbRessubjectController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="dbRessubjectController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="dbRessubjectController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="dbRessubjectController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="dbRessubjectController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/web/esource/dbRessubjectList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 


//导出
function ExportXls() {
	JeecgExcelExport("dbRessubjectController.do?exportXls","dbRessubjectList");
}

 </script>