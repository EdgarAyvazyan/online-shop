<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>list.am</title>
</head>
<body>
${product.id}
${product.price}
${product.name}
${product.description}

<h1 onclick="showPopup()">ZANGAHAREL</h1>

<div class="w3-content w3-display-container" style="width: 800px; height: 600px;">
    <c:forEach items="${product.images}" var="image">
        <img class="mySlides" src="${image.url}" style="width:100%">
    </c:forEach>
    <button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
    <button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">&#10095;</button>
</div>

<script>
    var slideIndex = 1;
    showDivs(slideIndex);

    function plusDivs(n) {
        showDivs(slideIndex += n);
    }

    function showDivs(n) {
        var i;
        var x = document.getElementsByClassName("mySlides");
        if (n > x.length) {slideIndex = 1}
        if (n < 1) {slideIndex = x.length}
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        x[slideIndex-1].style.display = "block";
    }

    function showPopup() {
        alert(${product.user.phoneNumber})
    }
</script>
</body>
</html>