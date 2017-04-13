<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> -- : Mari : --</title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<c:url var="jquery_url"  value="/webjars/jquery/3.2.1/dist/jquery.min.js"/>
<c:url var="bootstrap_css_url"  value="/webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>
<c:url var="bootstrap_js_url"  value="/webjars/bootstrap/3.3.7/js/bootstrap.min.js"/>
<c:url var="base_css_url"  value="/resources/css/main/base.css"/>

<link href="${bootstrap_css_url }" rel="stylesheet">
<link href="${base_css_url }" rel="stylesheet">
<script type="text/javascript" src="${jquery_url}"></script>




</head>
<body>

<div class="navbar navbar-inverse navbar-fixed-top">
		<tiles:insertAttribute name="header" />
</div>
<div class="container">
		<tiles:insertAttribute name="body" />
</div>
<div class="container">
		<tiles:insertAttribute name="footer" />
</div>

<script type="text/javascript" src="${bootstrap_js_url }"></script>
</body>
</html>