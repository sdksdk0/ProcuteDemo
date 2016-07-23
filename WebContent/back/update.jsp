
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <!DOCTYPE>
<html>
<head>
<meta  charset="UTF-8"  http-equiv="Content-Type" >
<title>添加商品</title>
</head>
<body>


	<%
		request.setCharacterEncoding("UTF-8");
	
		String pid=request.getParameter("pid");
		String pname=new String(request.getParameter("pname").getBytes("ISO-8859-1"));
		//String pname=request.getParameter("pname");
		String price=request.getParameter("price");
		String stores=request.getParameter("stores");

		
		//out.write(pid+pname+price+stores);
    %>
		
		<form action="doupdate.jsp"  method="post"  accept-charset="UTF-8">
			
			商品编号:<input type="text"  name="pid"  id="pid"  value=<%=pid %> readonly="readonly" /><br />
			商品名称: <input type="text"  name="pname"  id="pname"  value=<%=pname %> /><br />
			商品价格: <input type="text"  name="price"   id="price" value=<%=price %>  /><br />
			库存量:  <input type="text"  name="stores"   id="stores"  value=<%=stores%>  /><br />
		
			<input type="submit"  value="提交"    /><br />
		
		</form>
</body>
</html> 