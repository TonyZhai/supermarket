<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="/WEB-INF/common/taglibs.jsp"%>
<div>
    <h1>Tony's Blog</h1>
    <sec:authorize access="isAuthenticated()">
        <div align="right"><a href="${ctx}/logout">Logout</a></div>
    </sec:authorize>
</div>

