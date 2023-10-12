<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Excercise 5.2</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
    <p>Please enter the <strong>/test</strong> URL into the browser to run the test servlet<p>
    <h1>Join our email list</h1>
    <p>To join our email list, enter your name and
       email address below.</p>
    <p><i>${message}</i></p>
    <form action="test" method="post">
        <input type="hidden" name="action" value="add">        
        <label class="pad_top">Email:</label>
        <input type="email" name="email" value="${user.email}"><br>
        <label class="pad_top">First Name:</label>
        <input type="text" name="firstName" value="${user.firstName}"><br>
        <label class="pad_top">Last Name:</label>
        <input type="text" name="lastName" value="${user.lastName}"><br>        
        <label>&nbsp;</label>
        <input type="submit" value="Join Now" class="margin_left">
    </form>
</body>
</html>