<%-- 
    Document   : Sessao.jsp
    Created on : 03/04/2018, 19:50:30
    Authors     : Ivam e Jonathas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/meucss.css">
        <title>Sessao</title>
    </head>
    <body>        
        <br/><br/>
    <center>
        <form method="POST" action="GerarSessao.jsp">
            Informe um texto: <input type="text" name="nome"/>
            <br/>
            <input type="submit" value="Gerar Sessao"/>
        </form>
    </center>
    </body>
</html>
