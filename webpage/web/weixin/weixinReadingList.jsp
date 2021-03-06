<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="weixinReadingList" checkbox="true" fitColumns="false" title="书目导读" actionUrl="weixinReadingController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="标题"  field="title"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="介绍描述"  field="description"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="图片路径"  field="picurl"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="链接地址"  field="url"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="排序"  field="sortid"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="weixinReadingController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="weixinReadingController.do?goAdd" funname="add" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="weixinReadingController.do?goUpdate" funname="update" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="weixinReadingController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="weixinReadingController.do?goUpdate" funname="detail" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/web/weixin/weixinReadingList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'weixinReadingController.do?upload', "weixinReadingList");
}

//导出
function ExportXls() {
	JeecgExcelExport("weixinReadingController.do?exportXls","weixinReadingList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("weixinReadingController.do?exportXlsByT","weixinReadingList");
}
 </script>