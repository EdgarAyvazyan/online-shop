<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>list.am</title>
    <style type="text/css">
        .center {
            margin: auto;
            width: 50%;
            border: 3px solid green;
            padding: 10px;
        }
    </style>
</head>
<body>

<form method="post" action="${pageContext.request.contextPath}/logout">
    <input type="submit" value="Logout">
</form>

<div class="center">
    <form method="get">
        <label>
            Search:
            <input type="text" style="width: 300px;" name="keyword"
                value="${param['keyword']}"/>
        </label>
        <input type="submit" value="Search"/>
    </form>
</div>

<c:forEach items="${products}" var="item">
    <a href="/item/${item.id}">
        <div style="width: 600px; margin-top: 50px;" class="center">
            <img src="${item.url}" style="width: 100px; height: 100px; float: left;"/>
            <h4 style="float: left;">${item.name}</h4>
            <p style="float: right;">${item.price}AMD</p>
            <div style="clear: both; "></div>
        </div>
        <div style="clear: both; "></div>
    </a>
</c:forEach>
</body>
</html>