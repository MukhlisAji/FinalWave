<%-- 
    Document   : home
    Created on : Dec 26, 2018, 1:43:18 PM
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
        <h1>Hello !</h1>
    <c:forEach var="parameter" items="${Overtime}">
            <c:out value="${parameter.otDuration}"/>
        </c:forEach>
    </body>
</html>
