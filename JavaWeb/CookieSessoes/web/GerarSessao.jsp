<%-- 
    Document   : GerarSessao.jsp
    Created on : 10/04/2018, 19:54:49
    Authors     : Ivam e Jonathas
--%>
<%@page import="java.net.URLEncoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/meucss.css">
        <title>Sessao</title>
    </head>
    <body>
        <%
            session.setAttribute("nome", request.getParameter("nome"));
            
        %>        
        <h3>Chave inserida na sessao! :)</h3>
        <br/>
        
        <a href="ExibirSessao.jsp">Clique para exibir a chave da seesao</a>
    </body>
</html>
