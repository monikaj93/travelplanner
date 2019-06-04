<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <head>
        <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="/resources/static/css/home.css">
    </head>

    <body>

    <div class="navbar">
        <a id="hover1" href="home"><i class="fa fa-fw fa-home"></i> Home</a>
        <a id="hover2" href="planner"><i class="fa fa-fw fa-search"></i> Planner</a>
        <a id="hover3" href="travels"><i class="fa fa-fw fa-envelope"></i> Travels</a> <!--statystyki, ile krai odwiedzonych TODO -->
        <a id="hover1" href="profile"><i class="fa fa-fw fa-user"></i> Profile</a>
        <a href="logout">Logout</a>
    </div>

    <div class="travel-form" id="travelForm">
        <form:form action="addTravel" class="form-container">
            <h2>Add Travel Form</h2>
            <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
        </form:form>
    </div>

    </body>
</html>