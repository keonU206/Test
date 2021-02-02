<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
		table, th, td{ border: 1px solid black; border-collapse:collapse  }
		th{ background: gray; color: white}
		</style>
	</head>
	<body>
		<table>
			<tr>
				<th>서버 이름</th>
				<td><%= request.getServerName() %></td>
			</tr>
			<tr>
				<th>포트 번호</th>
				<td><%= request.getServerPort() %></td>
			</tr>
			<tr>
				<th>요청 방식</th>
				<td><%= request.getMethod() %></td>
			</tr>		
			<tr>
				<th>프로토콜</th>
				<td><%= request.getProtocol() %></td>
			</tr>
			<tr>
				<th>url</th>
				<td><%= request.getRequestURL() %></td>
			</tr>
			<tr>
				<th>uri</th>
				<td><%= request.getRequestURI() %></td>
			</tr>
			<tr>
				<th>context path</th>
				<td><%= request.getContextPath() %></td>
			</tr>
			
			<tr>
				<th>파일 이름</th>
				<td><%
				String uri = request.getRequestURI();
				String context=request.getContextPath();
				String fileName=uri.substring(context.length());
				out.println(fileName);
			%>
			</td>
			</tr>
			<tr>
				<th>ip 번호</th>
				<td><%= request.getRemoteAddr() %></td>
			</tr>
		</table>
		<br>
		<table>
			<tr>
				<th>아이디</th>
				<td><%= request.getParameter("id") %></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><%= request.getParameter("pw") %></td>
			</tr>
			<tr>
				<th>나이</th>
				<td><%= request.getParameter("age") %></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><%= request.getParameter("name") %></td>
			</tr>
			<tr>
				<th>아이디</th>
				<td><% String[] hobby=request.getParameterValues("hobby");
						out.println(Arrays.toString(hobby));%></td>
			</tr>
		</table>
	</body>
</html>