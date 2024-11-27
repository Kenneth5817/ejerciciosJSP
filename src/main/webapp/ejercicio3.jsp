<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 26/11/2024
  Time: 21:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Media de Notas</title>
    <link href="ej3/styles/styles.css" rel="stylesheet" />
</head>
<body>
<div class="container">
    <h1>Calculadora de Media de Notas</h1>
    <p>Introduce las tres notas para calcular la media.</p>

    <!-- Formulario para recoger las notas -->
    <form action="mediaNotas.jsp" method="post">
        <div class="form-group">
            <label for="nota1">Nota 1:</label>
            <input type="number" id="nota1" name="nota1" required min="0" max="10" step="0.1" />
        </div>
        <div class="form-group">
            <label for="nota2">Nota 2:</label>
            <input type="number" id="nota2" name="nota2" required min="0" max="10" step="0.1" />
        </div>
        <div class="form-group">
            <label for="nota3">Nota 3:</label>
            <input type="number" id="nota3" name="nota3" required min="0" max="10" step="0.1" />
        </div>
        <button type="submit">Calcular Media</button>
    </form>

    <!-- Sección para mostrar la media calculada -->
    <div class="resultado">
        <%
            // Recoger los parámetros enviados
            String nota1Str = request.getParameter("nota1");
            String nota2Str = request.getParameter("nota2");
            String nota3Str = request.getParameter("nota3");

            if (nota1Str != null && nota2Str != null && nota3Str != null) {
                try {
                    // Convertir las notas a números decimales
                    double nota1 = Double.parseDouble(nota1Str);
                    double nota2 = Double.parseDouble(nota2Str);
                    double nota3 = Double.parseDouble(nota3Str);

                    // Calcular la media
                    double media = (nota1 + nota2 + nota3) / 3;

        %>
        <!-- Mostrar el resultado de la media -->
        <p class="mensaje-media">La media es: <%= String.format("%.2f", media) %></p>
        <%
                } catch (NumberFormatException e) {
                    out.println("<p>Por favor, introduce valores numéricos válidos.</p>");
                }
            }
        %>
    </div>
</div>
</body>
</html>

