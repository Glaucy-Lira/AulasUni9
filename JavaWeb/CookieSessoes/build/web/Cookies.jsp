<%-- 
    Document   : Cookies.jsp
    Created on : 03/04/2018, 19:50:12
    Author     : internet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/meucss.css">
        <title>Cookies</title>
    </head>
    <body>
        <br/><br/>
    <center>
        <form method="POST" action="GerarCookie.jsp">
            Informe um texto: <input type="text" name="nome"/>
            <br/>
            <input type="submit" value="Gerar Cookie"/>
        </form>
    </center>
</body>
</html>
