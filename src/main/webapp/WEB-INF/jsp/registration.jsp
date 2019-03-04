<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <head>
        <title>Registration Form</title>
        <link href="<c:url value="/resources/static/css/login_page_style.css" />" rel="stylesheet">

    </head>
    <body>
        <div class="login-page">
            <div class="form">
               <form:form method="POST" action="registration" modelAttribute="appUser">
                    <h2>Registration Form</h2>
                    <form:input type="text" path="name" placeholder="name"/>
                    <form:errors cssClass="error-message" path="name" />
                    <form:input type="text" path="email" placeholder="email"/>
                    <form:errors cssClass="error-message" path="email" />
                    <form:input type="password" path="password" placeholder="password"/>
                    <form:errors cssClass="error-message" path="password" id="errors"/>
                    <button type="submit">create</button>
                    <p class="message">Already registered? <a href="login">Sign In</a></p>
                </form:form>
            </div>
        </div>
    </body>
</html>