<%-- 
    Document   : listarVeiculos
    Created on : 24/04/2018, 20:55:14
    Author     : internet
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.uninove.carro.Carro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link  href="css/style.css" rel="stylesheet" type="text/css" />
        <title>Lista de veiculos</title>
    </head>
    <body>
        <br />
        <a href="index.html">Cadastrar um novo veiculo</a><br/>
        <br />
        <%
            ArrayList<Carro> carros = (ArrayList) session.getAttribute("listaCarros");
            if (carros != null && carros.size() > 0) {
                for (Carro c : carros) {
                    out.print("Fabricante: " + c.getFabricante()+"<br/>");
                    out.print("Modelo: " + c.getModelo()+"<br/>");
                    out.print("Autonomia: " + c.getAutonomia()+"<br/>");
                    out.print("--------------------<br/>");             
                }
            }else{
                out.print("<h3>Lista vazia</h3>");             
            }
        %> 
    </body>
</html>
