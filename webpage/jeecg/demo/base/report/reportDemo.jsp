<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!-- context path -->
<t:base type="jquery,easyui"></t:base>
<script type="text/javascript" src="plug-in/Highcharts-2.2.5/js/highcharts.src.js"></script>
<script type="text/javascript" src="plug-in/Highcharts-2.2.5/js/modules/exporting.src.js"></script>

<c:set var="ctxPath" value="${pageContext.request.contextPath}" />
<script type="text/javascript">
	$(function() {
		$(document).ready(function() {
			var chart;
			$.ajax({
				type : "POST",
				url : "reportDemoController.do?studentCount&reportType=line",
				success : function(jsondata) {
					data = eval(jsondata);
					chart = new Highcharts.Chart({
						chart : {
							renderTo : 'containerline',
							plotBackgroundColor : null,
							plotBorderWidth : null,
							plotShadow : false
						},
						title : {
							text : '进馆人数-<b>折线图</b>'
						},
						xAxis : {
							categories : [ '1月', '2月', '3月', '4月', '5月']
						},
						tooltip : {
							shadow: false,
							percentageDecimals : 1,
							formatter: function() {
            					return  '<b>'+this.point.name + '</b>:' +  Highcharts.numberFormat(this.percentage, 1);
         					}

						},
						exporting:{  
			                filename:'pie',  
			                 url:'${ctxPath}/reportDemoController.do?export'  
			            },  
						plotOptions : {
							pie : {
								allowPointSelect : true,
								cursor : 'pointer',
								showInLegend : true,
								dataLabels : {
									enabled : true,
									color : '#000000',
									connectorColor : '#000000',
									formatter : function() {
										return '<b>' + this.point.name + '</b>: ' + Highcharts.numberFormat(this.percentage, 1);
									}
								}
							}
						},
						series : data
					});
				}
			});
		});
	});
</script>


<script type="text/javascript">
	$(function() {
		$(document).ready(function() {
			var chart;
			$.ajax({
				type : "POST",
				url : "reportDemoController.do?studentCount&reportType=column",
				success : function(jsondata) {
					
					data = eval(jsondata);
					console.log(data);
					chart = new Highcharts.Chart({
						chart : {
							renderTo : 'containerCol',
							plotBackgroundColor : null,
							plotBorderWidth : null,
							plotShadow : false
						},
						title : {
							text : '进馆人数-<b>柱状图</b>'
						},
						xAxis : {
							categories : [ '1月', '2月', '3月', '4月', '5月']
						},
						tooltip : {
							 percentageDecimals : 1,
							 formatter: function() {
            					return  '<b>'+this.point.name + '</b>:' +  Highcharts.numberFormat(this.percentage, 1) ;
         					}

						},
						exporting:{ 
			                filename:'column',  
			                url:'${ctxPath}/reportDemoController.do?export'//
			            },
						plotOptions : {
							column : {
								allowPointSelect : true,
								cursor : 'pointer',
								showInLegend : true,
								dataLabels : {
									enabled : true,
									color : '#000000',
									connectorColor : '#000000',
									formatter : function() {
										return '<b>' + this.point.name + '</b>: ' +Highcharts.numberFormat(this.percentage, 1);
									}
								}
							}
						},
						series : data
					});
				}
			});
		});
	});
</script>


<script type="text/javascript">
	$(function() {
		$(document).ready(function() {
			var chart;
			$.ajax({
				type : "POST",
				url : "reportDemoController.do?studentCount&reportType=pie",
				success : function(jsondata) {
					data = eval(jsondata);
					chart = new Highcharts.Chart({
						chart : {
							renderTo : 'containerPie',
							plotBackgroundColor : null,
							plotBorderWidth : null,
							plotShadow : false
						},
						title : {
							text : '进馆人数-<b>饼状图</b>'
						},
						xAxis : {
							categories : [ '1月', '2月', '3月', '4月', '5月']
						},
						tooltip : {
							shadow: false,
							percentageDecimals : 1,
							formatter: function() {
            					return  '<b>'+this.point.name + '</b>:' +  Highcharts.numberFormat(this.percentage, 1);
         					}

						},
						exporting:{  
			                filename:'pie',  
			                 url:'${ctxPath}/reportDemoController.do?export'  
			            },  
						plotOptions : {
							pie : {
								allowPointSelect : true,
								cursor : 'pointer',
								showInLegend : true,
								dataLabels : {
									enabled : true,
									color : '#000000',
									connectorColor : '#000000',
									formatter : function() {
										return '<b>' + this.point.name + '</b>: ' + Highcharts.numberFormat(this.percentage, 1);
									}
								}
							}
						},
						series : data
					});
				}
			});
		});
	});
</script>
<span id="containerline" style="float: left; width: 30%; height: 60%"></span>
<span id="containerCol" style="float: left; width: 38%; height: 60%"></span>
<span id="containerPie" style="width: 30%; height: 60%"></span>

<div style="width: 98%; height: 280px">
	<table style="width: 98%">
		<tr>
			<td align="center" colspan="3" style="background: #A4D3EE;font-size: 18">设备运行情况</td>

		</tr>
		<tr>
			<th width="30%">设备名</th>
			<th width="30%">运行状态</th>
			<th>错误提示</th>
		</tr>
		<tr>
			<td align="center">2楼自助打印机</td>
			<td align="center">正常</td>
			<td align="center"></td>
		</tr>
		<tr>
			<td align="center"><font color="red">3楼自助打印机</font></td>
			<td align="center"><font color="red">故障</font></td>
			<td align="center"><font color="red">缺纸</font></td>
		</tr>
		<tr>
			<td align="center">4楼自助打印机</td>
			<td align="center">正常</td>
			<td align="center"></td>
		</tr>
		<tr>
			<td align="center">1号通道机</td>
			<td align="center">正常</td>
			<td align="center"></td>
		</tr>
		<tr>
			<td align="center">2号通道机</td>
			<td align="center">正常</td>
			<td align="center"></td>
		</tr>
	</table>

</div>