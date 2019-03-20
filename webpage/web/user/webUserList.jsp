<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="webUserList" checkbox="true" fitColumns="false" title="用户列表" actionUrl="webUserController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="自动增长编号"  field="id"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="读者证件号"  field="personnelno"  hidden="true" query="true" queryMode="single" width="120"></t:dgCol>
   <t:dgCol title="密码"  field="password"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="pw"  field="pw"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="校园卡号"  field="accno"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="姓名"  field="accname"  hidden="true"  query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="电话"  field="phone"  hidden="true"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="email"  field="email"  hidden="true"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="上次登录时间"  field="lastlogintime" formatter="yyyy-MM-dd" hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="上次登录ip"  field="lastloginip"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="昵称"  field="nickname"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="注册时间"  field="regtime" formatter="yyyy-MM-dd" hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="是否vip"  field="vip"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="角色"  field="roleid"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="是否绑定"  field="isbind"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="性别"  field="sex"  hidden="true"  dictionary="sex" queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="身份"  field="pidcode"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="部门"  field="dept"  hidden="true"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="状态"  field="state"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="身份"  field="identity"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="创建时间"  field="createtime" formatter="yyyy-MM-dd" hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="用户标记"  field="userflag"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="用户身份"  field="ident"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="学院"  field="college"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="系所"  field="department"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="专业"  field="major"  hidden="false"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>

   <t:dgToolBar title="查看" icon="icon-search" url="webUserController.do?goUpdate" funname="detail"></t:dgToolBar>

  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/web/user/webUserList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 			$("#webUserListtb").find("input[name='lastlogintime_begin']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 			$("#webUserListtb").find("input[name='lastlogintime_end']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 			$("#webUserListtb").find("input[name='regtime_begin']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 			$("#webUserListtb").find("input[name='regtime_end']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 			$("#webUserListtb").find("input[name='createtime_begin']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 			$("#webUserListtb").find("input[name='createtime_end']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 });
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'webUserController.do?upload', "webUserList");
}

//导出
function ExportXls() {
	JeecgExcelExport("webUserController.do?exportXls","webUserList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("webUserController.do?exportXlsByT","webUserList");
}
 </script>