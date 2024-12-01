<%@ page import="java.math.BigDecimal" %>
<%@ page import="java.math.MathContext" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 01/12/2024
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Solución de Ecuación de Segundo Grado</title>
    <link rel="stylesheet" href="ej5/styles/styles.css">
</head>
<body>
<div class="contenedor">
    <h1>Resolver Ecuación de Segundo Grado</h1>
    <form action="ejercicio5.jsp" method="post">
        <label for="a">Coeficiente a:</label>
        <input type="text" id="a" name="a" required><br><br>
        <label for="b">Coeficiente b:</label>
        <input type="text" id="b" name="b" required><br><br>
        <label for="c">Coeficiente c:</label>
        <input type="text" id="c" name="c" required><br><br>
        <button type="submit">Resolver</button>
    </form>

    <%
        // Lógica para resolver la ecuación de segundo grado
        if (request.getMethod().equalsIgnoreCase("POST")) {
            try {
                // Recuperar los coeficientes desde el formulario
                BigDecimal a = new BigDecimal(request.getParameter("a"));
                BigDecimal b = new BigDecimal(request.getParameter("b"));
                BigDecimal c = new BigDecimal(request.getParameter("c"));

                // Calcular el discriminante (b^2 - 4ac)
                BigDecimal discriminante = b.multiply(b).subtract(new BigDecimal(4).multiply(a).multiply(c));

                // Verificar si el discriminante es negativo (sin soluciones reales)
                if (discriminante.compareTo(BigDecimal.ZERO) < 0) {
                    out.println("<p class='resultado'>No hay soluciones reales.</p>");
                } else {
                    // Calcular las soluciones
                    BigDecimal raizDiscriminante = discriminante.sqrt(MathContext.DECIMAL128);
                    BigDecimal x1 = b.negate().add(raizDiscriminante).divide(a.multiply(new BigDecimal(2)), MathContext.DECIMAL128);
                    BigDecimal x2 = b.negate().subtract(raizDiscriminante).divide(a.multiply(new BigDecimal(2)), MathContext.DECIMAL128);

                    out.println("<p class='resultado'>Solución 1: " + x1.toPlainString() + "</p>");
                    out.println("<p class='resultado'>Solución 2: " + x2.toPlainString() + "</p>");
                }
            } catch (NumberFormatException e) {
                out.println("<p class='resultado'>Por favor ingresa valores válidos para los coeficientes.</p>");
            }
        }
    %>
</div>
</body>
</html>

