<%-- 
    Document   : confirma_curso
    Created on : 11/02/2020, 15:54:45
    Author     : joaom
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Curso"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Confirmado!</h1>
        <%
            List<Curso> cursos = (ArrayList<Curso>)request.getAttribute("cursos");
            
            for (Curso curso : cursos) {
                out.println("<li>" + curso.getNome() + "</li>");
                
            }
            
        %>
        
        <a href="index.jsp">Voltar para Home</a>
     
    </body>
</html>
