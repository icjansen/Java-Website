<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="WEB-INF/jsps/header.jspf"%>

<%@ include file="WEB-INF/jsps/footer.jspf"%>
<%= config.getInitParameter("welkom")%>

<html>
<head>
<title>useBean Example</title>
</head>

<body>
	<jsp:useBean id="date" class="java.util.Date" />
	<p>
		The date/time is
		<%= date %>

		<sql:query var="listUsers" dataSource="jdbc/java-website">
    	SELECT * FROM users;
	  </sql:query>
	<h1>List of users</h1>
	<table class = "table table-hover">
  <tbody>
    <c:forEach var="user" items="${listUsers.rows}">
        <tr>
            <td>${user.id}</td>
            <td>${user.username}</td>
            <td>${user.fullname}</td>
            <td>${user.email}</td>
            <td>${user.dateofbirth}</td>
            <td>${user.dateregistered}</td>
        </tr>
    </c:forEach>
  </tbody>
</table>
</body>
</html>