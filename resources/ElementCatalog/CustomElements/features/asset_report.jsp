<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="cs" uri="futuretense_cs/ftcs1_0.tld"
%><%-- audit/asset_report
    Version : 1.0
    Authors : Paz Periasamy
--%><cs:ftcs>
<iframe id="iframeReport" src='/services/audit/asset_report.jsp?assetId=<%=ics.GetVar ("assetId")%>' style="width: 100%; height: 800px; border: 0"></iframe>
</cs:ftcs>