<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="/WEB-INF/common/taglibs.jsp"%>
<div>
  <spring:message var="title" code="error_uncaughtexception_title" htmlEscape="false" />
    <h2>${fn:escapeXml(title)}</h2>
    <p>
      <spring:message code="error_uncaughtexception_problemdescription" />
    </p>
    <c:if test="${not empty exception}">
      <p>
        <h4>
          <spring:message code="exception_details" />
        </h4>
        <spring:message var="message" code="exception_message" htmlEscape="false" />
          <c:out value="${exception.localizedMessage}" />
        <spring:message var="stacktrace" code="exception_stacktrace" htmlEscape="false" />
          <c:forEach items="${exception.stackTrace}" var="trace">
            <c:out value="${trace}" />
            <br />
          </c:forEach>
      </p>
    </c:if>
</div>