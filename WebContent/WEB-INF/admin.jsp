<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="user" items="${listUsers}">
<tr>
<td><c:out value="${user.id}" /></td>
<td><c:out value="${user.userName}" /></td>
</tr>
</c:forEach>

dssfszd
</body>
</html>