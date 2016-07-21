<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cn.tf.utils.DBHelper,java.util.List,java.util.ArrayList" %>
    <%
    	request.setCharacterEncoding("UTF-8");
    	String pname=request.getParameter("pname");
    	String price=request.getParameter("price");
    	String stores=request.getParameter("stores");
    	
    	
    	 DBHelper  db=new DBHelper();
    	
    	String sql="insert into product values(seq_pid.nextval,?,?,?)";
    	List<Object> params = new ArrayList<Object>();
    	params.add(pname);
		params.add(price);
		params.add(stores);

		int rs = db.update(sql, params); 
		
		
	/* 	Connection con=null;
		PreparedStatement pstmt=null;
		int rs=0;
		
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:orcl", "yc2",
				"a");
		String sql="insert into product values(seq_pid.nextval,?,?,?)";
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1,pname);
		pstmt.setString(2,price);
		pstmt.setString(3,stores);
		
		rs=pstmt.executeUpdate(); */
		
		
		
		if(rs>0){
			response.sendRedirect("show.jsp");
		}else{
			out.print("<script>alert('商品信息添加失败');location.href='add.jsp';</script>");
		}
    	
    	
    
    %>