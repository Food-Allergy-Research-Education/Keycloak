<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Log in to FARE</title>
</head>
<body>
	<#if section = "header">${msg("loginAccountTitle")}</#if>

	<#if realm.password && social.providers??>
		<div id="social-providers">
			<ul>
				<#list social.providers as p>
					<a id="social-${p.alias}" type="button" href="${p.loginUrl}">
						<#if p.iconClasses?has_content>
							<i class="${p.iconClasses!}"></i>
						</#if>
						<span>${p.displayName!}</span>
					</a>
				</#list>
			</ul>
		</div>
	</#if>

	<form action="${url.loginAction}" method="post"> <!-- todo: disable login button on submit -->
		<label for="email">Email address</label>
		<input id="email" name="username" value="${(login.username!'')}" type="email" autofocus autocomplete="off" />
		<#if messagesPerField.existsError('username','password')>
			<span id="input-error">${kcSanitize(messagesPerField.getFirstError('username','password'))?no_esc}</span>
		</#if>
		<label for="password">${msg("password")}</label>
		<input id="password" name="password" type="password" autocomplete="off" />
		<input name="rememberMe" type="hidden" value="on">
	</form>

	<div><a href="${url.loginResetCredentialsUrl}">Forgot password?</a></div>

	<#if realm.password && realm.registrationAllowed && !registrationDisabled??>
		<div>Don't have an account? <a href="${url.registrationUrl}">Sign up</a></div>
	</#if>

</body>
</html>