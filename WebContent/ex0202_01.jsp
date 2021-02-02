<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
		table, th, td{border: 1px solid black; border-collapse: collapse}
		</style>
	</head>
	<body>
		<table>
			<tr>
			   <th>번호</th>
			   <th>제목</th>
			   <th>작성자</th>
			   <th>조회수</th>
			</tr>
			<%
			int views=10;
			String name="홍길동";
			for(int i=0; i<=20; i++){
				out.print("<tr><td>"+i+"</td><td>"+("제목"+i)+"</td><td>"+name+"</td><td>"+
				views+"</td></tr>");
			}
			%>
		
		</table>
	</body>
</html>