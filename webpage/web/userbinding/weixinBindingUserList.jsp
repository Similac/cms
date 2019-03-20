<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<script type="text/javascript">
$(document).ready(function(){
    	if(location.href.indexOf("load=detail")!=-1){
			$(":input").attr("disabled","true");
		}
    });
</script>
<div style="width: auto;height: 300px;overflow-y:auto;overflow-x:auto;">
<table cellpadding="0" cellspacing="1" class="formtable" id="weixinBindingUser_table" >
	<tbody id="add_weixinBindingUser_table" >	
	<c:if test="${fn:length(weixinBindingUserList)  <= 0 }">
			<tr>
					<input name="weixinBindingUserList[0].id" type="hidden"  value="${poVal.id}"/>
					<input name="weixinBindingUserList[0].createName" type="hidden"  value="${poVal.createName}"/>
					<input name="weixinBindingUserList[0].createDate" type="hidden"  value="${poVal.createDate}"/>
					<input name="weixinBindingUserList[0].updateName" type="hidden"  value="${poVal.updateName}"/>
					<input name="weixinBindingUserList[0].updateDate" type="hidden"  value="${poVal.updateDate}"/>
			</tr>
				<tr>
				  <td align="right">
					<label class="Validform_label">
										微信号:
									</label>
					</td>
				  <td class="value">
					  	<input name="weixinBindingUserList[0].weixinAccount" maxlength="100" 
					  		type="text" class="inputxt"  
					               
					               >
					  <label class="Validform_label" style="display: none;">微信号</label>
					</td>
				
				</tr>
	</c:if>
	<c:if test="${fn:length(weixinBindingUserList)  > 0 }">
		<c:forEach items="${weixinBindingUserList}" var="poVal" varStatus="stuts" begin="0" end="0">
			<tr>
					<input name="weixinBindingUserList[0].id" type="hidden" value="${poVal.id}"/>
					<input name="weixinBindingUserList[0].createName" type="hidden" value="${poVal.createName}"/>
					<input name="weixinBindingUserList[0].createDate" type="hidden" value="${poVal.createDate}"/>
					<input name="weixinBindingUserList[0].updateName" type="hidden" value="${poVal.updateName}"/>
					<input name="weixinBindingUserList[0].updateDate" type="hidden" value="${poVal.updateDate}"/>
			</tr>
			<tr>
				  <td align="right">
					<label class="Validform_label">
										微信号:
									</label>
					</td>
				  <td class="value">
					  	<input name="weixinBindingUserList[0].weixinAccount" maxlength="100" 
					  		type="text" class="inputxt"  
					               
					                value="${poVal.weixinAccount }">
					  <label class="Validform_label" style="display: none;">微信号</label>
					</td>
				
				</tr>
		</c:forEach>
	</c:if>	
	</tbody>
</table>
</div>