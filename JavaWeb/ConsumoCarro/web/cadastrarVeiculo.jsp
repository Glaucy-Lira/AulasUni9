<%-- 
    Document   : cadastrarVeiculo
    Created on : 24/04/2018, 19:11:40
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
        <title>Cadastrar veículo</title>
    </head>
    <body>
        <jsp:useBean id="carro" scope="page" class="com.uninove.carro.Carro"/>
        <jsp:setProperty name="carro" property="fabricante" value="<%= request.getParameter("fabricante")%>" />
        <jsp:setProperty name="carro" property="modelo" value="<%= request.getParameter("modelo")%>" />
        <jsp:setProperty name="carro" property="capacidadeTanque" value="<%= java.lang.Float.valueOf(request.getParameter("capacidadeTanque"))%>" />
        <jsp:setProperty name="carro" property="consumo" value="<%= java.lang.Float.valueOf(request.getParameter("consumo"))%>" />
               <br />
        <%  
            carro.calcularAutonomia();
            ArrayList<Carro> carros = (ArrayList) session.getAttribute("listaCarros");
            if (carros == null) {
                carros = new ArrayList();
            }
            carros.add(carro);
            session.setAttribute("listaCarros", carros);
            
        %> 
        
        <h3> Veículo cadastrado</h3> 
        <br/>
        <a href="index.html">Cadastrar um novo veiculo</a><br/>
        <a href="listarVeiculos.jsp">Listar todos os veiculos</a>
    </body>
</html>
