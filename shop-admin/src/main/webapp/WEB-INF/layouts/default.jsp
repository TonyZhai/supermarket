<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="/WEB-INF/common/taglibs.jsp"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=8" />
        <link href="${ctx}/static/styles/style.css" type="text/css" rel="stylesheet" charset="UTF-8">
        <link href="${ctx}/static/javascript/plugins/jquery/ui/development-bundle/themes/base/jquery.ui.theme.css" type="text/css" rel="stylesheet" charset="UTF-8">
        <link href="${ctx}/static/javascript/plugins/jquery/ui/development-bundle/themes/base/jquery-ui.css" type="text/css" rel="stylesheet" charset="UTF-8">
        <link href="${ctx}/static/javascript/plugins/jquery/ui/development-bundle/themes/base/jquery.ui.core.css" type="text/css" rel="stylesheet" charset="UTF-8">
        <link href="${ctx}/static/javascript/plugins/jquery/jqgrid/css/ui.jqgrid.css" type="text/css" rel="stylesheet" charset="UTF-8">
        <script type="text/javascript" src="${ctx}/static/javascript/plugins/jquery/jQuery-1.9.1.js"></script>
        <script type="text/javascript" src="${ctx}/static/javascript/plugins/jquery/validation/dist/jquery.validate.js"></script>
        <script type="text/javascript" src="${ctx}/static/javascript/plugins/jquery/ui/js/jquery-ui-1.10.1.custom.js"></script>
        <script type="text/javascript" src="${ctx}/static/javascript/plugins/jquery/jqgrid/js/i18n/grid.locale-cn.js"></script>
        <script type="text/javascript" src="${ctx}/static/javascript/plugins/jquery/jqgrid/js/jquery.jqGrid.src.js"></script>
        <script type="text/javascript" src="${ctx}/static/javascript/plugins/underscore/underscore.js"></script>
        <script type="text/javascript" src="${ctx}/static/javascript/plugins/backbone/backbone.js"></script>
        <script type="text/javascript" src="${ctx}/static/javascript/common/common.js"></script>
	</head>

  	<body>
   		<div>
		    <tiles:insertAttribute name="header" ignore="true" />
		    <tiles:insertAttribute name="menu" ignore="true" />
		    <div>
	    		<tiles:insertAttribute name="body"/>
		    	<tiles:insertAttribute name="footer" ignore="true"/>
		    </div>
		</div>
	</body>
</html>
