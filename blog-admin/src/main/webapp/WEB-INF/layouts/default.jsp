<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="/WEB-INF/common/taglibs.jsp"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=8" />
        <link href="${ctx}/static/styles/style.css" type="text/css" rel="stylesheet" charset="UTF-8">
        <link href="${ctx}/static/javascript/plugins/jQuery/jQuery-ui/development-bundle/themes/base/jquery.ui.theme.css" type="text/css" rel="stylesheet" charset="UTF-8">
        <link href="${ctx}/static/javascript/plugins/jQuery/jQuery-ui/development-bundle/themes/base/jquery.ui.core.css" type="text/css" rel="stylesheet" charset="UTF-8">
        <link href="${ctx}/static/javascript/plugins/jQuery/jqgrid/css/ui.jqgrid.css" type="text/css" rel="stylesheet" charset="UTF-8">
        <script type="text/javascript" src="${ctx}/static/javascript/plugins/jQuery/jQuery-1.9.1.js"></script>
        <script type="text/javascript" src="${ctx}/static/javascript/plugins/jQuery/jqgrid/js/i18n/grid.locale-cn.js"></script>
        <script type="text/javascript" src="${ctx}/static/javascript/plugins/jQuery/jqgrid/js/jquery.jqGrid.src.js"></script>
        <script type="text/javascript" src="${ctx}/static/javascript/common/common.js"></script>
	</head>

  	<body class="tundra spring">
   		<div id="wrapper">
		    <tiles:insertAttribute name="header" ignore="true" />
		    <tiles:insertAttribute name="menu" ignore="true" />
		    <div id="main">
	    		<tiles:insertAttribute name="body"/>
		    	<tiles:insertAttribute name="footer" ignore="true"/>
		    </div>
		</div>
	</body>
</html>
