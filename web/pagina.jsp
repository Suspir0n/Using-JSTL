<%-- 
    Document   : pagina
    Created on : 03/09/2020, 19:46:50
    Author     : Suspir0n
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%--
            String nome = request.getParameter("nome");
            int valor = Integer.parseInt(request.getParameter("valor"));
            for(int i = 0; i<valor; i++){
                out.println("(JSP) Your name is " + nome);
                out.println("<br>");
            }
            
        --%>
        <br>
        <c:set var="nome" value="${param.nome}"/>
        <c:set var="valor" value="${param.valor}"/>
        <c:forEach var="i" begin="1" end="${valor}">
            <c:out value="(JSTL) Your name is ${nome}"/>
            <br>
        </c:forEach>
    </body>
</html>
