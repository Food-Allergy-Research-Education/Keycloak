<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
	<title>Log in to FARE</title>
</head>
<body>
	<h1>Log in to FARE</h1>

	<#if social.providers??>
		<div id="social-providers">
			<#list social.providers as s>
				<#if s.alias == "google">
					<a href="${s.loginUrl}">
						<img alt="Continue with Google" src="data:image/png;base64,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">
						Continue with Google
					</a><br>
				</#if>
				<#if s.alias == "facebook">
					<a href="${s.loginUrl}">
						<img alt="Continue with Facebook" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAABmJLR0QA/wD/AP+gvaeTAAAEg0lEQVRoge2YS2icVRTH/+d+M5N3U9sami8T0GBpjMGKRkZdFVpcVrNoUBpFTTIW4wvdFcUoui0US7F5IIrFVd00biy4EGyFkpaWNMQoiElmGm0eNZkmmZnv3uMiqTSZ+70zgjK/5bn33PM/332d7wIlSpT4T0NbNVB0aHqflDhAJJ5g8F4CGgGqXmvlDDMmiWiCSV00CN/nu+JXtyJuuASGbtYIlU0KUBcDD/oKzBhT4CGVj/Wjty4TVEKwBPo4IuKpN4jpPQA7ggZfZ45BH6tU/Un0keXX2X8Cp9PNQvDXBDzi29cBBq4ogefR1fCzHz9fCRj9qUMgnAFQ7Uudd5ZAOCK7G855dRBeOxqD6RdAOIviiQeAGjC+MQbSnV4dPM3A+pc/CyASWJo/LDC3y2R82K2jewKfTe0xDDECoCaMoooIwaw0UBsjLFuMnGT8uaqQybOdS0YqehyvmuNO4zon0McR0ZC+FHTDEoDDTRV4raUKiboooqIwXPv5eZz7fVXrz8BllTITTqeT45JYPyoDiY8Kwhf7t6OjqcKxn9MXJOBRYd7oVcAJW4223l/OVBHTMVelNnzUVuMq3gtE/D6GbtouX9sERNY6CmBXkKD1lQbeaq0K4qpjp5DZHrtG2yW0Xh4E4nBTOWKa9X4rp3Bq7DamMvIf29W5vOt4AtSlgOO6Nm0C0aHpfUr5q23uJnFvTGt/5rt5/DiT8z0eE1pigzOtue7do5vbtEtIKhz0HeUuGquNAtvofD6Q+DtYSh3Q2bUJEEQicCQAtbHCYa/N+67TNkDET+rs2gQYaA4TzNCcjfNZFWZIMLBXZ7eZATZDRdMLCAUBcZ3d7hgNVTYUCa2m0MXZB4/V4PWWjWf+Ns0eSDZXovOBwott//Asri8E3x92CSwB2OllgAqDcE+Ze1VeZhDKNm0OBvDbktQ76DUVYLOJKe111DBMZiSWLW+7g4Fpnd1mE8OxhN0qJv7yvnQI0P5q6meA1U8BNfli/Jb3BBh0QWfXVrOxgamHJYSnd5uKCKF809q+cGgX9tRu3F4D48s4dmlxg23FYqxKb0vIYNGaS9Zf32zXbuJcT+M1MTA9SqBWt4FXLMbKpnWs07QqGQsBLzNijOnEA07/A4zPA0UrAkrwoF2bbQKqPHIawGxRFPljTmVjA3aN9jPw4u7bDPqkKJJ8wIwPnZ4eHW8glao/ycCVrZflmRG13Tzl1MH5Cu0jS5HqAGPRsV9xyEhFneggx6vavQbobvwVAp0AwhX0/rBA/JzbmxDg8Wlx7a2SXsa/k4QFppdkd/xbL509v43KHvMrMLfDpqjaEhiLIH5WJs0zXl08JwAAMhkflsxtDFz2r86VEalUm9cvfwdfCQAAkvEJlTITzPQ2gDnf/oXMMuNNWWsmcLTxF7/O/hMA1k6npHlC5qL3MfO7DGiveScYPMrE78hc9H6VbPjU7bSxI9wfWW9dZv3B6Xis/8ZDFvggET81mVFPV0flth1lQgDAQlapTF79AeAHZrqoInQer9SPhYpdokSJ/wd/A7yQheTiO82sAAAAAElFTkSuQmCC">
						Continue with Facebook
					</a><br>
				</#if>
				<#if s.alias == "twitter">
					<a href="${s.loginUrl}">
						<img alt="Continue with Twitter" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAABmJLR0QA/wD/AP+gvaeTAAADz0lEQVRoge2XTWgdVRiGn+/MpGnv3LRoqC4UhCz8I8RFRClSXdgqWkuV4CRpi1gqglZTuhFXkiDdCVIKBfEHo1Bzr0JRtGAqWhTBQhsaFX9ADbZisbXaJnPb5t6Z+VyotU0yc89MYlGYZzcz73fO+84ZzjcHCgoKCgoK/sfIJZ2tOnmdq+ZxYLXCNUCowvdG9b3QNbvo8Y7NLFm0O+iqry9/njRk0wDOSO2e6JvS+wxKnNv4oBr3hmBIkacBN8FKgLIt6vNe4u0Tbc65xXch8gSxfBn1eU/mC1A9Xna09JPAcNhb3prXvzMy9QIij1rKDwFdQAtwLJKoE3/Zb0likzqxercDyxQGnJHaLqrqWLv+e4xqsD6DeYBu/jR/0gj30lB13wjuTBKnBlCJO85fiD7maG0P1dOXW1tRFWJ91lr/DyHI/ljZ4bjud8bheJIwNQA66/laR51xtxqstnHRUjlzMyIdzZWzcEF7gFsQ2VT3y18kCVMDCGZijttXqzLqVKb28Nbk9Wn1Mdpp53dOfhXiVZHvvZMmSg0QLT6zHySY+6nc70TmK6cSvOtUamvZq60zFSralsXxDAbC3qWfNhMlbGl/sW75lFSCVxQGEhQCrAFd40zVJqnU9in6mREdC018VCJJ3D2aojptI2veyF5Tz22tjSlcm9tMDkS5O+wrjzbTpW+jI8EGZ1GtR2LpUxhfOHvNMYZZXXkuUj8hFW0XZEcsisDZhbFmhdbPeT/YCNNXQOTjCy6XzMtSBgS+5iGp2WhTAzT88mGEAwtjyx5FP7HVpjcywCBbgMa8HGXGpO79FymbCRq+dwjVDVy6ECcjKX1gK24aACDqa3vTqNyGcDC/LztEeRFf6rZ6qwAAsXAVyCDKq4BVk8nB2VBlZ5aC9E58MatQ3fJvnuEEdtLv/ZylxnoFIomHgF8yu7LnSNiY3p61yDoAftsJE5t1wO9ZJ7EgFuERNrZPZi20DwA0+ksHIie6Ffgw60RpqMhQ6Jf35anN/UW3VGvdkXKfiK5ESTzyWTAc+d4mRDRPcaYVuJDGg6UxgaMo3XnHAIYj8TbnNQ95VmCvtjpBrV9hmyhdOedVRZ6J/dL2+ZiHlAAtI8FNGHFVY0+FK1SlQ+AOYCUwn5PWhKCbw962j+YxxnkS+0CjtfGjW295SpGtKKUF2P5PK/JcPF163vZP04bmvnYHVxqHjcDDApkP6QrjqL4ct4av88Blp/KYTCPbi61O3ehgVhDrCgydxLockXZgKXAKZRLDBKrfouZgZMwo/pIjC226oKCgoKCg4L/CH/2pQ2x506tNAAAAAElFTkSuQmCC">
						Continue with Twitter
					</a><br>
				</#if>
			</#list>
		</div>
	</#if>

	<form action="${url.loginAction}" method="post"> <!-- todo: disable login button on submit -->
		<label for="email">Email address</label>
		<input id="email" name="username" value="${(login.username!'')}" type="email" autofocus autocomplete="off" />
		<#if messagesPerField.existsError('username','password')>
			<span id="input-error">${kcSanitize(messagesPerField.getFirstError('username','password'))?no_esc}</span>
		</#if>
		<label for="password">Password</label>
		<input id="password" name="password" type="password" autocomplete="off" />
		<input name="rememberMe" type="hidden" value="on">
		<input type="submit" value="Log in" />
	</form>

	<div><a href="${url.loginResetCredentialsUrl}">Forgot password?</a></div>
	<div>Don't have an account? <a href="${url.registrationUrl}">Sign up</a></div>
</body>
</html>