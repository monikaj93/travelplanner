<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <head>
        <title>Travel Planner</title>
        <link href="<c:url value="/resources/static/css/style.css" />" rel="stylesheet">
    </head>

    <body>
        <div class="login-page">
          <div class="form">
            <form class="login-form" action="login" method="POST">
              <h2>Login</h2>
              <input id="email" type="text" name="email" placeholder="email"/>
              <input id="password" type="password" name="password" placeholder="password"/>
              <button type="submit">login</button>
              <p class="message">Not registered? <a href="registration">Create an account</a></p>
            </form>
          </div>
        </div>
    </body>
</html>