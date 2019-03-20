<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="assetsList" checkbox="true" fitColumns="false" title="资产列表" actionUrl="assetsController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="id"  field="id"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="资产编号"  field="assn"  hidden="true" query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="出厂号"  field="oldsn"  hidden="true" query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="设备名称"  field="asname"  hidden="true" query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="类型"  field="astype"  hidden="true" query="true" queryMode="single" dictionary="assets_type,id,typename" width="120"></t:dgCol>
   <t:dgCol title="状态"  field="asstate"  hidden="true" query="true" queryMode="single" dictionary="assets_state" width="120"></t:dgCol>
   <t:dgCol title="品牌型号"  field="asclass"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="厂家"  field="ascom"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="数量"  field="asnum"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="单价"  field="asprice"  hidden="true"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="经费来源"  field="outlay"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="购置日期"  field="buytime" formatter="yyyy-MM-dd" hidden="true" query="true" queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="所在部门"  field="nowdept"  hidden="true" query="true" queryMode="single" dictionary="t_s_depart,ID,departname" width="120"></t:dgCol>
   <t:dgCol title="前所在部门"  field="bedept"  hidden="true"  queryMode="single" dictionary="t_s_depart,ID,departname" width="120"></t:dgCol>
   <t:dgCol title="使用人"  field="nowuser"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="前使用人"  field="beuser"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="保修维修信息"  field="mainfo"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="配置信息"  field="asconfig"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="备注"  field="remark"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="assetsController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="assetsController.do?goAdd" funname="add" width="100%"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="assetsController.do?goUpdate" funname="update" width="100%"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="assetsController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="assetsController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/web/assets/assetsList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 			$("#assetsListtb").find("input[name='buytime_begin']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 			$("#assetsListtb").find("input[name='buytime_end']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 });
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'assetsController.do?upload', "assetsList");
}

//导出
function ExportXls() {
	JeecgExcelExport("assetsController.do?exportXls","assetsList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("assetsController.do?exportXlsByT","assetsList");
}
 </script>