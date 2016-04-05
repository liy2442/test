<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%!
Vector user = new Vector();

%>
<html>
  <head>    
    <title>My JSP 'index.jsp' starting page</title>
  </head>
  <body>
	<h2>注册</h2>
	<form action="" method=post name=form >
		用户：<input type="text" name="username"><br>
		密码：<input type="text" name="password"><br>
		<input type="radio" name="type" value="user">普通用户
		<input type="radio" name="type" value="marchant">商家
		<br><input type="submit" name=submit value="注册">
	</form>
	
	
	<a href="index.jsp" >come</a>
	<%
	String username = request.getParameter("username");
	if(username == null)
	
	String password = request.getParameter("password");
	String types = request.getParameter("type");
	
	
	%>
	
	<%
	try{
		Vector v = new Vector();
		if((Vector)application.getAttribute("user") == null){
			 v = new Vector();
		}else{
			 v = (Vector)application.getAttribute("user");
		}
		Map<String,Object> users = new HashMap<String,Object>();
		//if(v!=null){}
		
		boolean type=true;
		if(types.equals("user"))type=true;
		if(types.equals("marchant"))type=false;
		
		users.put("username", username);
		users.put("password",password);
		users.put("type", type);
		v.add(users);
		application.setAttribute("user", v);
		//out.println(v.size());
		
	}catch(Exception ee){System.out.println(ee);}
		
	%>
	
	
	
	
	
	
  </body>
</html>
