<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="dbtabList" checkbox="true" fitColumns="false" title="电子资源管理" actionUrl="dbtabController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="id"  field="id"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="资源名称"  field="cnname"  hidden="true" query="true" queryMode="single"  width="255"></t:dgCol>
   <t:dgCol title="语言"  field="langcode"  hidden="true" query="true" queryMode="single" dictionary="language" width="40"></t:dgCol>
   <t:dgCol title="资源类型"  field="restypecode"  hidden="false" dictionary="db_restype,id,RESTYPENAME" query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="首字母"  field="firstchar"  hidden="true"   query="true" queryMode="single"  width="60"></t:dgCol>
    <t:dgCol title="常用资源显示"  field="isshow"  hidden="true" dictionary="yesorno"   query="true" queryMode="single"  width="80"></t:dgCol>
   <t:dgCol title="使用范围"  field="accessmode"  hidden="false"  queryMode="group" dictionary="db_range" width="120"></t:dgCol>
   <t:dgCol title="订购状态"  field="orderstate"  hidden="true"  query="true" queryMode="single" dictionary="order_status" width="120"></t:dgCol>
    <t:dgCol title="点击数"  field="hits"  hidden="true"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="排序"  field="sortid"  hidden="true"  queryMode="group"  ></t:dgCol>

   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="dbtabController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="dbtabController.do?goAddOrUpdate" funname="add" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="dbtabController.do?goAddOrUpdate" funname="update" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="dbtabController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="dbtabController.do?goAddOrUpdate" funname="detail" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>

  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/web/esource/dbtabList.js"></script>		
 <script type="text/javascript">

//导出
function ExportXls() {
	JeecgExcelExport("dbtabController.do?exportXls","dbtabList");
}


 </script>