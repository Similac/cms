<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>资产列表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  $(document).ready(function(){
	$('#tt').tabs({
	   onSelect:function(title){
	       $('#tt .panel-body').css('width','auto');
		}
	});
	$(".tabs-wrap").css('width','100%');
  });
 </script>
 </head>
 <body style="overflow-x: hidden;">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" tiptype="1" action="assetsController.do?doUpdate">
					<input id="id" name="id" type="hidden" value="${assetsPage.id }">
	<table cellpadding="0" cellspacing="1" class="formtable">
		<tr>
			<td align="right">
				<label class="Validform_label">资产编号:</label>
			</td>
			<td class="value">
		     	 <input id="assn" name="assn" type="text" style="width: 150px" class="inputxt"  
					               datatype="*"
					                value='${assetsPage.assn}'>
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">资产编号</label>
			</td>
			<td align="right">
				<label class="Validform_label">出厂号:</label>
			</td>
			<td class="value">
		     	 <input id="oldsn" name="oldsn" type="text" style="width: 150px" class="inputxt"  
					               
					                value='${assetsPage.oldsn}'>
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">出厂号</label>
			</td>
		</tr>
		<tr>
			<td align="right">
				<label class="Validform_label">设备名称:</label>
			</td>
			<td class="value">
		     	 <input id="asname" name="asname" type="text" style="width: 150px" class="inputxt"  
					               datatype="*"
					                value='${assetsPage.asname}'>
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">设备名称</label>
			</td>
			<td align="right">
				<label class="Validform_label">类型:</label>
			</td>
			<td class="value">
					<t:dictSelect field="astype" type="list"
						dictTable="assets_type" dictField="id" dictText="typename" defaultVal="${assetsPage.astype}" hasLabel="false"  title="类型"></t:dictSelect>     
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">类型</label>
			</td>
		</tr>
		<tr>
			<td align="right">
				<label class="Validform_label">状态:</label>
			</td>
			<td class="value">
					<t:dictSelect field="asstate" type="list"
						typeGroupCode="assets_state" defaultVal="${assetsPage.asstate}" hasLabel="false"  title="状态"></t:dictSelect>     
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">状态</label>
			</td>
			<td align="right">
				<label class="Validform_label">品牌型号:</label>
			</td>
			<td class="value">
		     	 <input id="asclass" name="asclass" type="text" style="width: 150px" class="inputxt"  
					               
					                value='${assetsPage.asclass}'>
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">品牌型号</label>
			</td>
		</tr>
		<tr>
			<td align="right">
				<label class="Validform_label">厂家:</label>
			</td>
			<td class="value">
		     	 <input id="ascom" name="ascom" type="text" style="width: 150px" class="inputxt"  
					               
					                value='${assetsPage.ascom}'>
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">厂家</label>
			</td>
			<td align="right">
				<label class="Validform_label">数量:</label>
			</td>
			<td class="value">
		     	 <input id="asnum" name="asnum" type="text" style="width: 150px" class="inputxt"  
					               
					                value='${assetsPage.asnum}'>
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">数量</label>
			</td>
		</tr>
		<tr>
			<td align="right">
				<label class="Validform_label">单价:</label>
			</td>
			<td class="value">
		     	 <input id="asprice" name="asprice" type="text" style="width: 150px" class="inputxt"  
					               
					                value='${assetsPage.asprice}'>
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">单价</label>
			</td>
			<td align="right">
				<label class="Validform_label">经费来源:</label>
			</td>
			<td class="value">
		     	 <input id="outlay" name="outlay" type="text" style="width: 150px" class="inputxt"  
					               
					                value='${assetsPage.outlay}'>
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">经费来源</label>
			</td>
		</tr>
		<tr>
			<td align="right">
				<label class="Validform_label">购置日期:</label>
			</td>
			<td class="value">
					  <input id="buytime" name="buytime" type="text" style="width: 150px" 
		      						class="Wdate" onClick="WdatePicker()"
					                
					                value='<fmt:formatDate value='${assetsPage.buytime}' type="date" pattern="yyyy-MM-dd"/>'>   
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">购置日期</label>
			</td>
			<td align="right">
				<label class="Validform_label">所在部门:</label>
			</td>
			<td class="value">
					<t:dictSelect field="nowdept" type="list"
						dictTable="t_s_depart" dictField="ID" dictText="departname" defaultVal="${assetsPage.nowdept}" hasLabel="false"  title="所在部门"></t:dictSelect>     
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">所在部门</label>
			</td>
		</tr>
		<tr>
			<td align="right">
				<label class="Validform_label">前所在部门:</label>
			</td>
			<td class="value">
					<t:dictSelect field="bedept" type="list"
						dictTable="t_s_depart" dictField="ID" dictText="departname" defaultVal="${assetsPage.bedept}" hasLabel="false"  title="前所在部门"></t:dictSelect>     
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">前所在部门</label>
			</td>
			<td align="right">
				<label class="Validform_label">使用人:</label>
			</td>
			<td class="value">
		     	 <input id="nowuser" name="nowuser" type="text" style="width: 150px" class="inputxt"  
					               
					                value='${assetsPage.nowuser}'>
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">使用人</label>
			</td>
		</tr>
		<tr>
			<td align="right">
				<label class="Validform_label">前使用人:</label>
			</td>
			<td class="value">
		     	 <input id="beuser" name="beuser" type="text" style="width: 150px" class="inputxt"  
					               
					                value='${assetsPage.beuser}'>
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">前使用人</label>
			</td>
			<td align="right">
				<label class="Validform_label">保修维修信息:</label>
			</td>
			<td class="value">
		     	 <input id="mainfo" name="mainfo" type="text" style="width: 150px" class="inputxt"  
					               
					                value='${assetsPage.mainfo}'>
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">保修维修信息</label>
			</td>
		</tr>
		<tr>
			<td align="right">
				<label class="Validform_label">配置信息:</label>
			</td>
			<td class="value">
		     	 <input id="asconfig" name="asconfig" type="text" style="width: 150px" class="inputxt"  
					               
					                value='${assetsPage.asconfig}'>
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">配置信息</label>
			</td>
			<td align="right">
				<label class="Validform_label">备注:</label>
			</td>
			<td class="value">
		     	 <input id="remark" name="remark" type="text" style="width: 150px" class="inputxt"  
					               
					                value='${assetsPage.remark}'>
				<span class="Validform_checktip"></span>
				<label class="Validform_label" style="display: none;">备注</label>
			</td>
		</tr>
			</table>
			<div style="width: auto;height: 200px;">
				<%-- 增加一个div，用于调节页面大小，否则默认太小 --%>
				<div style="width:800px;height:1px;"></div>
				<t:tabs id="tt" iframe="false" tabPosition="top" fit="false">
				 <t:tab href="assetsController.do?assetsMoveList&id=${assetsPage.id}" icon="icon-search" title="调配记录" id="assetsMove"></t:tab>
				 <t:tab href="assetsController.do?assetsIncreaseList&id=${assetsPage.id}" icon="icon-search" title="增值记录" id="assetsIncrease"></t:tab>
				 <t:tab href="assetsController.do?assetsMaintainList&id=${assetsPage.id}" icon="icon-search" title="维修记录" id="assetsMaintain"></t:tab>
				</t:tabs>
			</div>
			</t:formvalid>
			<!-- 添加 附表明细 模版 -->
		<table style="display:none">
		<tbody id="add_assetsMove_table_template">
			<tr>
			 <td align="center"><div style="width: 25px;" name="xh"></div></td>
			 <td align="center"><input style="width:20px;" type="checkbox" name="ck"/></td>
				  <td align="left">
							<input name="assetsMoveList[#index#].modate" maxlength="0" 
					  		type="text" class="Wdate" onClick="WdatePicker()"  style="width:120px;"
					                
					               >  
					  <label class="Validform_label" style="display: none;">调配时间</label>
				  </td>
				  <td align="left">
					  	<input name="assetsMoveList[#index#].moout" maxlength="36" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">调出部门</label>
				  </td>
				  <td align="left">
					  	<input name="assetsMoveList[#index#].moin" maxlength="36" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">调入部门</label>
				  </td>
				  <td align="left">
					  	<input name="assetsMoveList[#index#].nowuser" maxlength="50" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">使用人</label>
				  </td>
				  <td align="left">
					  	<input name="assetsMoveList[#index#].beuser" maxlength="50" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">前使用人</label>
				  </td>
				  <td align="left">
					  	<input name="assetsMoveList[#index#].mocau" maxlength="100" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">调配原因</label>
				  </td>
				  <td align="left">
					  	<input name="assetsMoveList[#index#].mohand" maxlength="50" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">经手人</label>
				  </td>
			</tr>
		 </tbody>
		<tbody id="add_assetsIncrease_table_template">
			<tr>
			 <td align="center"><div style="width: 25px;" name="xh"></div></td>
			 <td align="center"><input style="width:20px;" type="checkbox" name="ck"/></td>
				  <td align="left">
					  	<input name="assetsIncreaseList[#index#].assn" maxlength="50" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">增值资产编号</label>
				  </td>
				  <td align="left">
							<input name="assetsIncreaseList[#index#].incredate" maxlength="0" 
					  		type="text" class="Wdate" onClick="WdatePicker()"  style="width:120px;"
					                
					               >  
					  <label class="Validform_label" style="display: none;">增值时间</label>
				  </td>
				  <td align="left">
					  	<input name="assetsIncreaseList[#index#].increpri" maxlength="10" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">增值金额</label>
				  </td>
				  <td align="left">
					  	<input name="assetsIncreaseList[#index#].innote" maxlength="100" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">增值资产信息</label>
				  </td>
				  <td align="left">
					  	<input name="assetsIncreaseList[#index#].incau" maxlength="100" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">原因</label>
				  </td>
			</tr>
		 </tbody>
		<tbody id="add_assetsMaintain_table_template">
			<tr>
			 <td align="center"><div style="width: 25px;" name="xh"></div></td>
			 <td align="center"><input style="width:20px;" type="checkbox" name="ck"/></td>
				  <td align="left">
							<input name="assetsMaintainList[#index#].madate" maxlength="0" 
					  		type="text" class="Wdate" onClick="WdatePicker()"  style="width:120px;"
					                
					               >  
					  <label class="Validform_label" style="display: none;">维修时间</label>
				  </td>
				  <td align="left">
					  	<input name="assetsMaintainList[#index#].mapri" maxlength="10" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">维修金额</label>
				  </td>
				  <td align="left">
					  	<input name="assetsMaintainList[#index#].maca" maxlength="200" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">故障的现象原因</label>
				  </td>
				  <td align="left">
					  	<input name="assetsMaintainList[#index#].macom" maxlength="100" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">维修厂家信息</label>
				  </td>
				  <td align="left">
					  	<input name="assetsMaintainList[#index#].macou" maxlength="200" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">修复过程</label>
				  </td>
				  <td align="left">
					  	<input name="assetsMaintainList[#index#].chainfo" maxlength="200" 
					  		type="text" class="inputxt"  style="width:120px;"
					               
					               >
					  <label class="Validform_label" style="display: none;">更换配件信息</label>
				  </td>
			</tr>
		 </tbody>
		</table>
 </body>
 <script src = "webpage/web/assets/assets.js"></script>	