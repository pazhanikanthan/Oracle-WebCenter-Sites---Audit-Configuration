<%@ page language="java" contentType="application/json" pageEncoding="UTF-8"
%><%@ taglib prefix="ics"   uri="futuretense_cs/ics.tld"
%><%@ taglib prefix="cs"    uri="futuretense_cs/ftcs1_0.tld"
%><%@ taglib prefix="qs"    uri="futuretense_cs/qs.tld"
%><%@ taglib prefix="c"     uri="http://java.sun.com/jsp/jstl/core" 
%><%-- audit/get_attributes
    Version : 1.0
    Authors : Paz Periasamy
--%><cs:ftcs>
<c:choose>
    <c:when test="${param.c == 'PubTarget'}">
        {
            "id": "${param.cid}",
            "type": "${param.c}",
        <ics:sql sql="select name from pubtarget where id = '${param.cid}'" listname="PUBTARGETLIST" table="pubtarget"/>
        <ics:listloop listname="PUBTARGETLIST">
            "name": "<ics:listget listname="PUBTARGETLIST" fieldname="name"/>"
        </ics:listloop>
        }
    </c:when><c:otherwise>
        <qs:getattributedata name="asset" attributes="name" assetid="${param.cid}" assettype="${param.c}"/>
        {
            "id": "${param.cid}",
            "type": "${param.c}",
            "name": "${asset.name}"
        }
    </c:otherwise>
</c:choose>
</cs:ftcs>