<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="/WEB-INF/common/taglibs.jsp"%>
<div class="menuDiv">
    <ul id="menu">
        <li><a href="${ctx}/articles?form">Create Article</a></li>
        <li><a href="${ctx}/articles">All Article</a></li>
    </ul>
</div>
<script type="text/javascript">
    $(function(){
        $("#menu").menu();
    });
</script>