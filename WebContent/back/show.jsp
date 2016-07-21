<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="cn.tf.utils.DBHelper,java.util.List,java.util.ArrayList" %>    
<!DOCTYPE>
<html>
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	table{
		width:90%;
		line-height:35px;
	}
	
	span{
		color:green;
		curosr:pointe;
	
	}


</style>
<body>


		<table  border="1px" align="center"  cellspacing="0px" cellspadding="0px">
		<tr>
			<th>商品编号</th>
			<th>商品名</th>
			<th>价格</th>
			<th>库存</th>
			<th>操作</th>
		</tr>
		
	
	<%
		DBHelper db=new DBHelper();
		String sql="select pid,pname,price,stores  from product";
		List<Map<String, Object>> list = db.find(sql, null);
		if (list != null && list.size() > 0) {
			for (Map<String, Object> map : list) {
				
	%>
		<tr align="center"	>		
				
						<td><%=map.get("PID") %></td>
						<td><%=map.get("PNAME") %></td>
						<td><%=map.get("PRICE") %></td>
						<td><%=map.get("STORES") %></td>
						<td><span id="update">[修改]</span> &nbsp;<span  id="del">[删除]</span></td>
	</tr>
	<% 				
			}
		}
			
	
	%>
	</table>
	
		
</body>
</html>