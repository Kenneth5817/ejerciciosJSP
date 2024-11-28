<%--
  Created by IntelliJ IDEA.
  User: kenneth
  Date: 28/11/24
  Time: 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sesión nueva</title>
</head>
<body>
Sesión nueva: <%= session.isNew() %><br>
Recarga la página con F5
</body>
</html>



