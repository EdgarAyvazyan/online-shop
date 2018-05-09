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
<c:forEach items="${products}" var="item">
    <div style="width: 600px; margin-top: 50px;" class="center">
        <img src="${item.url}" style="width: 100px; height: 100px; float: left;" />
        <h4 style="float: left;">${item.name}</h4>
        <p style="float: right;">${item.price}AMD</p>
        <div style="clear: both; "></div>
    </div>
    <div style="clear: both; "></div>
</c:forEach>
</body>
</html>