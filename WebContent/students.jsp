<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="student" class="beans.StudentsBean" scope="request"/>
Student First Name:

<jsp:getProperty name="student" property="firstName" />
</body>
</html>