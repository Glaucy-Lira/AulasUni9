<%-- 
    Document   : ExibirCookie.jsp
    Created on : 03/04/2018, 20:19:05
    Authors     : Ivam e Jonathas
--%>

<%@page import="java.net.URLEncoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String nomedACookie = "nomeDoUsuario";
    Cookie cookies[] = request.getCookies();
    Cookie cookieLocal = null;

    if (cookies != null) {
        for (int i = 0; i < cookies.length; i++) {
            if (cookies[i].getName().equals(nomedACookie)) {
                cookieLocal = cookies[i];
                break;
            }
        }
    }
%>    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/meucss.css">
        <title>Cookies</title>
    </head>
    <body>     
        <br/><br/>
    <center>
        <%
            if (cookieLocal == null) {
                out.print("Cookie vazio!");
            } else {
                String valor = URLEncoder.encode(cookieLocal.getValue(), "UTF-8");
                valor = valor.replaceAll("%2B", " ");
                out.print("O valor do seu Cockie é " + valor);
            }
        %>  
    </center>
</body>
</html>
