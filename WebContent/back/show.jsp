<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.Map"%>
<%@page  import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"   
    pageEncoding="UTF-8"%>
    
<%@ page import="cn.tf.utils.DBHelper,java.util.List,java.util.ArrayList" %>    
<!DOCTYPE>
<html>
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"  src="jquery-3.1.0.js" ></script>
</head>
<style>
	table{
		width:90%;
		line-height:35px;
	}
	
	a{
		color:green;
		cursor:pointer;
	}


</style>
<body>

	<a href="add.jsp"  >添加</a>
	<form method="post"  >
		<table  border="1px" align="center"  cellspacing="0px" cellspadding="0px"  id="mytable">
		 <thead>
		<tr>
			<th>商品编号</th>
			<th>商品名</th>
			<th>价格</th>
			<th>库存</th>
			<th>操作</th>
		</tr>
		</thead>
	
	<%
		DBHelper db=new DBHelper();
		URLEncoder encodeURI=null;
		
		String sql="select pid,pname,price,stores  from product";
		List<Map<String, Object>> list = db.find(sql, null);
		if (list != null && list.size() > 0) {
			for (Map<String, Object> map : list) {
				
				
	%>
		<tr align="center"	>		
				
						<td><%=map.get("PID") %></td>
						<td class="utd"><%=map.get("PNAME") %></td>
						<td class="utd"><%=map.get("PRICE") %></td>
						<td class="utd"><%=map.get("STORES") %></td>
					<!-- 	<td><a id="update" href="update.jsp?pid=<%=map.get("PID")%>&pname=<%=map.get("PNAME")%>&price=<%=map.get("PRICE")%>&stores=<%=map.get("STORES")%> ">[修改]</a> &nbsp;<a  href="del.jsp?pid=<%=map.get("PID")%>">[删除]</a></td>
					 -->
						<td><a id="update"  >[修改]</a> &nbsp;<a  href="del.jsp?pid=<%=map.get("PID")%>">[删除]</a></td>
	</tr>
	<% 				
			}
		}	
	%>
	</table>
	
	</form>
	
	
	<script type="text/javascript"  src="jquery-3.1.0.js">  </script>
    
    <script>
	
    var inputObj;
	$(function(){
		showInfo();	
	});
	

	//绑定鼠标移入移出事件，改变背景颜色
	function showInfo(){
		
		$("tbody tr").css("background","#fff");
		
		$("tbody tr:even").css("background","#39f");
		
		$("tbody  tr").unbind();
		$("tbody  tr").bind({
			mouseover:function(){
				//移入
				$(this).css("background",	"#6ff");
			},
			mouseout:function(){	
			//判断触发的事件是奇数行还是偶数行
			if($(this).index()%2==0){
				$(this).css("background",	"#39f");
			}else{
				$(this).css("background","#fff");	
			}
			}
		});
		
		$(".utd").unbind();
		
		$(".utd").bind({
			click:function(){
				inputObj=$("<input  type='text' />");	
				inputObj.css("border","0px");
				inputObj.css("font-size","14px");
				
				//把文本放入到input标签中
				var tdObj=$(this);
				
				inputObj.height(tdObj.height()) ;
				inputObj.width(tdObj.width());
				
				
				inputObj.val(tdObj.text());
				var text=tdObj.text();
				
				tdObj.html("");
				
				//把input标签放到td中去
				inputObj.appendTo(tdObj);
				inputObj.select();
				
				
				inputObj.unbind();
				//把input标签的点击事件移除
				inputObj.click(function(){
					return false;
				});
				
				inputObj.blur(function(){
					var inputval=$(this).val();
					tdObj.html(inputval);
					
				});
				
			}	
		});
	}
	
	$("#update").click(function(){
	
		
		alert("update.jsp?pid="+$('td:eq(0)').text()+"&pname="+$('td:eq(1)').text()+"&price="+$('td:eq(2)').text()+"&stores="+$('td:eq(3)').text());
		
	});
	
		
	</script>
    
	
		
</body>
</html>