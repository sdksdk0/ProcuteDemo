<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cn.tf.utils.DBHelper,java.util.List,java.util.ArrayList" %>   
    
 <%
 	request.setCharacterEncoding("UTF-8");
	String pid=request.getParameter("pid");
	String pname=new String(request.getParameter("pname").getBytes("ISO-8859-1"));
	String price=request.getParameter("price");
	String stores=request.getParameter("stores");
	
	//out.write(pid+pname+price+stores);
	DBHelper db=new DBHelper();
 	
 	
 	String sql = "update  product set pname=?,price=?,stores=?  where  pid=? ";
 	List<Object> params = new ArrayList<Object>();
	params.add(pname);
	params.add(price);
	params.add(stores);
	params.add(pid);

	int result = db.update(sql, params);
	if (result > 0) {
		response.sendRedirect("show.jsp");
		
	}else{
		out.print("<script>alert('商品信息修改失败');location.href='show.jsp';</script>");
	}
 %>
 
 
