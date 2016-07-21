<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta  charset="UTF-8">
<title>用户登录</title>
</head>
<body>
	
		<form  action="back/dologin.jsp" method="post">
			
			<label  for="uname">用户名:</label>
			<input  type="text"  name="uname"  id="uname"  placeholder="请输入您的用户名"  />
			
			<label  for="pwd">密码:</label>
			<input  type="password"  name="pwd"  id="pwd"  placeholder="请输入您的密码"  />
		

			<input type="submit"  value="登录"  />
		</form>
		



</body>
</html>