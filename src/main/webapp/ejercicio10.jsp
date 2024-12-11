<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/12/2024
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%><%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="ej10/styles/styles.css">
    <title>Máquina de Helados</title>
</head>
<body>
<div class="container">
    <h1>Máquina de Helados</h1>
    <form action="ejercicio10.jsp" method="post">

        <!--Pedimos los porcentajes de sabores de helados-->
        <label for="chocolate">Porcentaje de chocolate:</label>
        <input type="number" id="chocolate" name="chocolate" min="0" max="100" value="
            <%= request.getParameter("chocolate") != null ? request.getParameter("chocolate") : 0 %>">
        <br>
        <label for="fresa">Porcentaje de fresa:</label>
        <input type="number" id="fresa" name="fresa" min="0" max="100" value="
            <%= request.getParameter("fresa") != null ? request.getParameter("fresa") : 0 %>">
        <br>
        <label for="vainilla">Porcentaje de vainilla:</label>
        <input type="number" id="vainilla" name="vainilla" min="0" max="100" value="
            <%= request.getParameter("vainilla") != null ? request.getParameter("vainilla") : 0 %>">
        <br>
        <!--Boton para generar el heladito-->
        <input type="submit" value="Generar Helado">
    </form>

    <%
        // Recuperar los porcentajes ingresados por el usuario
        int chocolate = 0;
        int fresa = 0;
        int vainilla = 0;
        boolean error = false;

        if (request.getMethod().equalsIgnoreCase("POST")) {
            try {
                chocolate = Integer.parseInt(request.getParameter("chocolate"));
                fresa = Integer.parseInt(request.getParameter("fresa"));
                vainilla = Integer.parseInt(request.getParameter("vainilla"));

                // Validamos que la suma de los porcentajes correcta
                if (chocolate + fresa + vainilla > 100) {
                    error = true;
                }
            } catch (NumberFormatException e) {
                error = true;
            }
        }

        // Si no hay error, mostramos la tarrina como resultado
        if (!error && (chocolate + fresa + vainilla <= 100)) {
    %>
    <!--Represenacion de tarrina-->
    <div class="tarrina">
        <div class="sabor chocolate" style="height: <%= chocolate %>%;"></div>
        <div class="sabor fresa" style="height: <%= fresa %>%; bottom: <%= chocolate %>%;"></div>
        <div class="sabor vainilla" style="height: <%= vainilla %>%; bottom: <%= chocolate + fresa %>%;"></div>
    </div>
    <%
    } else if (request.getMethod().equalsIgnoreCase("POST")) {
    %>
    <!--En caso de algun error, pediremos que se vuelvan a introducir los porcentajes-->
    <p class="error">La suma de los porcentajes debe ser menor o igual a 100. Por favor, introduzca de nuevo los porcentajes.</p>
    <%
        }
    %>
</div>
</body>
</html>
