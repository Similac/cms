<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="cmsArticleList" title="信息管理" actionUrl="cmsArticleController.do?datagrid" idField="id" fit="true" sortName="createDate" sortOrder="desc" queryMode="group">
   <t:dgCol title="编号" field="id" hidden="false"></t:dgCol>
   <t:dgCol title="标题" field="title" query="true"></t:dgCol>
   <t:dgCol title="所属站点" field="siteid" dictionary="weixin_cms_site,id,SITE_NAME" query="true"></t:dgCol>
   <t:dgCol title="所属栏目" field="columnId" dictionary="weixin_cms_menu,id,name" extendParams="" query="true"></t:dgCol>
   <t:dgCol title="摘要" field="summary" width="120"></t:dgCol>
   <t:dgCol title="创建时间" field="createDate" formatter="yyyy-MM-dd hh:mm:ss"></t:dgCol>
   <t:dgCol title="是否置顶" field="istop" dictionary="yesorno" ></t:dgCol>
      <t:dgCol title="是否评论" field="iscomment" dictionary="yesorno" ></t:dgCol>
   <t:dgCol title="浏览数" field="viewcount" ></t:dgCol>

   <t:dgCol title="图片名称" field="imageName" hidden="false"></t:dgCol>
   <t:dgCol title="图片地址" field="imageHref" hidden="false"></t:dgCol>
   <t:dgCol title="操作" field="opt"></t:dgCol>
   <t:dgDelOpt title="删除" url="cmsArticleController.do?del&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="cmsArticleController.do?addorupdate" funname="add" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="cmsArticleController.do?addorupdate" funname="update" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="cmsArticleController.do?addorupdate" funname="detail" width="100%" height="100%"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
<script type="text/javascript">
    $(document).ready(function(){
        //设置分类为树形选择框
        $('#columnId').combotree({
            url : 'cmsMenuController.do?combotree&siteId=&pCode=',
            panelHeight : 200,
            width : 157,
            onClick : function(node) {
                $(this).val(node.id);
            }
        });
        $.getJSON("cmsArticleController.do?userSiteList", function(data){
            $('#siteid').html("<option value=\"\">---请选择---</option>");
            for(var i=0;i<data.length;i++){
                $('#siteid').append("<option value=\""+data[i].id+"\">"+data[i].siteName+"</option>");
            }
        });

        $('#siteid').change(function(){
            var $thisval = $(this).val();
            $('#columnId').combotree({
                url : 'cmsMenuController.do?combotree&siteId='+$thisval+'&pCode=',
                panelHeight : 200,
                width : 157,
                required:true,
                onLoadSuccess: function (node,data) { //加载完成后,设置选中第一项
                    if(data.length>0){
                        $('#columnId').combotree('setValue',data[0].id);
                    }else{
                        $('#columnId').combotree('clear');
                    }
                }
            });
        });
    });
</script>