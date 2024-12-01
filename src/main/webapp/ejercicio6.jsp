<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 01/12/2024
  Time: 22:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tabla de Multiplicar</title>
    <link rel="stylesheet" href="ej6/styles/styles.css">
</head>
<body>
<div class="contenedor">
    <h1>Generar Tabla de Multiplicar</h1>
    <form action="ejercicio6.jsp" method="post">
        <label for="numero">Ingresa un número:</label>
        <input type="number" id="numero" name="numero" required>
        <button type="submit">Generar Tabla</button>
    </form>

    <%
        // Verificamos si se envió el formulario
        String numeroStr = request.getParameter("numero");
        if (numeroStr != null && !numeroStr.isEmpty()) {
            try {
                int numero = Integer.parseInt(numeroStr);
    %>

    <h2>Tabla de multiplicar del <%= numero %>:</h2>
    <table>
        <thead>
        <tr>
            <th>Multiplicación</th>
            <th>Resultado</th>
        </tr>
        </thead>
        <tbody>
        <%
            // Generamos la tabla de multiplicar
            for (int i = 1; i <= 10; i++) {
                int resultado = numero * i;
        %>
        <tr>
            <td><%= numero %> x <%= i %></td>
            <td><%= resultado %></td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>

    <%
            } catch (NumberFormatException e) {
                out.println("<p>Por favor escribe un número válido.</p>");
            }
        }
    %>
</div>
</body>
</html>

