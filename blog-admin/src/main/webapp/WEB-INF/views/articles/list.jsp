<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%><%@include file="/WEB-INF/common/taglibs.jsp"%><div class="bodyDiv">    <table width="80%" id="gridTable"></table>    <div id="gridPager"></div></div><div id="dialog-confirm" title="Warring">    <p><span class="ui-icon ui-icon-alert" style="float: left; margin: 0 7px 20px 0;"></span>The item will be permanently deleted and cannot be recovered. Are you sure?</p></div><script type="text/javascript" src="${ctx}/static/javascript/views/articles/article.js"></script><script type="text/javascript">    $(function(){        Blog_View.article.list.initPage("${ctx}");    });</script>