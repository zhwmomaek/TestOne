<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String uname = request.getParameter("uname");
	String pwd = request.getParameter("pwd");
	String prov =  request.getParameter("prov");
	String[] hobby = request.getParameterValues("hobby");
	
	out.print("你的用户名是: " + uname + "<br>");
	out.print("你的密码是: " + pwd + "<br>");
	out.print("你的省份是: " + prov + "<br>");
	
	out.print("你的爱好是: " );
	for(String s :hobby){
		out.println( s + " ");
	}
	
%>
</body>
</html>