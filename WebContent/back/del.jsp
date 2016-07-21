<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cn.tf.utils.DBHelper,java.util.List,java.util.ArrayList" %>   
    
 <%
 	request.setCharacterEncoding("UTF-8");
	String pid=request.getParameter("pid");
 
 	DBHelper db=new DBHelper();
 	
 	
 	
 	String sql="delete  from product where pid='"+pid+"'";
 	
 	int result = db.update(sql, null);
	if (result > 0) {
		
		response.sendRedirect("show.jsp");
	
	}else{
		
		out.print("<script>alert('商品信息删除失败');location.href='show.jsp';</script>");
	}
	
 %>