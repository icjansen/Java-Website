
<%@ include file="WEB-INF/jsps/header.jspf"%>

<%@ include file="WEB-INF/jsps/footer.jspf"%>
<%= config.getInitParameter("welkom")%>

<html>
   <head>
      <title>useBean Example</title>
   </head>
   
   <body>
      <jsp:useBean id = "date" class = "java.util.Date" /> 
      <p>The date/time is <%= date %>
   </body>
</html>