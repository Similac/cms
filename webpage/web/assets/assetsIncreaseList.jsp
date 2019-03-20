<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<script type="text/javascript">
	$('#addAssetsIncreaseBtn').linkbutton({   
	    iconCls: 'icon-add'  
	});  
	$('#delAssetsIncreaseBtn').linkbutton({   
	    iconCls: 'icon-remove'  
	}); 
	$('#addAssetsIncreaseBtn').bind('click', function(){   
 		 var tr =  $("#add_assetsIncrease_table_template tr").clone();
	 	 $("#add_assetsIncrease_table").append(tr);
	 	 resetTrNum('add_assetsIncrease_table');
	 	 return false;
    });  
	$('#delAssetsIncreaseBtn').bind('click', function(){   
      	$("#add_assetsIncrease_table").find("input:checked").parent().parent().remove();   
        resetTrNum('add_assetsIncrease_table'); 
        return false;
    }); 
    $(document).ready(function(){
    	$(".datagrid-toolbar").parent().css("width","auto");
    	if(location.href.indexOf("load=detail")!=-1){
			$(":input").attr("disabled","true");
			$(".datagrid-toolbar").hide();
		}
		//将表格的表头固定
	    $("#assetsIncrease_table").createhftable({
	    	height:'300px',
			width:'auto',
			fixFooter:false
			});
    });
</script>
<div style="padding: 3px; height: 25px;width:auto;" class="datagrid-toolbar">
	<a id="addAssetsIncreaseBtn" href="#">添加</a> <a id="delAssetsIncreaseBtn" href="#">删除</a> 
</div>
<table border="0" cellpadding="2" cellspacing="0" id="assetsIncrease_table">
	<tr bgcolor="#E6E6E6">
		<td align="center" bgcolor="#EEEEEE">序号</td>
		<td align="center" bgcolor="#EEEEEE">操作</td>
				  <td align="left" bgcolor="#EEEEEE">
						增值资产编号
				  </td>
				  <td align="left" bgcolor="#EEEEEE">
						增值时间
				  </td>
				  <td align="left" bgcolor="#EEEEEE">
						增值金额
				  </td>
				  <td align="left" bgcolor="#EEEEEE">
						增值资产信息
				  </td>
				  <td align="left" bgcolor="#EEEEEE">
						原因
				  </td>
	</tr>
	<tbody id="add_assetsIncrease_table">	
	<c:if test="${fn:length(assetsIncreaseList)  <= 0 }">
			<tr>
				<td align="center"><div style="width: 25px;" name="xh">1</div></td>
				<td align="center"><input style="width:20px;"  type="checkbox" name="ck"/></td>
					<input name="assetsIncreaseList[0].id" type="hidden"/>
					<input name="assetsIncreaseList[0].assetsid" type="hidden"/>
				  <td align="left">
					  	<input name="assetsIncreaseList[0].assn" maxlength="50" 
					  		type="text" class="inputxt"  style="width:120px;">
					  <label class="Validform_label" style="display: none;">增值资产编号</label>
					</td>
				  <td align="left">
							<input name="assetsIncreaseList[0].incredate" maxlength="0" 
					  		type="text" class="Wdate" onClick="WdatePicker()"  style="width:120px;" >
					  <label class="Validform_label" style="display: none;">增值时间</label>
					</td>
				  <td align="left">
					  	<input name="assetsIncreaseList[0].increpri" maxlength="10" 
					  		type="text" class="inputxt"  style="width:120px;" >
					  <label class="Validform_label" style="display: none;">增值金额</label>
					</td>
				  <td align="left">
					  	<input name="assetsIncreaseList[0].innote" maxlength="100" 
					  		type="text" class="inputxt"  style="width:120px;">
					  <label class="Validform_label" style="display: none;">增值资产信息</label>
					</td>
				  <td align="left">
					  	<input name="assetsIncreaseList[0].incau" maxlength="100" 
					  		type="text" class="inputxt"  style="width:120px;">
					  <label class="Validform_label" style="display: none;">原因</label>
					</td>
   			</tr>
	</c:if>
	<c:if test="${fn:length(assetsIncreaseList) > 0 }">
		<c:forEach items="${assetsIncreaseList}" var="poVal" varStatus="stuts">
			<tr>
				<td align="center"><div style="width: 25px;" name="xh">${stuts.index+1 }</div></td>
				<td align="center"><input style="width:20px;"  type="checkbox" name="ck" /></td>
					<input name="assetsIncreaseList[${stuts.index }].id" type="hidden" value="${poVal.id }"/>
					<input name="assetsIncreaseList[${stuts.index }].assetsid" type="hidden" value="${poVal.assetsid }"/>
				   <td align="left">
					  	<input name="assetsIncreaseList[${stuts.index }].assn" maxlength="50" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					                value="${poVal.assn }">
					  <label class="Validform_label" style="display: none;">增值资产编号</label>
				   </td>
				   <td align="left">
							<input name="assetsIncreaseList[${stuts.index }].incredate" maxlength="0" 
					  		type="text" class="Wdate" onClick="WdatePicker()"  style="width:120px;"
					                
					                value="<fmt:formatDate value='${poVal.incredate}' type="date" pattern="yyyy-MM-dd"/>">  
					  <label class="Validform_label" style="display: none;">增值时间</label>
				   </td>
				   <td align="left">
					  	<input name="assetsIncreaseList[${stuts.index }].increpri" maxlength="10" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					                value="${poVal.increpri }">
					  <label class="Validform_label" style="display: none;">增值金额</label>
				   </td>
				   <td align="left">
					  	<input name="assetsIncreaseList[${stuts.index }].innote" maxlength="100" 
					  		type="text" class="inputxt"  style="width:120px;" value="${poVal.innote }">
					  <label class="Validform_label" style="display: none;">增值资产信息</label>
				   </td>
				   <td align="left">
					  	<input name="assetsIncreaseList[${stuts.index }].incau" maxlength="100" 
					  		type="text" class="inputxt"  style="width:120px;" value="${poVal.incau }">
					  <label class="Validform_label" style="display: none;">原因</label>
				   </td>
   			</tr>
		</c:forEach>
	</c:if>	
	</tbody>
</table>
