<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="/WEB-INF/common/taglibs.jsp"%>
<div>
    <div><h1>Tony's Blog</h1></div>
    <div><label><spring:message code="global_language"/></label>
        <%--${pageContext.response.locale}--%>
        <select id="language">
            <option value="en_US" <c:if test="${pageContext.response.locale eq 'en_US'}">selected="selected"</c:if>>English</option>
            <option value="zh_CN" <c:if test="${pageContext.response.locale eq 'zh_CN'}">selected="selected"</c:if>>Chinese</option>
        </select>
    </div>
    <sec:authorize access="isAuthenticated()">
        <div align="right"><a href="${ctx}/logout">Logout</a></div>
    </sec:authorize>
</div>
<script type="text/javascript">
    $(function(){
        $("#language").change(function(){
            var url =Blog_Common.buildUrl(window.location.pathname,"lang",$(this).val());
            window.location=url;
        });
    });
</script>

