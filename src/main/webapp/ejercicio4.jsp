<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 03/12/2024
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%><%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>De dólares a euros</title>
    <link rel="stylesheet" href="ej4/styles/styles.css">
</head>
<body>
<div class="contenedor">
    <h1>De dólares a euros</h1>
    <form action="ejercicio4.jsp" method="post">
        <label for="dolares">Cantidad Dólares:</label>
        <input type="number" id="dolares" name="dolares" required>
        <button type="submit">Convertir</button>
    </form>

    <%
        double tasaDeCambio = 0.93; //Cambio de valor
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
