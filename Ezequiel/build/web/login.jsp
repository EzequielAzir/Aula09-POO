<%-- 
    Document   : index
    Created on : 18 de abr de 2022, 13:34:10
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file='WEB-INF/jspf/header.jspf' %>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action=" login.jsp" method="post">
            Usuario: <br/><input type="text" name="usuario" /><br/>
            Senha: <br/><input type="password" name="senha" /><br/>
            <input type="submit" value="Logar"/>
        </form>
        <%  
        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");
        
        if(usuario!=null && senha!=null && !usuario.isEmpty() && !senha.isEmpty()){
        
        session.setAttribute("usuario", usuario);
        response.sendRedirect("dadosPessoais.jsp");
        }
        %>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    </body>
</html>
