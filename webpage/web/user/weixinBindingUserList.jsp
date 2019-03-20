<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="weixinBindingUserList" checkbox="true" fitColumns="false" title="绑定微信用户" actionUrl="weixinBindingUserController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate" formatter="yyyy-MM-dd" hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate" formatter="yyyy-MM-dd" hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="微信号"  field="weixinAccount"  hidden="true"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="绑定用户"  field="userId"  hidden="true"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="姓名"  field="userName"  hidden="true"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="卡号"  field="userAccno"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="专业"  field="userMajor"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="校区"  field="userCampus"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="Email"  field="userEmail"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="电话"  field="userPhone"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="weixinBindingUserController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="weixinBindingUserController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="weixinBindingUserController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="weixinBindingUserController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="weixinBindingUserController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/web/user/weixinBindingUserList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 			$("#weixinBindingUserListtb").find("input[name='createDate_begin']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 			$("#weixinBindingUserListtb").find("input[name='createDate_end']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 			$("#weixinBindingUserListtb").find("input[name='updateDate_begin']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 			$("#weixinBindingUserListtb").find("input[name='updateDate_end']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 });
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'weixinBindingUserController.do?upload', "weixinBindingUserList");
}

//导出
function ExportXls() {
	JeecgExcelExport("weixinBindingUserController.do?exportXls","weixinBindingUserList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("weixinBindingUserController.do?exportXlsByT","weixinBindingUserList");
}
 </script>