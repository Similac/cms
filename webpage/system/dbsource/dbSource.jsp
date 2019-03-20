<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<!DOCTYPE html>
<html>
 <head>
  <title></title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
 </head>
 <body style="overflow-y: hidden" scroll="no">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="dynamicDataSourceController.do?save">
			<input id="id" name="id" type="hidden" value="${dbSourcePage.id }">
			<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							数据库类型:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="dbKey" name="dbKey" 
							   value="${dbSourcePage.dbKey}" datatype="*">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							描述:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="description" name="description" 
							   value="${dbSourcePage.description}" datatype="*">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							驱动类:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="driverClass" name="driverClass" 
							   value="${dbSourcePage.driverClass}" datatype="*">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							数据源地址:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="url" name="url" 
							   value="${dbSourcePage.url}" datatype="*">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							数据库用户名:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="dbUser" name="dbUser" 
							   value="${dbSourcePage.dbUser}" datatype="*">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							数据库密码:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="dbPassword" name="dbPassword" ignore="ignore"
							   value="${dbSourcePage.dbPassword}">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							数据库类型:
						</label>
					</td>
					<td class="value">
						<t:dictSelect field="dbType" typeGroupCode="dbtype" hasLabel="false" defaultVal="${dbSourcePage.dbType}"></t:dictSelect>
						<span class="Validform_checktip"></span>
					</td>
				</tr>
			</table>
		</t:formvalid>
 </body>