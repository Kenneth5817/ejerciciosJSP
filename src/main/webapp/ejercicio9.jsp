
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 02/12/2024
  Time: 23:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="ej9/styles/styles.css">
  <title>Tablero de Ajedrez</title>
</head>
<body>
<h1>Tablero de Ajedrez</h1>
<table>
  <thead>
  <tr>
    <th></th> <!-- Espacio vacío para la fila de etiquetas de columnas -->
    <%
      for (int i = 1; i <= 8; i++) {
        out.print("<th>" + i + "</th>"); // Etiquetas de las columnas
      }
    %>
  </tr>
  </thead>
  <tbody>
  <%
    // Generar una posición aleatoria para el Alfil y el Caballo
    int alfilRow = (int) (Math.random() * 8); // Fila aleatoria para el Alfil
    int alfilCol = (int) (Math.random() * 8); // Columna aleatoria para el Alfil
    int caballoRow = (int) (Math.random() * 8); // Fila aleatoria para el Caballo
    int caballoCol = (int) (Math.random() * 8); // Columna aleatoria para el Caballo

    // Asegurarse de que las piezas no ocupen la misma casilla
    while (alfilRow == caballoRow && alfilCol == caballoCol) {
      caballoRow = (int) (Math.random() * 8);
      caballoCol = (int) (Math.random() * 8);
    }

    // Dibujar las filas del tablero
    for (int i = 0; i < 8; i++) {
      out.print("<tr>");
      out.print("<th>" + (i + 1) + "</th>"); // Etiqueta de la fila

      for (int j = 0; j < 8; j++) {
        // Determinar si la casilla es blanca o negra
        String clase = ((i + j) % 2 == 0) ? "blanca" : "negra";

        // Determinar si es el alfil o el caballo
        String pieza = "";
        if (i == alfilRow && j == alfilCol) {
          pieza = "<span class='alfil'>A</span>"; // Representación del alfil
        } else if (i == caballoRow && j == caballoCol) {
          pieza = "<span class='caballo'>C</span>"; // Representación del caballo
        }

        out.print("<td class='" + clase + "'>" + pieza + "</td>");
      }

      out.print("</tr>");
    }
  %>
  </tbody>
</table>
</body>
</html>
