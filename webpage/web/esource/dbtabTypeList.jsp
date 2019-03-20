<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>


<table border="0" cellpadding="2" cellspacing="0" id="dbtabType_table">

	<tbody id="add_dbtabType_table">
		<c:if test="${fn:length(DbPrestypeEntityList)  <= 0 }">

            <tr>
            <c:forEach items="${DbRestypeEntityList}" var="poVal" varStatus="stuts">
				<td align="left"><input style="width: 20px;" type="checkbox"  name="DbPrestypeEntityList[${stuts.count }].typeid" value="${poVal.id}" />${poVal.restypename}</td>
                <c:if test="${stuts.count%7==0}">
                   </tr>
                    <tr>
                </c:if>
            </c:forEach>
			</tr>

		</c:if>
		<c:if test="${fn:length(DbPrestypeEntityList)  > 0 }">
            <tr>
            <c:forEach items="${DbRestypeEntityList}" var="poVal" varStatus="stuts">
                <td align="left"><input style="width: 20px;" type="checkbox"  name="DbPrestypeEntityList[${stuts.count }].typeid" value="${poVal.id}" <c:forEach items="${DbPrestypeEntityList}" var="Pre" varStatus="stat">
                <c:if test="${poVal.id==Pre.typeid}">
                    checked="checked"
                </c:if> </c:forEach>  />${poVal.restypename}</td>
                <c:if test="${stuts.count%7==0}">
                    </tr>
                    <tr>
                </c:if>
            </c:forEach>
            </tr>
		</c:if>
	</tbody>
</table>
<input type="hidden" name="dbtabTypeShow" value="true" />