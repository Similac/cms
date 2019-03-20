<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="weblogList" checkbox="true" fitColumns="false" title="日志" actionUrl="weblogController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="访问页面"  field="logPage"  hidden="true"  queryMode="single"  ></t:dgCol>
   <t:dgCol title="ip地址"  field="ipAddress"  hidden="true" query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="访问方式"  field="logType"  hidden="true"  queryMode="single"  width="60"></t:dgCol>
   <t:dgCol title="访问站点"  field="logSite"  hidden="true" dictionary="weixin_cms_site,SITE_CODE,SITE_NAME"  queryMode="single" query="true" ></t:dgCol>
   <t:dgCol title="访问时间"  field="createDate" formatter="yyyy-MM-dd hh:mm:ss" hidden="true" query="true"  queryMode="group" ></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="weblogController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="weblogController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="weblogController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="weblogController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="weblogController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/web/log/weblogList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
     $("#weblogListtb").find("input[name='createDate_begin']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
     $("#weblogListtb").find("input[name='createDate_end']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});

 });
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'weblogController.do?upload', "weblogList");
}

//导出
function ExportXls() {
	JeecgExcelExport("weblogController.do?exportXls","weblogList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("weblogController.do?exportXlsByT","weblogList");
}
 </script>