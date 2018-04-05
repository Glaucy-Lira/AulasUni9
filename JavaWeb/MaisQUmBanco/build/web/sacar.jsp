<%-- 
    Document   : sacar
    Created on : 27/03/2018, 19:06:13
    Author     : internet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personalite</title>
    </head>
    <body>
        <jsp:useBean id="caixa" scope="page" class="io.github.ivamks.banco.CaixaEletronico" />
        <jsp:setProperty name="caixa" property="valorSacado" value="<%= request.getParameter("valorSacado")%>" />
        <%=caixa.sacar()%>
    </body>
</html>
