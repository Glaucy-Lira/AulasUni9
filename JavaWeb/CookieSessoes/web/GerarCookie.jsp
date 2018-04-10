<%-- 
    Document   : GerarCookie.jsp
    Created on : 03/04/2018, 19:58:06
    Authors     : Ivam e Jonathas
--%>

<%@page import="java.net.URLEncoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String nome = request.getParameter("nome");
    if (nome == null) {
        nome = "";
    }
    String codificada = URLEncoder.encode(nome, "UTF-8");
    Cookie cookie = new Cookie("nomeDoUsuario", codificada);
    cookie.setVersion(0);
    cookie.setMaxAge(120);
    response.addCookie(cookie);
%>               
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cookie</title>
        <link rel="stylesheet" type="text/css" href="css/meucss.css">
    </head>
    <body>
        <br/><br/>
    <center>
        <a href="ExibirCookie.jsp">Vela aqui o valor do Cookie Gerado</a>
    </center>
</body>
</html>
