<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>    
</head>

<body>
    <h1>Thanks for taking our survey!</h1>

    <p>Here is the information that you entered:</p>

    <label>Email:</label>
    <span>${user.email}</span><br>
    <label>First Name:</label>
    <span>${user.firstName}</span><br>
    <label>Last Name:</label>
    <span>${user.lastName}</span><br>
    <label>BirthDay:</label>
    <span>${user.birthday}</span><br>
    <label>Heard From:</label>
    <span>${user.heardFrom}</span><br>
    <label>Like that:</label>
    <span>${user.likeThat}</span><br>
    <label>Updates:</label>
    <span>${user.wantsUpdates}</span><br>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:if test="${user.wantsUpdates == 'Yes'}">
        <label>Contact Via:</label>
        <span>${user.contactVia}</span>
    </c:if>    
    <h3 class="color-format">To enter another survey, click on the Back 
    button in your browser or the Return button shown 
    below.</p>

    <form action="" method="get">
            <input type="hidden" name="action" value="back">
            <input type="submit" value="Return">
    </form>
</body>
</html>