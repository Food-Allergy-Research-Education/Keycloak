<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
    <title>Create an account</title>
</head>
<body>
<h1>Create an account</h1>

<form action="${url.loginAction}" method="post"> <!-- todo: disable login button on submit -->

    <label for="firstName">First name</label>
    <input id="firstName" name="firstName" value="${(register.formData.firstName!'')}" type="text" autofocus autocomplete="off" />

    <label for="lastName">Last name</label>
    <input id="firstName" name="firstName" value="${(register.formData.firstName!'')}" type="text" autofocus autocomplete="off" />

    <label for="email">Email address</label>
    <input id="email" name="email" value="${(login.username!'')}" type="email" autofocus autocomplete="off" />
    <#if messagesPerField.existsError('username','password')>
        <span id="input-error">${kcSanitize(messagesPerField.getFirstError('username','password'))?no_esc}</span>
    </#if>

    <label for="password">Password</label>
    <input id="password" name="password" type="password" autocomplete="off" />

    <label for="confirmPassword">Confirm password</label>
    <input id="confirmPassword" name="password-confirm" type="password" autocomplete="off" />

    <#if messagesPerField.existsError('password-confirm')>
        <span id="input-error-password-confirm" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
            ${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}
        </span>
    </#if>

    <input type="submit" value="Create account" />
</form>

<div>Already have an account? <a href="${url.loginUrl}">Log in</a></div>
</body>
</html>