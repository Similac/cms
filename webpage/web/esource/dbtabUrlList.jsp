<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<script type="text/javascript">
	$('#addBtn').linkbutton({   
	    iconCls: 'icon-add'  
	});  
	$('#delBtn').linkbutton({   
	    iconCls: 'icon-remove'  
	}); 
	$('#addBtn').bind('click', function(){   
 		 var tr =  $("#add_dbtabUrl_table_template tr").clone();
	 	 $("#add_dbtabUrl_table").append(tr);
	 	 resetTrNum('add_dbtabUrl_table');
    });  
	$('#delBtn').bind('click', function(){   
       $("#add_dbtabUrl_table").find("input:checked").parent().parent().remove();
        resetTrNum('add_dbtabUrl_table');
    });
	$(document).ready(function(){
		$(".datagrid-toolbar").parent().css("width","auto");
		//将表格的表头固定
	    $("#dbtabUrl_table").createhftable({
	    	height:'200px',
			width:'auto',
			fixFooter:false
			});
});
</script>

<div style="padding: 3px; height: 25px; width: width: 900px;" class="datagrid-toolbar"><a id="addBtn" href="#">添加</a> <a id="delBtn" href="#">删除</a></div>
<table border="0" cellpadding="2" cellspacing="0" id="dbtabUrl_table">
	<tr bgcolor="#E6E6E6">
		<td align="center" bgcolor="#EEEEEE">序号</td>
		<td align="left" bgcolor="#EEEEEE">入口地址</td>
		<td align="left" bgcolor="#EEEEEE">入口名称</td>
		<td align="left" bgcolor="#EEEEEE">英文入口名称</td>
		<td align="left" bgcolor="#EEEEEE">状态</td>
		<td align="left" bgcolor="#EEEEEE">登录信息</td>
		<td align="left" bgcolor="#EEEEEE">英文登录信息</td>
		<td align="left" bgcolor="#EEEEEE">停用原因</td>
	</tr>
	<tbody id="add_dbtabUrl_table">
		<c:if test="${fn:length(DburlEntityList)  <= 0 }">
			<tr>
				<td align="center"><input style="width: 20px;" type="checkbox" name="ck"/></td>
				<td align="left"><input nullmsg="请输入url！"   name="DburlEntityList[0].url" maxlength="100" type="text" value=""style="width: 300px;"></td>
				<td align="left"><input  name="DburlEntityList[0].urltxt" maxlength="10" type="text" value="" style="width: 120px;"></td>
				<td align="left"><input  name="DburlEntityList[0].urltxtEn" maxlength="10" type="text" value="" style="width: 120px;"></td>

				<td align="left"><t:dictSelect field="dbtabUrlList[0].urlstate" typeGroupCode="state" hasLabel="false" defaultVal="${poVal.urlstate}"></t:dictSelect></td>

				<td align="left"><input  name="DburlEntityList[0].urllogin" maxlength="10" type="text" value="" style="width: 120px;"></td>
				<td align="left"><input  name="DburlEntityList[0].urlloginEn" maxlength="10" type="text" value="" style="width: 120px;"></td>
				<td align="left"><input  name="DburlEntityList[0].urlmemo" maxlength="10" type="text" value="" style="width: 120px;"></td>

			</tr>
		</c:if>
		<c:if test="${fn:length(DburlEntityList)  > 0 }">
			<c:forEach items="${DburlEntityList}" var="poVal" varStatus="stuts">
				<tr>
					<td align="center"><input style="width: 20px;" type="checkbox" name="ck" value="${poVal.id}"/></td>
					<td align="left"><input nullmsg="请输入url！"   name="DburlEntityList[${stuts.index }].url" maxlength="100" type="text" value="${poVal.url}"style="width: 300px;"></td>
					<td align="left"><input  name="DburlEntityList[${stuts.index }].urltxt" maxlength="10" type="text" value="${poVal.urltxt}" style="width: 120px;"></td>
					<td align="left"><input  name="DburlEntityList[${stuts.index }].urltxtEn" maxlength="10" type="text" value="${poVal.urltxtEn}" style="width: 120px;"></td>

					<td align="left"><t:dictSelect field="DburlEntityList[${stuts.index }].urlstate" typeGroupCode="state" hasLabel="false" defaultVal="${poVal.urlstate}"></t:dictSelect></td>

					<td align="left"><input  name="DburlEntityList[${stuts.index }].urllogin" maxlength="10" type="text" value="${poVal.urllogin}" style="width: 120px;"></td>
					<td align="left"><input  name="DburlEntityList[${stuts.index }].urlloginEn" maxlength="10" type="text" value="${poVal.urlloginEn}" style="width: 120px;"></td>
					<td align="left"><input  name="DburlEntityList[${stuts.index }].urlmemo" maxlength="10" type="text" value="${poVal.urlmemo}" style="width: 120px;"></td>
				</tr>
			</c:forEach>
		</c:if>
	</tbody>
</table>
