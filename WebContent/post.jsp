<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="post.jsp" method="post">
  First name: <input type="text" name="fname"><br>
  Last name: <input type="text" name="lname"><br>
  Email: <input type="text" name="email"><br>
  <input type="submit" value="Submit">
</form>




<%

Cookie cookie = null;
Cookie[] cookies = null;

Cookie voornaam = new Cookie("voornaam", request.getParameter("fname"));
Cookie achternaam = new Cookie("achternaam", request.getParameter("lname"));
Cookie email = new Cookie("email", request.getParameter("email"));

voornaam.setMaxAge(60*60*24);
achternaam.setMaxAge(60*60*24);
email.setMaxAge(60*60*24);

cookies = request.getCookies();

response.addCookie(voornaam);
response.addCookie(achternaam);
response.addCookie(email);

if( cookies != null ) {
    out.println("<h2> Found Cookies Name and Value</h2>");
    

	for(int i=0; i<cookies.length; i++){
		cookie = cookies[i];
		out.print("Name : " + cookie.getName( ) + ",  ");
        out.print("Value: " + cookie.getValue( )+" <br/>");
	}
}else {
    out.println("<h2>No cookies found</h2>");
 }

%>

</body>
</html>	