<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>

<t:datagrid name="typeGridTree" title="栏目管理" actionUrl="cmsMenuController.do?typeGridTree" idField="id" treegrid="true" sortName="siteid" sortOrder="asc" pagination="false">
	<t:dgCol title="编号" field="id" treefield="id" hidden="false"></t:dgCol>
	<t:dgCol title="栏目名称" field="name" width="50" treefield="text"></t:dgCol>
	<t:dgCol title="所属站点" field="siteid" width="50" treefield="code" dictionary="weixin_cms_site,id,SITE_NAME" query="true"></t:dgCol>
    <t:dgCol title="栏目类型" field="type" treefield="src" dictionary="cms_menu" ></t:dgCol>
    <t:dgCol title="是否显示" field="menuStatus" treefield="note" dictionary="yesorno"></t:dgCol>
    <t:dgCol title="排序" field="sortid" treefield="order"></t:dgCol>
    <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
    <t:dgDelOpt title="删除" url="cmsMenuController.do?del&id={id}" />
    <t:dgToolBar title="增加栏目" icon="icon-add" url="cmsMenuController.do?addorupdate" funname="add" width="100%" height="100%"></t:dgToolBar>
    <t:dgToolBar title="编辑栏目" icon="icon-edit" url="cmsMenuController.do?addorupdate" funname="update" width="100%" height="100%"></t:dgToolBar>
</t:datagrid>
