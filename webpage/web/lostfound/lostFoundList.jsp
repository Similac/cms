<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="lostFoundList" checkbox="true" fitColumns="false" title="失物招领" actionUrl="lostFoundController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="失物名称"  field="title"   query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="详细信息"  field="content"   queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="捡拾地点"  field="foundaddress"   queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="捡拾时间"  field="foundtime" formatter="yyyy-MM-dd"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="捡拾人"  field="name"    queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="领取地点"  field="address"  hidden="true"  queryMode="single" dictionary="lost" width="120"></t:dgCol>
   <t:dgCol title="状态"  field="statenow"  hidden="true"  query="true" queryMode="single" dictionary="lostst" width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="lostFoundController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="lostFoundController.do?goAdd" funname="add" width="1024" height="768"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="lostFoundController.do?goUpdate" funname="update" width="1024" height="768"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="lostFoundController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="lostFoundController.do?goUpdate" funname="detail"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
<script src = "webpage/web/lostfound/lostFound.js"></script>
