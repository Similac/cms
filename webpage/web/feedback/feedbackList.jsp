<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="feedbackList" checkbox="true" fitColumns="false" title="留言评论" actionUrl="feedbackController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="id"  field="id"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="标题"  field="title"  hidden="true" query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="内容"  field="content"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="发布时间"  field="createtime" formatter="yyyy-MM-dd" hidden="true"  queryMode="group"></t:dgCol>
   <t:dgCol title="发布者证件号"  field="postuser"  hidden="true" query="true" queryMode="single" ></t:dgCol>
   <t:dgCol title="发布者姓名"  field="postusername"  hidden="true" query="true" queryMode="single" ></t:dgCol>
   <t:dgCol title="审核"  field="checked"  hidden="true"  queryMode="group" dictionary="yesorno" ></t:dgCol>
   <t:dgCol title="是否馆员"  field="adminreply"  hidden="false"  queryMode="group" dictionary="yesorno" ></t:dgCol>
   <t:dgCol title="sysid"  field="sysid"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="评论点"  field="sysname"  hidden="true"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="点击数"  field="hits"  hidden="true"  queryMode="group"  width="40"></t:dgCol>
    <t:dgCol title="回复数"  field="replys"  hidden="true"  queryMode="group"  width="40"></t:dgCol>
      <t:dgCol title="站点"  field="sitecode"  hidden="true"  dictionary="weixin_cms_site,SITE_CODE,SITE_NAME" queryMode="group"  ></t:dgCol>
      <t:dgCol title="引用ID"  field="quoteid"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="是否置顶"  field="keeptop"  hidden="true"  queryMode="single" dictionary="yesorno" width="60"></t:dgCol>
   <t:dgCol title="更新时间"  field="lastreply" formatter="yyyy-MM-dd" hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="夫ID"  field="parentid"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="feedbackController.do?doDel&id={id}" />
   <t:dgToolBar title="编辑" icon="icon-edit" url="feedbackController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="feedbackController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="feedbackController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/web/feedback/feedbackList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 			$("#feedbackListtb").find("input[name='createtime_begin']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 			$("#feedbackListtb").find("input[name='createtime_end']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 			$("#feedbackListtb").find("input[name='lastreply_begin']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 			$("#feedbackListtb").find("input[name='lastreply_end']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 });
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'feedbackController.do?upload', "feedbackList");
}

//导出
function ExportXls() {
	JeecgExcelExport("feedbackController.do?exportXls","feedbackList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("feedbackController.do?exportXlsByT","feedbackList");
}
 </script>