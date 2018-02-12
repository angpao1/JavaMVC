<%--
    Document   : add_book
    Created on : Nov 11, 2017, 3:27:29 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>ฟอร์มเพิ่มหนังสือ</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css"
          integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
</head>
<body>
<div class="container" style="margin-top: 30px;">
    <button class="btn btn-warning" type="button"><a href="index.jsp">Home</a></button>
    <button class="btn btn-warning" type="button"><a href="ShowBooksController">Show Book</a></button>

    <h1 class="h1" style="padding-top: 15px;">เพิ่มหนังสือ</h1>

    <form action="AddBookController" method="POST">
        <div class="form-group">
            <label >ชื่อหนังสือ</label>
            <input type="text" class="form-control" placeholder="กรอกชื่อหนังสือ" name="title">
        </div>
        <div class="form-group">
            <label >ราคา</label>
            <input type="text" class="form-control" placeholder="ราคาหนังสือ" name="price">
        </div>

        <button type="submit" class="btn btn-success">Submit</button>
        <button type="reset" class="btn btn-danger">Reset</button>

    </form>
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
