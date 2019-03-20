<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<script type="text/javascript">
	$('#addAssetsMoveBtn').linkbutton({   
	    iconCls: 'icon-add'  
	});  
	$('#delAssetsMoveBtn').linkbutton({   
	    iconCls: 'icon-remove'  
	}); 
	$('#addAssetsMoveBtn').bind('click', function(){   
 		 var tr =  $("#add_assetsMove_table_template tr").clone();
	 	 $("#add_assetsMove_table").append(tr);
	 	 resetTrNum('add_assetsMove_table');
	 	 return false;
    });  
	$('#delAssetsMoveBtn').bind('click', function(){   
      	$("#add_assetsMove_table").find("input:checked").parent().parent().remove();   
        resetTrNum('add_assetsMove_table'); 
        return false;
    }); 
    $(document).ready(function(){
    	$(".datagrid-toolbar").parent().css("width","auto");
    	if(location.href.indexOf("load=detail")!=-1){
			$(":input").attr("disabled","true");
			$(".datagrid-toolbar").hide();
		}
		//将表格的表头固定
	    $("#assetsMove_table").createhftable({
	    	height:'300px',
			width:'auto',
			fixFooter:false
			});
    });
</script>
<div style="padding: 3px; height: 25px;width:auto;" class="datagrid-toolbar">
	<a id="addAssetsMoveBtn" href="#">添加</a> <a id="delAssetsMoveBtn" href="#">删除</a> 
</div>
<table border="0" cellpadding="2" cellspacing="0" id="assetsMove_table">
	<tr bgcolor="#E6E6E6">
		<td align="center" bgcolor="#EEEEEE">序号</td>
		<td align="center" bgcolor="#EEEEEE">操作</td>
				  <td align="left" bgcolor="#EEEEEE">
						调配时间
				  </td>
				  <td align="left" bgcolor="#EEEEEE">
						调出部门
				  </td>
				  <td align="left" bgcolor="#EEEEEE">
						调入部门
				  </td>
				  <td align="left" bgcolor="#EEEEEE">
						使用人
				  </td>
				  <td align="left" bgcolor="#EEEEEE">
						前使用人
				  </td>
				  <td align="left" bgcolor="#EEEEEE">
						调配原因
				  </td>
				  <td align="left" bgcolor="#EEEEEE">
						经手人
				  </td>
	</tr>
	<tbody id="add_assetsMove_table">	
	<c:if test="${fn:length(assetsMoveList)  <= 0 }">
			<tr>
				<td align="center"><div style="width: 25px;" name="xh">1</div></td>
				<td align="center"><input style="width:20px;"  type="checkbox" name="ck"/></td>
					<input name="assetsMoveList[0].id" type="hidden"/>
					<input name="assetsMoveList[0].assetsid" type="hidden"/>
				  <td align="left">
							<input name="assetsMoveList[0].modate" maxlength="0" 
					  		type="text" class="Wdate" onClick="WdatePicker()"  style="width:120px;"
					                
					               >  
					  <label class="Validform_label" style="display: none;">调配时间</label>
					</td>
				  <td align="left">
					  	<input name="assetsMoveList[0].moout" maxlength="36" 
					  		type="text" class="inputxt"  style="width:120px;">
					  <label class="Validform_label" style="display: none;">调出部门</label>
					</td>
				  <td align="left">
					  	<input name="assetsMoveList[0].moin" maxlength="36" 
					  		type="text" class="inputxt"  style="width:120px;">
					  <label class="Validform_label" style="display: none;">调入部门</label>
					</td>
				  <td align="left">
					  	<input name="assetsMoveList[0].nowuser" maxlength="50" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">使用人</label>
					</td>
				  <td align="left">
					  	<input name="assetsMoveList[0].beuser" maxlength="50" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">前使用人</label>
					</td>
				  <td align="left">
					  	<input name="assetsMoveList[0].mocau" maxlength="100" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">调配原因</label>
					</td>
				  <td align="left">
					  	<input name="assetsMoveList[0].mohand" maxlength="50" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">经手人</label>
					</td>
   			</tr>
	</c:if>
	<c:if test="${fn:length(assetsMoveList)  > 0 }">
		<c:forEach items="${assetsMoveList}" var="poVal" varStatus="stuts">
			<tr>
				<td align="center"><div style="width: 25px;" name="xh">${stuts.index+1 }</div></td>
				<td align="center"><input style="width:20px;"  type="checkbox" name="ck" /></td>
					<input name="assetsMoveList[${stuts.index }].id" type="hidden" value="${poVal.id }"/>
					<input name="assetsMoveList[${stuts.index }].assetsid" type="hidden" value="${poVal.assetsid }"/>
				   <td align="left">
							<input name="assetsMoveList[${stuts.index }].modate" maxlength="0" 
					  		type="text" class="Wdate" onClick="WdatePicker()"  style="width:120px;"
					                
					                value="<fmt:formatDate value='${poVal.modate}' type="date" pattern="yyyy-MM-dd"/>">  
					  <label class="Validform_label" style="display: none;">调配时间</label>
				   </td>
				   <td align="left">
					  	<input name="assetsMoveList[${stuts.index }].moout" maxlength="36" 
					  		type="text" class="inputxt"  style="width:120px;" value="${poVal.moout }">
					  <label class="Validform_label" style="display: none;">调出部门</label>
				   </td>
				   <td align="left">
					  	<input name="assetsMoveList[${stuts.index }].moin" maxlength="36" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					                value="${poVal.moin }">
					  <label class="Validform_label" style="display: none;">调入部门</label>
				   </td>
				   <td align="left">
					  	<input name="assetsMoveList[${stuts.index }].nowuser" maxlength="50" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					                value="${poVal.nowuser }">
					  <label class="Validform_label" style="display: none;">使用人</label>
				   </td>
				   <td align="left">
					  	<input name="assetsMoveList[${stuts.index }].beuser" maxlength="50" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					                value="${poVal.beuser }">
					  <label class="Validform_label" style="display: none;">前使用人</label>
				   </td>
				   <td align="left">
					  	<input name="assetsMoveList[${stuts.index }].mocau" maxlength="100" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					                value="${poVal.mocau }">
					  <label class="Validform_label" style="display: none;">调配原因</label>
				   </td>
				   <td align="left">
					  	<input name="assetsMoveList[${stuts.index }].mohand" maxlength="50" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					                value="${poVal.mohand }">
					  <label class="Validform_label" style="display: none;">经手人</label>
				   </td>
   			</tr>
		</c:forEach>
	</c:if>	
	</tbody>
</table>
