<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	
	//设置编码集
	request.setCharacterEncoding("UTF-8");
	
	//获取用户提交过来的注册信息
	String uname=request.getParameter("uname");
	String pwd=request.getParameter("pwd");
	

	 
	 
	 //当注册成功时，就跳转到登录界面
	if("admin".equals(uname) && "admin".equals(pwd)){
		
		response.sendRedirect("add.jsp");

	}else{
		out.print("<script>alert('用户名或密码错误');location.href='../index.jsp';</script>");
	}
	
	
%>