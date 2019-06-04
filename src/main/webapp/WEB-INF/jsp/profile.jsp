<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/resources/static/css/home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Traveler</title>
  </head>
  <body>

    <%@include file="_navbar.jsp"%>

    <div class="content">
        <div class="board">

          <div class="profile">
            <h3>Profile data</h3>
            Name: <input type="text" name="country" value="Norway" readonly><br>
            Surname: <input type="text" name="country" value="Norway" readonly><br>
            Country: <input type="text" name="country" value="Norway" readonly><br>
            Date of birth: <input type="text" name="country" value="Norway" readonly><br>
            Country: <input type="text" name="country" value="Norway" readonly><br>
            Country: <input type="text" name="country" value="Norway" readonly><br>
          </div>

        <button type="button">Edit</button>
        </div>
    </div>
  </body>
</html>
