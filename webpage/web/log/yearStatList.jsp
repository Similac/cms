<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<%--<script type="text/javascript" src="plug-in\Highcharts-2.2.5\js\highcharts.js"></script>--%>
<script type="text/javascript" src="plug-in\Highcharts-4.2.5\js\highcharts.js"></script>
<script type="text/javascript" src="plug-in\Highcharts-4.2.5\js\modules\exporting.src.js"></script>
<script type="text/javascript" src="plug-in\Highcharts-4.2.5\js\themes\grid.js"></script>
<%--<script type="text/javascript" src="plug-in\Highcharts-4.2.5\js\themes\gray.js"></script>--%>
<%--<script type="text/javascript" src="plug-in\Highcharts-4.2.5\js\themes\dark-blue.js"></script>--%>

<%--<script src="https://code.highcharts.com/highcharts.js"></script>--%>
<%--<script src="https://code.highcharts.com/modules/data.js"></script>--%>
<%--<script src="https://code.highcharts.com/modules/drilldown.js"></script>--%>

<div class="operations" style="text-align: right;margin-right:30px;margin-top:30px">
    <div class="innerWrapper">
        <span>站点：</span>
        <span style="margin-right:15px">
            <select id="siteCode" name="siteCode">
            <option value="">所有</option>
            <c:forEach var="sitelist" items="${CmsSiteList}">
                <option value="${sitelist.siteCode}">${sitelist.siteName}</option>
            </c:forEach>
        </select>
        </span>
        <span>图表类型:</span>
        <span style="margin-right:15px">
             <select name="graphType" id="graphType">
                <option value="column">柱状图</option>
                <option value="line">曲线图</option>
            </select>
        </span>
        <span style="margin-left:20px;">
            <a href="#" class="easyui-linkbutton" iconCls="icon-search" id="searchBtn">查询</a>
            <a href="#" class="easyui-linkbutton" iconCls="icon-reload" id="resetBtn">重置</a>
        </span>
    </div>
</div>




<div id="graphReportRegion" style="margin-top:20px;">
    <span id="month_container" style="float: inherit; width: 80%; height: 80%;margin-top:10px;"></span>


<div id="tableDataRegion">

</div>






<script type="text/javascript">
    jQuery.ajaxSettings.traditional = true;
    var data1;
    $(function() {
        show();

        //查询
        $(".operations #searchBtn").click(function() {
            show();
        });

        //重置
        $("#resetBtn").click(function() {
            $.post("weblogController.do?yearStat&renderContainer=month_container&monthflag=1", "", showGraphReport);

            $("#graphType").val("column");

            $("#year").val(2017);



        });

        //按回车键搜索
        $(".operations :input[name]").keydown(function(event) {
            if(event.keyCode == 13) {
                $(".operations #searchBtn").click();
            }
        });
    });

    function show(param){
        //显示趋势图
        $.post("weblogController.do?yearStat&renderContainer=month_container&monthflag=1", getParam(), showGraphReport);

    }

    function getParam() {
        var param = {configId: '${config_id}'};
        $(".operations :input[name]").each(function() {
            var name = $(this).attr("name");
            var value = $(this).val();
            //判断多选情况
            if($(this).hasClass('combo-value')) {
                value = new Array();
                $(":input[name='" + name + "']").each(function() {
                    value.push($(this).val());
                });
            }
            param[name] = value;
        });

        return param;
    }

    function showGraphReport(jsondata) {
//        alert("jsondata is:"+jsondata);
 //       console.log(jsondata);
        var chart;

        var tempdata;
        var data;
        tempdata = eval(jsondata);
        var graphname;
        var graphtype;
        var xAxis;
        var graphYAxisTitle = '访问量';
        $.each(tempdata, function (index, item) {
            data = item["data"];

            graphname = item['name'];
            graphtype = item['type'];
            xAxis = item['xAxis'];
        });
        //console.log(xAxis);
        //console.log(data);
        //alert("graphname is:"+graphname);
        chart = new Highcharts.Chart({
            chart: {
                renderTo: 'month_container',
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                type:graphtype
            },
            colors: ['#90ed7d', '#f7a35c', '#e4d354', '#7cb5ec', '#434348', '#8085e9',
                '#f15c80', '#8085e8', '#8d4653', '#91e8e1'],
            title: {
                text: graphname
            },

            credits: {
                enabled: false
            },
            xAxis: {
                categories: xAxis
            },
            yAxis: {
                title: {
                    text: graphYAxisTitle
                }
            },
            tooltip: {

                shared: true,
                useHTML: true

            },
            exporting: {},
            plotOptions: {
                column: {
                    allowPointSelect: true,
                    colorByPoint: false,
                    cursor: 'pointer',
                    showInLegend: false,
                    dataLabels: {
                        enabled: true,
                        color: '#000000',
                        connectorColor: '#000000',
                        formatter: function () {
                            return this.point.y;
                        }
                    }
                },
                line: {
                    allowPointSelect: true,
                    colorByPoint: false,
                    cursor: 'pointer',
                    showInLegend: false,
                    dataLabels: {
                        enabled: true,
                        color: '#000000',
                        connectorColor: '#000000',
                        formatter: function () {
                            return this.point.y;
                        }
                    }
                }
            },
            series: [
                {
                    name: '访问量',
                            "data":data
                }
            ]
        });

    }
</script>