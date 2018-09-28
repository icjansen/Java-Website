<%@ include file="WEB-INF/jsps/header.jspf"%>
<jsp:useBean id="student" class="beans.StudentsBean" scope="request"/>
Student First Name:

<jsp:getProperty name="student" property="firstName" />
</body>
</html>