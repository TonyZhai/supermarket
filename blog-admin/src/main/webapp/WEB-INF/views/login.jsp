<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="/WEB-INF/common/taglibs.jsp"%>
<div>
  <spring:message code="security_login_title" var="title" htmlEscape="false" />
    <c:if test="${not empty param.login_error}">
      <div class="errors">
        <p>
          <spring:message code="security_login_unsuccessful" />
          <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />
          .
        </p>
      </div>
    </c:if>
    <c:if test="${empty param.login_error}">
      <p>
        <spring:message code="security_login_message" />
      </p>
    </c:if>
    <spring:url value="/check" var="form_url" />
    <form name="f" action="${fn:escapeXml(form_url)}" method="POST">
      <div>
        <label for="username">
          <spring:message code="security_login_form_name" />
        </label>
        <input id="username" type='text' name='username' style="width:150px" />
        <spring:message code="security_login_form_name_message" var="name_msg" htmlEscape="false" />
        <script type="text/javascript">
          <c:set var="sec_name_msg">
            <spring:escapeBody javaScriptEscape="true">${name_msg}</spring:escapeBody>
          </c:set>
          Spring.addDecoration(new Spring.ElementDecoration({elementId : "j_username", widgetType : "dijit.form.ValidationTextBox", widgetAttrs : {promptMessage: "${sec_name_msg}", required : true}})); 
        </script>
      </div>
      <br />
      <div>
        <label for="password">
          <spring:message code="security_login_form_password" />
        </label>
        <input id="password" type='password' name='password' style="width:150px" />
        <spring:message code="security_login_form_password_message" var="pwd_msg" htmlEscape="false" />
        <script type="text/javascript">
          <c:set var="sec_pwd_msg">
            <spring:escapeBody javaScriptEscape="true">${pwd_msg}</spring:escapeBody>
          </c:set>
          Spring.addDecoration(new Spring.ElementDecoration({elementId : "j_password", widgetType : "dijit.form.ValidationTextBox", widgetAttrs : {promptMessage: "${sec_pwd_msg}", required : true}})); 
        </script>
      </div>
      <br />
      <div class="submit">
        <script type="text/javascript">Spring.addDecoration(new Spring.ValidateAllDecoration({elementId:'proceed', event:'onclick'}));</script>
        <spring:message code="button_submit" var="submit_label" htmlEscape="false" />
        <input id="proceed" type="submit" value="${fn:escapeXml(submit_label)}" />
        <spring:message code="button_reset" var="reset_label" htmlEscape="false" />
        <input id="reset" type="reset" value="${fn:escapeXml(reset_label)}" />
      </div>
    </form>
</div>

