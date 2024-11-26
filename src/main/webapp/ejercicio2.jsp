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
    <title>Saludo en varios idiomas</title>
    <link href="styles/styles.css" rel="stylesheet" />
</head>
<body>
<div class="container">
    <h1>¡Bienvenido!</h1>
    <p>Introduce tu nombre y selecciona un idioma para el saludo:</p>

    <!-- Formulario para recoger el nombre y el idioma -->
    <form action="saludo.jsp" method="get">
        <div class="form-group">
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre" required />
        </div>
        <div class="form-group">
            <label for="idioma">Selecciona el idioma:</label>
            <select id="idioma" name="idioma" required>
                <option value="es">Español</option>
                <option value="pt">Portugués</option>
                <option value="en">Inglés</option>
            </select>
        </div>
        <button type="submit">Saludar</button>
    </form>

    <!-- Sección que muestra el saludo -->
    <div class="saludo">
        <%
            // Verificar si los parámetros 'nombre' e 'idioma' fueron enviados a través del formulario
            String nombre = request.getParameter("nombre");
            String idioma = request.getParameter("idioma");

            // Si los parámetros 'nombre' e 'idioma' no están vacíos, mostrar el saludo
            if (nombre != null && !nombre.trim().isEmpty() && idioma != null) {
                String saludo = "";

                // Determinar el saludo basado en el idioma
                switch (idioma) {
                    case "es":
                        saludo = "¡Hola, " + nombre + "!";
                        break;
                    case "pt":
                        saludo = "Olá, " + nombre + "!";
                        break;
                    case "en":
                        saludo = "Hello, " + nombre + "!";
                        break;
                }
        %>
        <!-- Mostrar el saludo -->
        <p class="mensaje-saludo"><%= saludo %></p>
        <%
            } else {
                // Si el formulario ha sido enviado pero los parámetros están vacíos, mostrar un mensaje
                if (request.getParameter("nombre") != null || request.getParameter("idioma") != null) {
                    out.println("<p class='error'>Por favor, completa todos los campos.</p>");
                }
            }
        %>
    </div>
</div>
</body>
</html>
