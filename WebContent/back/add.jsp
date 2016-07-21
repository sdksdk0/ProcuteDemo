<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta  charset="UTF-8">
<title>添加商品</title>
</head>
<body>

		
		<form action="doadd.jsp"  method="post">
		
			商品名称: <input type="text"  name="pname"  id="pname "/><br />
			商品价格: <input type="text"  name="price"   id="price" /><br />
			库存量:  <input type="text"  name="stores"   id="stores" /><br />
		
			<input type="submit"  value="提交"    /><br />
		
		</form>
		


</body>
</html>