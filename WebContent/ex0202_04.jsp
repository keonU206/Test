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
		out.println("서버:"+request.getServerName()+"<br>");
		out.println("포트번호:"+request.getServerPort()+"<br>");
		
		//project
		out.println("요청방식:"+request.getMethod()+"<br>");
		out.println("프로토콜:"+request.getProtocol()+"<br>");
		out.println("url:"+request.getRequestURL()+"<br>");
		out.println("uri:"+request.getRequestURI()+"<br>");
		String uri = request.getRequestURI();
		out.println("contextPath:"+request.getContextPath()+"<br>");
		String context = request.getContextPath();
		String fileName = uri.substring(context.length());
		out.println("context path길이:"+context.length()+"<br>");
		out.println("file name:"+fileName+"<br>");
		out.println("ip:"+request.getRemoteAddr());
		%>
	</body>
</html>