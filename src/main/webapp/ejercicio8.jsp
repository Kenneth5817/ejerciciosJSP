<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 08/12/2024
  Time: 22:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Configurador de Interior de Vehículo</title>
    <link rel="stylesheet" href="ej8/styles/styles.css">
</head>
<body>
<div class="contenedor">
    <h1>Configurador de Interior de Vehículo</h1>

    <form action="ejercicio8.jsp" method="post">
        <label for="tapiceria">Elige el color de la tapicería:</label>
        <select name="tapiceria" id="tapiceria" required>
            <option value="blanco">Blanco</option>
            <option value="negro">Negro</option>
            <option value="berenjena">Berenjena</option>
        </select><br><br>

        <!-- Preguntamos por el material-->
        <label for="molduras">Elige el material de las molduras:</label>
        <select name="molduras" id="molduras" required>
            <option value="madera">Madera</option>
            <option value="carbono">Carbono</option>
        </select><br><br>

        <button type="submit">Ver Configuración</button>
    </form>

    <%
        //Mostramos la respuesta
        if (request.getMethod().equalsIgnoreCase("POST")) {
            String tapiceria = request.getParameter("tapiceria");
            String molduras = request.getParameter("molduras");

            // Mostramos el interior configurado
            out.println("<h2>Vista Previa del Interior Configurado:</h2>");
            out.println("<div class='vehiculo'>");

            //Enseñamos tanto tapiceria como molduras como quedaria
            out.print("<div class='tapiceria " + tapiceria + "'>Tapicería: " + tapiceria + "</div>");
            out.print("<div class='molduras " + molduras + "'>Molduras: " + molduras + "</div>");

            out.println("</div>");
        }
    %>
</div>
</body>
</html>
