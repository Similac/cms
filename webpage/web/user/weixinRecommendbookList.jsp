<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="weixinRecommendbookList" checkbox="true" fitColumns="false" title="图书荐购" actionUrl="weixinRecommendbookController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="人事编号学号"  field="userId"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="姓名"  field="userName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="卡号"  field="userAccno"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="题名"  field="bookTitle"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="作者"  field="bookAuthor"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="ISBN"  field="bookIsbn"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="出版社"  field="bookOther"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="Email"  field="userEmail"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="电话"  field="userPhone"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="weixinRecommendbookController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="weixinRecommendbookController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="weixinRecommendbookController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="weixinRecommendbookController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="weixinRecommendbookController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/web/user/weixinRecommendbookList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'weixinRecommendbookController.do?upload', "weixinRecommendbookList");
}

//导出
function ExportXls() {
	JeecgExcelExport("weixinRecommendbookController.do?exportXls","weixinRecommendbookList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("weixinRecommendbookController.do?exportXlsByT","weixinRecommendbookList");
}
 </script>