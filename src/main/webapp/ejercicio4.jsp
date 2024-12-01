<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 01/12/2024
  Time: 21:57
  To change this template use File | Settings | File Templates.
--%><%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conversor de Dólares a Euros</title>
    <link rel="stylesheet" href="ej4/styles/styles.css">
</head>
<body>
<div class="contenedor">
    <h1>Conversor de Dólares a Euros</h1>
    <form action="ejercicio4.jsp" method="post">
        <label for="dolares">Cantidad en Dólares:</label>
        <input type="number" id="dolares" name="dolares" required>
        <button type="submit">Convertir</button>
    </form>

    <%
        // Lógica de conversión de dólares a euros
        double tasaDeCambio = 0.93; // Tasa de cambio de USD a EUR
        String dolarStr = request.getParameter("dolares");

        if (dolarStr != null && !dolarStr.isEmpty()) {
            double dolar = Double.parseDouble(dolarStr);
            double euros = dolar * tasaDeCambio;
    %>
    <h2>Resultado:</h2>
    <p><%= dolar %> USD = <%= String.format("%.2f", euros) %> EUR</p>
    <%
        }
    %>
</div>
</body>
</html>
