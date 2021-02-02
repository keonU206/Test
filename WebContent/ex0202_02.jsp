<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
		table, td, th{ border: 1px solid black; border-collapse: collapse}
		</style>
	</head>
	<body>
		<!-- 메소드 작성하여 구구단 만들고 더하기도 만들기 -->
			<%!
				int sum(int a,int b){
				return a+b;
			}
			%>
		<table>
			<caption>구구단</caption>
			<tr>
				<th>단</th>
				<th>순서</th>
				<th>결과값</th>
				<th>더하기</th>
			</tr>
			<%
				for(int i=2; i<=9; i++){
					for(int j=1; j<=9; j++){
			%>
			<tr>
			<td><%= i %></td>
			<td><%= j %></td>
			<td><%= i*j %></td>
			<td><%= i+j %></td>
			</tr>
			<%
					}
				}
			
			%>
		</table>
	</body>
</html>