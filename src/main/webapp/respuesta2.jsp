<%@ page import="java.util.stream.Stream" %>
<%@ page import="java.util.Set" %><%--
  Created by IntelliJ IDEA.
  User: kenneth
  Date: 25/11/24
  Time: 12:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>respuesta2</title>
</head>
<body>
<%
  String nombre= request.getParameter("nombre");
  String idioma= request.getParameter("idioma");


  Set<String> idiomas= Set.of("es","pt","en");

  //VALIDACIÓN DE FORMULARIOS
  if(idioma==null || idioma.isEmpty()){
    System.out.println("NO se ha encontrado ningún idioma");
  }

  if(nombre.length()<=1){
    System.out.println("El nombre introducido debe ser mayor que 0");
  }
  if (nombre.length()>2){
    //deberia de escribir hola en el idioma elegido


  String saludo= switch(idioma){
    case "pt" ->"Ola";
    case "en" ->"Hi, my friend"+nombre+"!";
    case "es" -> "Hola, "+nombre+"!";
    default-> "Idioma no soportado";
  };
%>

  <span><%= saludo%></span>

<%} else {%>
<span>Se ha producido un error. Consulta con el administrador del sitio</span>
<%}%>
</body>
</html>
