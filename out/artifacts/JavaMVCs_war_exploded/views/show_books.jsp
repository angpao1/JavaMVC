<%--
    Document   : list_books
    Created on : Nov 11, 2017, 3:27:12 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>รายการหนังสือ</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css"
          integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
</head>
<body>
<div class="container" style="margin-top: 30px;">
    <button class="btn btn-warning" type="button"><a href="index.jsp">Home</a></button>
    <button class="btn btn-warning" type="button"><a href="FormBookController">Add Book</a></button>

    <h1 class="h1" style="text-align: center">รายการหนังสือ</h1>
    <table width="40%" border="1" class="table">
        <thead class="thead-dark">
        <tr style="text-align: center">
            <th>ID</th>
            <th>ชื่อหนังสือ</th>
            <th>ราคา</th>
        </tr>
        </thead>
        <tbody>

        <!-- ส่วนแสดงผล -->
        <c:forEach items="${bList}" var="b">
            <tr>
                <td align="center">${b.id}</td>
                <td>${b.title}</td>
                <td align="right">
                    <fmt:formatNumber pattern="#,##0.00">
                        ${b.price}
                    </fmt:formatNumber>
                </td>
            </tr>
        </c:forEach>
        <!-- ส่วนแสดงผล -->

        </tbody>

    </table>
    <h3>รวม: ${fn:length(bList)} เล่ม</h3>

</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"
        integrity="sha384-a5N7Y/aK3qNeh15eJKGWxsqtnX/wWdSZSKp+81YjTmS15nvnvxKHuzaWwXHDli+4"
        crossorigin="anonymous"></script>
</body>
</html>
