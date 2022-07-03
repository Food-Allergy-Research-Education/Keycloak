<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
    <title>Forgot your password?</title>
</head>
<body>
    <h1>Forgot your password?</h1>
    <h3>Enter your email address below and we'll send you a link to reset your password.</h3>

    <form action="${url.loginAction}" method="post"> <!-- todo: disable login button on submit -->
        <label for="email">Email address</label>
        <input id="email" name="username" value="${(auth.attemptedUsername!'')}" type="email" autofocus autocomplete="off" />
        <input type="submit" value="Send reset link" />
    </form>

    <div><a href="${url.loginUrl}">Log in</a></div>

</body>
</html>