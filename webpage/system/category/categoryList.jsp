<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
	<div region="center" style="padding: 1px;">
		<t:datagrid name="categoryList" title="分类管理"
			actionUrl="categoryController.do?datagrid" idField="id"
			treegrid="true" pagination="false">
			<t:dgCol title="类型名称" field="name" treefield="text" width="300"></t:dgCol>
			<t:dgCol title="图标" field="TSIcon_iconPath" treefield="code"
				image="true"></t:dgCol>
			<t:dgCol title="类型编码" field="code" treefield="id"></t:dgCol>
			<t:dgCol title="操作" field="opt" width="100"></t:dgCol>
			<t:dgDelOpt title="删除"
				url="categoryController.do?del&id={src}" />
			<t:dgToolBar icon="icon-add" title="录入"
				url="categoryController.do?addorupdate" funname="addCategory"></t:dgToolBar>
			<t:dgToolBar icon="icon-edit" title="编辑"
				url="categoryController.do?addorupdate" funname="updateCategory"></t:dgToolBar>
		</t:datagrid>
	</div>
</div>
<script type="text/javascript">
	function addCategory(title, url, id) {
		var rowData = $('#' + id).datagrid('getSelected');
		if (rowData) {
			url += '&parent.code=' + rowData.id;
		}
		add(title, url, 'categoryList', 300, 340);
	}
	
	function updateCategory(title, url, id) {
		var rowData = $('#' + id).datagrid('getSelected');
		if (rowData) {
			url += '&code=' + rowData.id;
		}
		update(title, url, 'categoryList', 300, 340);
	}
</script>