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
    <title>Ejercicio 2</title>
</head>
<body>
<form method="post" action="respuesta2.jsp">

<label for="nombre">Introduzca un nombre: </label>
<input minlength="1" id="nombre" type="text" name="nombre" required/>
<!-- Div para salto de linea -->

<div>
    <label form="idioma">Selecciona un idioma</label>
    <select id="idioma" name="idioma" required>
        <option value=" ">Sin selección</option>
        <option value=" ">Español</option>
        <option value=" ">Portugués</option>
        <option value=" ">Inglés</option>
    </select>
</div>
<input type="submit" value="Enviar"/>
</form>
<script>
    let lang = document.getElementById("idioma");
    let boton = document.querySelector("input[type='submit']");
    boton.addEventListener("click", (e) => {
        if (lang.value == "def") {
            e.preventDefault();
        }
    })
</script>

</body>
</html>
