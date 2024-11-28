<%--
  Created by IntelliJ IDEA.
  User: kenneth
  Date: 28/11/24
  Time: 8:45
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--Directiva de importacion de clase --%>
<%@page import="org.example.ejerciciosjsp.modelo.Gato"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Gatos con clase</title>
</head>
<body>
<h1>Gatos con clase</h1>
<hr>
<%
  Gato g1 = new Gato("Pepe", "gatito.jpg");
  Gato g2 = new Gato("Garfield", "garfield.jpg");
  Gato g3 = new Gato("Tom", "tom.png");

  out.println(g1);
  out.println(g2);
  out.println(g3);
  out.println(g1.maulla());
  out.println(g2.come("sardinas"));
%>

<%= g1%>
</body>
</html>