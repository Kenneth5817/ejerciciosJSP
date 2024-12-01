<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 01/12/2024
  Time: 22:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generar Calendario</title>
    <link rel="stylesheet" href="ej7/styles/styles.css">
</head>
<body>
<div class="contenedor">
    <h1>Generar Calendario de un Mes</h1>
    <form action="ejercicio7.jsp" method="post">
        <label for="mes">Nombre del Mes:</label>
        <input type="text" id="mes" name="mes" required><br><br>
        <label for="anio">Año:</label>
        <input type="number" id="anio" name="anio" required><br><br>
        <button type="submit">Generar Calendario</button>
    </form>

    <%
        if (request.getMethod().equalsIgnoreCase("POST")) {
            String mesStr = request.getParameter("mes");
            String anioStr = request.getParameter("anio");

            if (mesStr != null && !mesStr.isEmpty() && anioStr != null && !anioStr.isEmpty()) {
                try {
                    int mes = new SimpleDateFormat("MMMM").parse(mesStr).getMonth();
                    int anio = Integer.parseInt(anioStr);

                    // Calendar setup
                    Calendar cal = Calendar.getInstance();
                    cal.set(anio, mes, 1);

                    int diasDelMes = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
                    int primerDia = cal.get(Calendar.DAY_OF_WEEK);

                    out.println("<h2>Calendario de " + mesStr + " " + anio + "</h2>");
                    out.println("<table>");
                    out.println("<thead>");
                    out.println("<tr>");
                    out.println("<th>Dom</th>");
                    out.println("<th>Lun</th>");
                    out.println("<th>Mar</th>");
                    out.println("<th>Mié</th>");
                    out.println("<th>Jue</th>");
                    out.println("<th>Vie</th>");
                    out.println("<th>Sáb</th>");
                    out.println("</tr>");
                    out.println("</thead>");
                    out.println("<tbody>");

                    // Imprimir espacios hasta el primer día del mes
                    out.print("<tr>");
                    for (int i = 1; i < primerDia; i++) {
                        out.print("<td></td>");
                    }

                    // Imprimir los días del mes
                    for (int i = 1; i <= diasDelMes; i++) {
                        out.print("<td>" + i + "</td>");
                        if ((primerDia + i - 1) % 7 == 0) {
                            out.println("</tr><tr>");
                        }
                    }

                    out.println("</tr>");
                    out.println("</tbody>");
                    out.println("</table>");
                } catch (Exception e) {
                    out.println("<p>Hubo un error al procesar los datos, por favor verifica el nombre del mes y el año.</p>");
                }
            }
        }
    %>
</div>
</body>
</html>

