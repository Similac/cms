<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="assetsTypeList" checkbox="true" fitColumns="false" title="资产类型" actionUrl="assetsTypeController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="id"  field="id"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="类型名称"  field="typename"  hidden="true" query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="ftypeid"  field="ftypeid"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="所属类"  field="fname"  hidden="true"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="sname"  field="sname"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="assetsTypeController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="assetsTypeController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="assetsTypeController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="assetsTypeController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="assetsTypeController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/web/assets/assetsTypeList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'assetsTypeController.do?upload', "assetsTypeList");
}

//导出
function ExportXls() {
	JeecgExcelExport("assetsTypeController.do?exportXls","assetsTypeList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("assetsTypeController.do?exportXlsByT","assetsTypeList");
}
 </script>