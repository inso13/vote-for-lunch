<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><fmt:message key="app.title"/></title>
    <c:set var="url">${pageContext.request.requestURL}</c:set>
    <base href="${fn:substring(url, 0, fn:length(url) - fn:length(pageContext.request.requestURI))}${pageContext.request.contextPath}/" />
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="webjars/bootstrap/3.3.7-1/css/bootstrap.min.css">
    <link rel="stylesheet" href="webjars/datatables/1.10.13/css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" href="webjars/datetimepicker/2.5.4/jquery.datetimepicker.css">
    <link rel="shortcut icon" href="resources/images/icon-meal.png">

    <!--http://stackoverflow.com/a/24070373/548473-->
    <script type="text/javascript" src="webjars/jquery/3.1.1-1/jquery.min.js"></script>
    <script type="text/javascript" src="webjars/bootstrap/3.3.7-1/js/bootstrap.min.js" defer></script>
    <script type="text/javascript" src="webjars/datatables/1.10.13/js/jquery.dataTables.min.js" defer></script>
    <script type="text/javascript" src="webjars/datatables/1.10.13/js/dataTables.bootstrap.min.js" defer></script>
    <script type="text/javascript" src="webjars/noty/2.3.8/js/noty/packaged/jquery.noty.packaged.min.js" defer></script>
    <script type="text/javascript" src="webjars/datetimepicker/2.5.4/build/jquery.datetimepicker.full.min.js" defer></script>
</head>