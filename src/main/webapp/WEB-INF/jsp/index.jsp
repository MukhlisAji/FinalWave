<%-- 
    Document   : index
    Created on : Dec 26, 2018, 10:27:53 AM
    Author     : Mukhlish
--%>

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
        
        <c:forEach var="parameter" items="${parameterList}">
            <c:out value="${parameter.parameterName}"/>
        </c:forEach>
        
    </body>
</html>
