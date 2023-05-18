<%@ page language="java" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Resultado</title>
</head>
<body>
    <%
	    double valor1 = Double.parseDouble(request.getParameter("valor1"));
	    double valor2 = Double.parseDouble(request.getParameter("valor2"));
        String operacao = request.getParameter("operacao");
        double resultado = 0.0;
        
        if (operacao.equals("soma")) {
            resultado = valor1 + valor2;
    %>
            <h1>Resultado da Soma</h1>
            <p>A soma de <%= valor1 %> e <%= valor2 %> é: <%= resultado %></p>
    <%
        } else if (operacao.equals("media")) {
            double media = (valor1 + valor2) / 2.0;
    %>
            <h1>Resultado da Média</h1>
            <p>A média entre <%= valor1 %> e <%= valor2 %> é: <%= media %></p>
    <%
        }
    %>
</body>
</html>