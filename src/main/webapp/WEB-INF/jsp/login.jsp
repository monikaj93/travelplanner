<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <head>
        <title>Travel Planner</title>
        <link href="<c:url value="/resources/static/css/login_page_style.css" />" rel="stylesheet">
    </head>

    <body>
        <div class="login-page">
          <div class="form">
            <form class="login-form" action="login" method="POST">
              <h2>Login</h2>
              <c:if test = "${param.error == true}">
                <p cssClass="error-message">Incorrect credentials</p>
              </c:if>
              <input id="email" type="text" name="email" placeholder="email" required/>
              <input id="password" type="password" name="password" placeholder="password" required/>
              <button type="submit">login</button>
              <p class="message">Not registered? <a href="registration">Create an account</a></p>
            </form>
          </div>
        </div>
    </body>
</html>