<%@ page language="java" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Média</title>
</head>
<body>
    <%
        double valor1 = Double.parseDouble(request.getParameter("valor1"));
        double valor2 = Double.parseDouble(request.getParameter("valor2"));
        double media = (valor1 + valor2) / 2.0;
    %>
    <h1>Resultado da Média</h1>
    <p>A média entre <%= valor1 %> e <%= valor2 %> é: <%= media %></p>
</body>
</html>