<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="dbRestypeList" checkbox="true" fitColumns="false" title="电子资源类型" actionUrl="dbRestypeController.do?datagrid" idField="id" fit="true" sortName="sortid" sortOrder="asc" queryMode="group">
   <t:dgCol title="id"  field="id"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="资源类型名"  field="restypename"  hidden="true"  queryMode="group"  width="160"></t:dgCol>
   <t:dgCol title="类型英文名"  field="restypeenname"  hidden="true"  queryMode="group"  width="180"></t:dgCol>
   <t:dgCol title="排序"  field="sortid"  hidden="true"  queryMode="group"  width="60"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="dbRestypeController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="dbRestypeController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="dbRestypeController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="dbRestypeController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="dbRestypeController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/web/esource/dbRestypeList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 


//导出
function ExportXls() {
	JeecgExcelExport("dbRestypeController.do?exportXls","dbRestypeList");
}


 </script>