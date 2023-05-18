<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculadora</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            $("form").submit(function(event) {
                event.preventDefault();
                
                var valor1 = $("#valor1").val();
                var valor2 = $("#valor2").val();
                var operacao = $("input[name='operacao']:checked").val();
                
                $.ajax({
                    type: "POST",
                    url: "resultado.jsp",
                    data: { valor1: valor1, valor2: valor2, operacao: operacao },
                    success: function(resultado) {
                        $("#resultado").html(resultado);
                    }
                });
            });
        });
    </script>
</head>
<body>
    <h1>Calcular a soma ou a média de dois valores</h1>
    <form>
        <label for="valor1">Valor 1:</label>
        <input type="number" name="valor1" id="valor1" step="any">
        <br>
        <label for="valor2">Valor 2:</label>
        <input type="number" name="valor2" id="valor2" step="any">
        <br>
        <input type="radio" name="operacao" value="soma" checked> Soma
        <br>
        <input type="radio" name="operacao" value="media"> Média
        <br>
        <input type="submit" value="Calcular">
    </form>
    <div id="resultado"></div>
</body>
</html>