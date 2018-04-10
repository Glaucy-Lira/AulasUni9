<%-- 
    Document   : ExibirSessao.jsp
    Created on : 10/04/2018, 20:12:55
    Authors     : Ivam e Jonathas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sessao</title>
        <link rel="stylesheet" type="text/css" href="css/meucss.css">
    </head>
    <body>
        <h1>
            O Valor na chave "nome" é...<%= session.getAttribute("nome")%>            
        </h1>
    </body>
</html>