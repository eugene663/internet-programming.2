<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10주차2 - 2jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	String name = request.getParameter("name");
	String phoneNum = request.getParameter("phoneNum");
	String sex = request.getParameter("sex");
	String country = request.getParameter("country");
	String [] hobby = request.getParameterValues("hobby");
	if(sex.equalsIgnoreCase("man")){
		sex = "남자";
	}
	else{
		sex = "여자";
	}
%>
<h2>학생 정보 입력 결과</h2>

성명 : <%= name %><p>
학번 : <%= phoneNum %><p>
성별 : <%= sex %><p>
국적 : <%= country %><p>
취미 : <%
			if(hobby==null){
				out.println("취미 없음");
			}
			else{
				//for(int i=0; i<hobby.length;i++){
				//	out.println(hobby[i]+" ");
				//}
				for(String eachhobby: hobby){
					out.println(eachhobby+" ");
				}
			}

%><p>
</body>
</html>