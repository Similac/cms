<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="columnList" title="栏目管理" actionUrl="cmsMenuController.do?datagrid" idField="id" fit="true" sortName="siteid" sortOrder="asc">
   <t:dgCol title="编号" field="id" treefield="id" hidden="false"></t:dgCol>
   <t:dgCol title="栏目名称" field="name" query="true"></t:dgCol>
   <t:dgCol title="所属站点" field="siteid" dictionary="weixin_cms_site,id,SITE_NAME" query="true"></t:dgCol>
   <t:dgCol title="栏目类型" field="type" dictionary="cms_menu" ></t:dgCol>
   <t:dgCol title="栏目级数" field="menuLevel" dictionary="cms_level" ></t:dgCol>
   <t:dgCol title="上级栏目" field="parentid" dictionary="weixin_cms_menu,id,name"></t:dgCol>
   <t:dgCol title="是否显示" field="menuStatus" dictionary="yesorno"></t:dgCol>

   <t:dgCol title="排序" field="sortid" ></t:dgCol>
   <t:dgCol title="操作" field="opt"></t:dgCol>
   <t:dgDelOpt title="删除" url="cmsMenuController.do?del&id={id}" />
   <t:dgToolBar title="增加栏目" icon="icon-add" url="cmsMenuController.do?addorupdate" funname="add" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="编辑栏目" icon="icon-edit" url="cmsMenuController.do?addorupdate" funname="update" width="100%" height="100%"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
<script type="text/javascript">
function add(title,url, id) {
var rowData = $('#'+id).datagrid('getSelected');
if (rowData) {
url += '&menu.id='+rowData.id;
}
add(title,url,'columnList');
}
</script>
