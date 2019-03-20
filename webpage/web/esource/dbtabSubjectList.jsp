<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>


<table border="0" cellpadding="2" cellspacing="0" id="dbtabSubject_table">

	<tbody id="add_dbtabSubject_table">
		<c:if test="${fn:length(DbPressubjectEntityList)  <= 0 }">

            <tr>
            <c:forEach items="${DbRessubjectEntityList}" var="poVal" varStatus="stuts">
				<td align="left"><input style="width: 20px;" type="checkbox"  name="DbPressubjectEntityList[${stuts.count }].subjectid" value="${poVal.id}" />${poVal.name}</td>
                <c:if test="${stuts.count%7==0}">
                   </tr>
                    <tr>
                </c:if>
            </c:forEach>
			</tr>

		</c:if>
		<c:if test="${fn:length(DbPressubjectEntityList)  > 0 }">
            <tr>
            <c:forEach items="${DbRessubjectEntityList}" var="poVal" varStatus="stuts">
                <td align="left"><input style="width: 20px;" type="checkbox"  name="DbPressubjectEntityList[${stuts.count }].subjectid" value="${poVal.id}" <c:forEach items="${DbPressubjectEntityList}" var="Pre" varStatus="stat">
                <c:if test="${poVal.id==Pre.subjectid}">
                    checked="checked"
                </c:if> </c:forEach>  />${poVal.name}</td>
                <c:if test="${stuts.count%7==0}">
                    </tr>
                    <tr>
                </c:if>
            </c:forEach>
            </tr>
		</c:if>
	</tbody>
</table>
<input type="hidden" name="dbtabSubjectShow" value="true" />