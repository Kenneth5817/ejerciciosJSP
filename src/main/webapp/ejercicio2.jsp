<%--
  Created by IntelliJ IDEA.
  User: kenneth
  Date: 25/11/24
  Time: 12:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ej2</title>
    <link rel="stylesheet" href="ej2/styles/styles.css"/>
</head>
<body>
<h2>Por favor,escribe tu nombre y elige un idioma:</h2>

<!-- Formulario para poner el nombre y seleccionar el idioma -->
<form method="post">
    <label for="nombre">Nombre:</label>
    <input type="text" id="nombre" name="nombre" required>
    <br><br>

    <label for="idioma">Selecciona un idioma:</label>
    <select id="idioma" name="idioma" required>
        <option value="es">Español</option>
        <option value="pt">Portugués</option>
        <option value="en">Inglés</option>
    </select>
    <br><br>

    <input type="submit" value="Enviar">
</form>

<%
    String nombre = request.getParameter("nombre");
    String idioma = request.getParameter("idioma");

    if (nombre != null && idioma != null) {
        String saludo = "";
        switch (idioma) {
            case "es":
                saludo = "¡Hola " + nombre + "!";
                break;
            case "pt":
                saludo = "Olá " + nombre + "!";
                break;
            case "en":
                saludo = "Hello " + nombre + "!";
                break;
        }
%>
<h3><%= saludo %></h3>
<%
    }
%>

</body>
</html>
