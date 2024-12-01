<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<% for (int i=1; i<11;i++){%>

<div>
    <a href="ejercicio<%=i%>.jsp">Ejercicio <%=i%></a>
</div>
<% }  %>
</body>
</html>