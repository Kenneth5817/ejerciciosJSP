<%--
  Created by IntelliJ IDEA.
  User: kenneth
  Date: 28/11/24
  Time: 9:19
  To change this template use File | Settings | File Templates.
--%>
<%-- pagina1.jsp --%>
<%@page import="java.util.Collections"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
    </style>
    <title>Sesiones</title>
</head>
<body>
<table>
    <tr><th>Nombre</th><th>Valor</th></tr>
    <%
        for (String nombre : Collections.list(session.getAttributeNames())) {
            out.print("<tr><td>" + nombre + "</td>");
            out.print("<td>" + session.getAttribute(nombre) + "</td></tr>");
        }
    %>
</table>
</body>
</html>