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
    <div class="navbar">
      <a id="hover1" href="home"><i class="fa fa-fw fa-home"></i> Home</a>
      <a id="hover2" href="planner"><i class="fa fa-fw fa-search"></i> Planner</a>
      <a id="hover3" href="travels"><i class="fa fa-fw fa-envelope"></i> Travels</a> <!--statystyki, ile krai odwiedzonych TODO -->
      <a id="hover1" href="profile"><i class="fa fa-fw fa-user"></i> Profile</a>
      <a href="logout">Logout</a>
    </div>

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
