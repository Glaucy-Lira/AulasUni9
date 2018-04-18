<%-- 
    Document   : autentica
    Created on : 17/04/2018, 21:57:58
    Author     : internet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Autentica Usu</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link rel="stylesheet" href="css/style.css"
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    </head>
    <body>
        <jsp:useBean id="login" scope="page" class="io.github.ivamks.autentica.Login" />

        <jsp:setProperty name="login" property="inputEmail" value="<%=request.getParameter("inputEmail")%>" />
        <jsp:setProperty name="login" property="inputPassword" value="<%=request.getParameter("inputPassword")%>" />
        
        <%
            String inputEmail = request.getParameter("inputEmail");
            String inputPassword = request.getParameter("inputPassword");
            
            Cookie cookieEmail = new Cookie("inputEmailCookie", inputEmail);
            response.addCookie(cookieEmail);

            session.setAttribute("usu", inputEmail);
            session.setAttribute("usupass", inputPassword);

            if (!login.autentica()) {
                session.setAttribute("loginOK", false);
                response.sendRedirect("index.html");
            } else {
                session.setAttribute("loginOK", true);
            }
        %>
        
    </body>
</html>
