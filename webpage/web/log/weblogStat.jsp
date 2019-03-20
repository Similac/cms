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
<style type="text/css">



    a {
        color: #c75f3e;
    }

    #mytable {
        width: 900px;

    }

    caption {
        padding: 0 0 5px 0;
        width: 700px;
        font: italic 11px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
        text-align: right;
    }

    th {
        font: bold 11px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
        color: #4f6b72;
        border-right: 1px solid #C1DAD7;
        border-left: 1px solid #C1DAD7;
        border-bottom: 1px solid #C1DAD7;
        border-top: 1px solid #C1DAD7;
        letter-spacing: 2px;
        text-transform: uppercase;
        text-align: center;
        padding: 6px 6px 6px 12px;
        background: #CAE8EA  no-repeat;
    }

    th.nobg {
        border-top: 0;
        border-left: 0;
        border-right: 1px solid #C1DAD7;
        background: none;
    }

    td {
        border-right: 1px solid #C1DAD7;
        border-left: 1px solid #C1DAD7;

        border-bottom: 1px solid #C1DAD7;
        background: #fff;
        font-size:11px;
        padding: 6px 6px 6px 12px;
        color: #4f6b72;
    }


    td.alt {
        background: #F5FAFA;
        color: #797268;
    }

    th.spec {
        border-left: 1px solid #C1DAD7;
        border-top: 0;
        background: #fff no-repeat;
        font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
    }

    th.specalt {
        border-left: 1px solid #C1DAD7;
        border-top: 0;
        background: #f5fafa no-repeat;
        font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
        color: #797268;
    }
    /*---------for IE 5.x bug*/
    html>body td{ font-size:11px;}
    body,td,th {
        font-family: 宋体, Arial;
        font-size: 12px;
    }
</style>
<form action="weblogController.do?weblogstat" method="post">
<div class="operations" id="Region" style="text-align: right;margin-right:30px;margin-top:30px">
    <div class="innerWrapper">
        <span>站点：</span>
        <span style="margin-right:15px">
         <select id="siteCode" name="siteCode">
             <option value="" >所有</option>
            <c:forEach var="sitelist" items="${CmsSiteList}">
                <option value="${sitelist.siteCode}">${sitelist.siteName}</option>
            </c:forEach>
        </select>
        </span>


        <span>访问时间：</span>
        <span style="margin-right:15px">
            <input type="text" name="createDate_begin">
            <input type="text" name="createDate_end">
        </span>
        <span style="margin-left:20px;">
             <input type="submit" value="查询" class="easyui-linkbutton" iconCls="icon-search" id="searchBtn"/>
        </span>
    </div>
</div>
</form>



<div id="graphReportRegion" style="margin-top:20px;">
    <table id="mytable" cellspacing="1" align="center">
        <tr >
            <th scope="col">页面</th>
            <th scope="col">站点</th>
            <th scope="col">访问量</th>
        </tr>
        <c:forEach items="${liststat}" var="stat">
            <tr align=center>
                <td class="row"><c:out value="${stat.log_page}"/></td>
                <td class="row"><c:out value="${stat.log_site}"/></td>
                <td class="row"><c:out value="${stat.viewcount}"/></td>

            </tr>
        </c:forEach>
    </table>

    <span id="month_container" style="float: inherit; width: 80%; height: 80%;margin-top:10px;"></span>


<div id="tableDataRegion">

</div>

</div>

<script type="text/javascript">
    $(document).ready(function(){
        //给时间控件加上样式
        $("#Region").find("input[name='createDate_begin']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
        $("#Region").find("input[name='createDate_end']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
        //给时间控件加上样式

    });
</script>