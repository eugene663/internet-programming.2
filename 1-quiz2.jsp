<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10주차2 - 2jsp</title>
</head>
<body>
<%@ page import="java.util.Enumeration" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
		Enumeration<String> e = request.getParameterNames();
		while (e.hasMoreElements()){
			String hobby = e.nextElement();
			String [] data = request.getParameterValues(hobby);
			if(data!= null){
				for(String eachdata : data){
					out.println(eachdata+" ");
				}
				out.println("<p>");
			}
		}
%>

</body>
</html>