<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<script type="text/javascript">
	$('#addAssetsMaintainBtn').linkbutton({   
	    iconCls: 'icon-add'  
	});  
	$('#delAssetsMaintainBtn').linkbutton({   
	    iconCls: 'icon-remove'  
	}); 
	$('#addAssetsMaintainBtn').bind('click', function(){   
 		 var tr =  $("#add_assetsMaintain_table_template tr").clone();
	 	 $("#add_assetsMaintain_table").append(tr);
	 	 resetTrNum('add_assetsMaintain_table');
	 	 return false;
    });  
	$('#delAssetsMaintainBtn').bind('click', function(){   
      	$("#add_assetsMaintain_table").find("input:checked").parent().parent().remove();   
        resetTrNum('add_assetsMaintain_table'); 
        return false;
    }); 
    $(document).ready(function(){
    	$(".datagrid-toolbar").parent().css("width","auto");
    	if(location.href.indexOf("load=detail")!=-1){
			$(":input").attr("disabled","true");
			$(".datagrid-toolbar").hide();
		}
		//将表格的表头固定
	    $("#assetsMaintain_table").createhftable({
	    	height:'300px',
			width:'auto',
			fixFooter:false
			});
    });
</script>
<div style="padding: 3px; height: 25px;width:auto;" class="datagrid-toolbar">
	<a id="addAssetsMaintainBtn" href="#">添加</a> <a id="delAssetsMaintainBtn" href="#">删除</a> 
</div>
<table border="0" cellpadding="2" cellspacing="0" id="assetsMaintain_table">
	<tr bgcolor="#E6E6E6">
		<td align="center" bgcolor="#EEEEEE">序号</td>
		<td align="center" bgcolor="#EEEEEE">操作</td>
				  <td align="left" bgcolor="#EEEEEE">
						维修时间
				  </td>
				  <td align="left" bgcolor="#EEEEEE">
						维修金额
				  </td>
				  <td align="left" bgcolor="#EEEEEE">
						故障的现象原因
				  </td>
				  <td align="left" bgcolor="#EEEEEE">
						维修厂家信息
				  </td>
				  <td align="left" bgcolor="#EEEEEE">
						修复过程
				  </td>
				  <td align="left" bgcolor="#EEEEEE">
						更换配件信息
				  </td>
	</tr>
	<tbody id="add_assetsMaintain_table">	
	<c:if test="${fn:length(assetsMaintainList)  <= 0 }">
			<tr>
				<td align="center"><div style="width: 25px;" name="xh">1</div></td>
				<td align="center"><input style="width:20px;"  type="checkbox" name="ck"/></td>
					<input name="assetsMaintainList[0].id" type="hidden"/>
					<input name="assetsMaintainList[0].assetsid" type="hidden"/>
				  <td align="left">
							<input name="assetsMaintainList[0].madate" maxlength="0" 
					  		type="text" class="Wdate" onClick="WdatePicker()"  style="width:120px;"
					                
					               >  
					  <label class="Validform_label" style="display: none;">维修时间</label>
					</td>
				  <td align="left">
					  	<input name="assetsMaintainList[0].mapri" maxlength="10" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">维修金额</label>
					</td>
				  <td align="left">
					  	<input name="assetsMaintainList[0].maca" maxlength="200" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">故障的现象原因</label>
					</td>
				  <td align="left">
					  	<input name="assetsMaintainList[0].macom" maxlength="100" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">维修厂家信息</label>
					</td>
				  <td align="left">
					  	<input name="assetsMaintainList[0].macou" maxlength="200" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">修复过程</label>
					</td>
				  <td align="left">
					  	<input name="assetsMaintainList[0].chainfo" maxlength="200" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">更换配件信息</label>
					</td>
   			</tr>
	</c:if>
	<c:if test="${fn:length(assetsMaintainList)  > 0 }">
		<c:forEach items="${assetsMaintainList}" var="poVal" varStatus="stuts">
			<tr>
				<td align="center"><div style="width: 25px;" name="xh">${stuts.index+1 }</div></td>
				<td align="center"><input style="width:20px;"  type="checkbox" name="ck" /></td>
					<input name="assetsMaintainList[${stuts.index }].id" type="hidden" value="${poVal.id }"/>
					<input name="assetsMaintainList[${stuts.index }].assetsid" type="hidden" value="${poVal.assetsid }"/>
				   <td align="left">
							<input name="assetsMaintainList[${stuts.index }].madate" maxlength="0" 
					  		type="text" class="Wdate" onClick="WdatePicker()"  style="width:120px;"
					                
					                value="<fmt:formatDate value='${poVal.madate}' type="date" pattern="yyyy-MM-dd"/>">  
					  <label class="Validform_label" style="display: none;">维修时间</label>
				   </td>
				   <td align="left">
					  	<input name="assetsMaintainList[${stuts.index }].mapri" maxlength="10" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					                value="${poVal.mapri }">
					  <label class="Validform_label" style="display: none;">维修金额</label>
				   </td>
				   <td align="left">
					  	<input name="assetsMaintainList[${stuts.index }].maca" maxlength="200" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					                value="${poVal.maca }">
					  <label class="Validform_label" style="display: none;">故障的现象原因</label>
				   </td>
				   <td align="left">
					  	<input name="assetsMaintainList[${stuts.index }].macom" maxlength="100" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					                value="${poVal.macom }">
					  <label class="Validform_label" style="display: none;">维修厂家信息</label>
				   </td>
				   <td align="left">
					  	<input name="assetsMaintainList[${stuts.index }].macou" maxlength="200" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					                value="${poVal.macou }">
					  <label class="Validform_label" style="display: none;">修复过程</label>
				   </td>
				   <td align="left">
					  	<input name="assetsMaintainList[${stuts.index }].chainfo" maxlength="200" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					                value="${poVal.chainfo }">
					  <label class="Validform_label" style="display: none;">更换配件信息</label>
				   </td>
   			</tr>
		</c:forEach>
	</c:if>	
	</tbody>
</table>
